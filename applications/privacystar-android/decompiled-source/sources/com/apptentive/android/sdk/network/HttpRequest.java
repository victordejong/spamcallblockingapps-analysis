package com.apptentive.android.sdk.network;

import android.util.Base64;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.privacystar.core.service.googleplay.IABConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest.class */
public class HttpRequest {
    private static final HttpRequestRetryPolicy DEFAULT_RETRY_POLICY = new HttpRequestRetryPolicyDefault();
    private static int nextRequestId;
    private DispatchQueue callbackQueue;
    private boolean cancelled;
    private HttpURLConnection connection;
    private String errorMessage;

    /* renamed from: id */
    private final int f79id;
    private Injector injector;
    private List<Listener> listeners;
    private String name;
    HttpRequestManager requestManager;
    private Map<String, Object> requestProperties;
    private int responseCode;
    private String responseData;
    private Map<String, String> responseHeaders;
    private int retryAttempt;
    boolean retrying;
    private String tag;
    private String urlString;
    private HttpRequestMethod method = HttpRequestMethod.GET;
    private int connectTimeout = 45000;
    private int readTimeout = 45000;
    private HttpRequestRetryPolicy retryPolicy = DEFAULT_RETRY_POLICY;
    private final DispatchTask retryDispatchTask = new DispatchTask() { // from class: com.apptentive.android.sdk.network.HttpRequest.2
        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            Assert.assertTrue(HttpRequest.this.retrying);
            Assert.assertNotNull(HttpRequest.this.requestManager);
            HttpRequest.this.requestManager.dispatchRequest(HttpRequest.this);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Adapter.class */
    public static class Adapter<T extends HttpRequest> implements Listener<T> {
        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onCancel(T t) {
        }

        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onFail(T t, String str) {
        }

        @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
        public void onFinish(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Injector.class */
    public static class Injector {
        public void onAfterSend(HttpRequest httpRequest) throws Exception {
        }

        public void onBeforeSend(HttpRequest httpRequest) throws Exception {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$Listener.class */
    public interface Listener<T extends HttpRequest> {
        void onCancel(T t);

        void onFail(T t, String str);

        void onFinish(T t);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequest$NetworkUnavailableException.class */
    public static class NetworkUnavailableException extends IOException {
        public NetworkUnavailableException(String str) {
            super(str);
        }
    }

    public HttpRequest(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Invalid URL string '" + str + "'");
        }
        this.listeners = new ArrayList(1);
        int i = nextRequestId;
        nextRequestId = i + 1;
        this.f79id = i;
        this.urlString = str;
    }

    private void closeConnection() {
        if (this.connection != null) {
            this.connection.disconnect();
            this.connection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRequest() {
        try {
            if (isSuccessful()) {
                for (Listener listener : this.listeners) {
                    try {
                        listener.onFinish(this);
                    } catch (Exception e) {
                        ApptentiveLog.m408e(e, "Exception in request onFinish() listener", new Object[0]);
                    }
                }
            } else if (isCancelled()) {
                for (Listener listener2 : this.listeners) {
                    try {
                        listener2.onCancel(this);
                    } catch (Exception e2) {
                        ApptentiveLog.m408e(e2, "Exception in request onCancel() listener", new Object[0]);
                    }
                }
            } else {
                for (Listener listener3 : this.listeners) {
                    try {
                        listener3.onFail(this, this.errorMessage);
                    } catch (Exception e3) {
                        ApptentiveLog.m408e(e3, "Exception in request onFail() listener", new Object[0]);
                    }
                }
            }
        } finally {
            this.requestManager.unregisterRequest(this);
        }
    }

    private static Map<String, String> getResponseHeaders(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    private static boolean isGzipContentEncoding(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get(io.fabric.sdk.android.services.network.HttpRequest.HEADER_CONTENT_ENCODING);
        boolean z = false;
        if (str != null) {
            z = false;
            if (str.equalsIgnoreCase("[gzip]")) {
                z = true;
            }
        }
        return z;
    }

    private static String readResponse(InputStream inputStream, boolean z) throws IOException {
        InputStream inputStream2;
        if (inputStream == null) {
            return null;
        }
        InputStream inputStream3 = inputStream;
        if (z) {
            inputStream2 = inputStream;
            try {
                inputStream3 = new GZIPInputStream(inputStream);
            } finally {
                Util.ensureClosed(inputStream2);
            }
        }
        inputStream2 = inputStream2;
        return Util.readStringFromInputStream(inputStream2, "UTF-8");
    }

    private boolean retryRequest(DispatchQueue dispatchQueue, int i) {
        Assert.assertFalse(this.retryDispatchTask.isScheduled());
        this.retryAttempt++;
        if (!this.retryPolicy.shouldRetryRequest(i, this.retryAttempt)) {
            ApptentiveLog.m403v(ApptentiveLogTag.NETWORK, "Retry policy declined request retry: %s", this);
            return false;
        }
        this.retrying = true;
        long retryTimeoutMillis = this.retryPolicy.getRetryTimeoutMillis(this.retryAttempt);
        ApptentiveLog.m403v(ApptentiveLogTag.NETWORK, "Retry request in %d ms: %s", Long.valueOf(retryTimeoutMillis), this);
        dispatchQueue.dispatchAsyncOnce(this.retryDispatchTask, retryTimeoutMillis);
        return true;
    }

    private Map<String, Object> sanitize(Map<String, Object> map) {
        if (!ApptentiveLog.shouldSanitizeLogMessages()) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        if (hashMap.containsKey("Authorization")) {
            hashMap.put("Authorization", "<HIDDEN>");
        }
        return hashMap;
    }

    private void sendRequestSync() throws Exception {
        Throwable th;
        try {
            if (this.injector != null) {
                this.injector.onBeforeSend(this);
            }
            URL url = new URL(this.urlString);
            ApptentiveLog.m415d(ApptentiveLogTag.NETWORK, "Performing request: %s %s", this.method, url);
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                ApptentiveLog.m403v(ApptentiveLogTag.NETWORK, "%s", toString());
            }
            this.retrying = false;
            this.connection = openConnection(url);
            this.connection.setRequestMethod(this.method.toString());
            this.connection.setConnectTimeout(this.connectTimeout);
            this.connection.setReadTimeout(this.readTimeout);
            if (!isNetworkConnectionPresent()) {
                ApptentiveLog.m415d(ApptentiveLogTag.NETWORK, "No network connection present. Request will fail.", new Object[0]);
                throw new NetworkUnavailableException("The network is not currently active.");
            } else if (!isCancelled()) {
                if (this.requestProperties != null && this.requestProperties.size() > 0) {
                    setupRequestProperties(this.connection, this.requestProperties);
                }
                if (!HttpRequestMethod.GET.equals(this.method)) {
                    this.connection.setDoInput(true);
                    this.connection.setDoOutput(true);
                    this.connection.setUseCaches(false);
                    byte[] createRequestData = createRequestData();
                    if (createRequestData != null && createRequestData.length > 0) {
                        OutputStream outputStream = null;
                        try {
                            OutputStream outputStream2 = this.connection.getOutputStream();
                            try {
                                outputStream2.write(createRequestData);
                                Util.ensureClosed(outputStream2);
                            } catch (Throwable th2) {
                                th = th2;
                                outputStream = outputStream2;
                                Util.ensureClosed(outputStream);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                }
                this.responseCode = this.connection.getResponseCode();
                ApptentiveLog.m415d(ApptentiveLogTag.NETWORK, "Response %s: %d %s", url, Integer.valueOf(this.responseCode), this.connection.getResponseMessage());
                if (!isCancelled()) {
                    this.responseHeaders = getResponseHeaders(this.connection);
                    boolean isGzipContentEncoding = isGzipContentEncoding(this.responseHeaders);
                    if (this.responseCode < 200 || this.responseCode >= 300) {
                        this.errorMessage = StringUtils.format("Unexpected response code: %d (%s)", Integer.valueOf(this.responseCode), this.connection.getResponseMessage());
                        this.responseData = readResponse(this.connection.getErrorStream(), isGzipContentEncoding);
                        ApptentiveLog.m399w(ApptentiveLogTag.NETWORK, "Error response data: %s", this.responseData);
                    } else {
                        this.responseData = readResponse(this.connection.getInputStream(), isGzipContentEncoding);
                        if (ApptentiveLog.shouldSanitizeLogMessages()) {
                            ApptentiveLog.m403v(ApptentiveLogTag.NETWORK, "Response data: <HIDDEN> %d bytes", Integer.valueOf(this.responseData.length()));
                        } else {
                            ApptentiveLog.m403v(ApptentiveLogTag.NETWORK, "Response data: %s", this.responseData);
                        }
                    }
                    if (!isCancelled()) {
                        if (this.injector != null) {
                            this.injector.onAfterSend(this);
                        }
                        handleResponse(this.responseData);
                    }
                }
            }
        } finally {
            closeConnection();
        }
    }

    private void setupRequestProperties(HttpURLConnection httpURLConnection, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!(key == null || value == null)) {
                httpURLConnection.setRequestProperty(key, value.toString());
            }
        }
    }

    public void addListener(Listener<?> listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Listener is null");
        }
        boolean contains = this.listeners.contains(listener);
        Assert.assertFalse(contains, "Already contains listener: %s", listener);
        if (!contains) {
            this.listeners.add(listener);
        }
    }

    public void cancel() {
        synchronized (this) {
            this.cancelled = true;
        }
    }

    protected byte[] createRequestData() throws IOException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dispatchSync(DispatchQueue dispatchQueue) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            sendRequestSync();
        } catch (NetworkUnavailableException e) {
            this.responseCode = -1;
            this.errorMessage = e.getMessage();
            ApptentiveLog.m399w(ApptentiveLogTag.NETWORK, e.getMessage(), new Object[0]);
            ApptentiveLog.m399w(ApptentiveLogTag.NETWORK, "Cancelled? %b", Boolean.valueOf(isCancelled()));
        } catch (Exception e2) {
            this.responseCode = -1;
            this.errorMessage = e2.getMessage();
            ApptentiveLog.m411e(ApptentiveLogTag.NETWORK, "Cancelled? %b", Boolean.valueOf(isCancelled()));
            if (!isCancelled()) {
                ApptentiveLog.m411e(ApptentiveLogTag.NETWORK, "Unable to perform request: %s", this);
            }
        }
        ApptentiveLog.m415d(ApptentiveLogTag.NETWORK, "Request finished in %d ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        if (isFailed() && retryRequest(dispatchQueue, this.responseCode)) {
            return;
        }
        if (this.callbackQueue != null) {
            this.callbackQueue.dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.network.HttpRequest.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    HttpRequest.this.finishRequest();
                }
            });
        } else {
            finishRequest();
        }
    }

    public Apptentive.AuthenticationFailedReason getAuthenticationFailedReason() {
        if (this.responseData != null) {
            try {
                JSONObject jSONObject = new JSONObject(this.responseData);
                return Apptentive.AuthenticationFailedReason.parse(jSONObject.optString("error_type", null), jSONObject.optString(IABConstants.EXTRA_ERROR, null));
            } catch (Exception e) {
                ApptentiveLog.m398w(ApptentiveLogTag.NETWORK, e, "Error parsing authentication failure object.", new Object[0]);
            }
        }
        return Apptentive.AuthenticationFailedReason.UNKNOWN;
    }

    public int getId() {
        return this.f79id;
    }

    public String getName() {
        return this.name;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getResponseData() {
        return this.responseData;
    }

    public String getResponseHeader(String str) {
        return this.responseHeaders != null ? this.responseHeaders.get(str) : null;
    }

    public String getTag() {
        return this.tag;
    }

    protected void handleResponse(String str) throws IOException {
    }

    public boolean isAuthenticationFailure() {
        return this.responseCode == 401;
    }

    boolean isCancelled() {
        boolean z;
        synchronized (this) {
            z = this.cancelled;
        }
        return z;
    }

    public boolean isFailed() {
        return !isSuccessful() && !isCancelled();
    }

    protected boolean isNetworkConnectionPresent() {
        return Util.isNetworkConnectionPresent();
    }

    public boolean isSuccessful() {
        return this.responseCode >= 200 && this.responseCode < 300;
    }

    protected HttpURLConnection openConnection(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    public void setCallbackQueue(DispatchQueue dispatchQueue) {
        this.callbackQueue = dispatchQueue;
    }

    public void setConnectTimeout(int i) {
        this.connectTimeout = i;
    }

    public void setInjector(Injector injector) {
        this.injector = injector;
    }

    public void setMethod(HttpRequestMethod httpRequestMethod) {
        if (httpRequestMethod == null) {
            throw new IllegalArgumentException("Method is null");
        }
        this.method = httpRequestMethod;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public void setRequestManager(HttpRequestManager httpRequestManager) {
        this.requestManager = httpRequestManager;
    }

    public void setRequestProperty(String str, Object obj) {
        if (obj != null) {
            if (this.requestProperties == null) {
                this.requestProperties = new HashMap();
            }
            this.requestProperties.put(str, obj);
        }
    }

    protected void setResponseCode(int i) {
        this.responseCode = i;
    }

    public HttpRequest setRetryPolicy(HttpRequestRetryPolicy httpRequestRetryPolicy) {
        if (httpRequestRetryPolicy == null) {
            throw new IllegalArgumentException("Retry policy is null");
        }
        this.retryPolicy = httpRequestRetryPolicy;
        return this;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void start() {
        Assert.assertNotNull(this.requestManager);
        if (this.requestManager != null) {
            this.requestManager.startRequest(this);
        }
    }

    public String toString() {
        String str;
        try {
            byte[] createRequestData = createRequestData();
            String obj = this.requestProperties.get("Content-Type").toString();
            if (ApptentiveLog.shouldSanitizeLogMessages()) {
                str = StringUtils.format("<HIDDEN> %d bytes", Integer.valueOf(createRequestData.length));
            } else {
                if (!obj.contains("application/octet-stream") && !obj.contains("multipart/encrypted")) {
                    str = new String(createRequestData);
                }
                str = "Base64 encoded binary request: " + Base64.encodeToString(createRequestData, 2);
            }
            return StringUtils.format("\nRequest:\n\t%s %s\n\t%s\n\t%s\nResponse:\n\t%d\n\t%s\n\t%s", this.method.name(), this.urlString, sanitize(this.requestProperties), str, Integer.valueOf(this.responseCode), this.responseData, this.responseHeaders);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while getting request string representation", new Object[0]);
            return null;
        }
    }
}
