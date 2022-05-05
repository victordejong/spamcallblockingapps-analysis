package com.privacystar.core.service.network;

import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.util.Text;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpConnection.class */
public class HttpConnection {
    private static final String DEFAULT_ACCEPT = "appplication/json";
    private static final String DEFAULT_ACCEPT_ENCODING = "gzip";
    private static final int DEFAULT_CONN_TIMEOUT = -1;
    private static final String DEFAULT_ENCODING = "UTF-8";
    private static final int DEFAULT_READ_TIMEOUT = -1;
    private static final String HEADER_ACCEPT = "accept";
    private static final String HEADER_ACCEPT_ENCODING = "accept-encoding";
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    private String mBody;
    private int mCheckConnTimeout;
    private OkHttpClient.Builder mClientBuilder;
    private int mConnTimeout;
    private String mContentType;
    private int mEnhancedConnTimeout;
    Map<String, String> mExtraHeaders;
    private int mReadTimeout;
    private Request.Builder mRequestBuilder;
    private Response mResponse;
    private final Method mType;
    private final String mUrl;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.service.network.HttpConnection$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpConnection$1.class */
    public static /* synthetic */ class C15961 {

        /* renamed from: $SwitchMap$com$privacystar$core$service$network$HttpConnection$Method */
        static final /* synthetic */ int[] f281x59a5342 = new int[Method.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f281x59a5342[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f281x59a5342[Method.GET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f281x59a5342[Method.PUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f281x59a5342[Method.DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpConnection$InterruptThread.class */
    public static class InterruptThread implements Runnable {
        HttpConnection con;
        Thread parent;
        long timeout;

        public InterruptThread(Thread thread, HttpConnection httpConnection, long j) {
            this.parent = thread;
            this.con = httpConnection;
            this.timeout = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.timeout);
            } catch (InterruptedException e) {
                Timber.m35d(e, "", new Object[0]);
            }
            if (this.con != null) {
                this.con.disconnect();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpConnection$Method.class */
    public enum Method {
        POST,
        GET,
        PUT,
        DELETE
    }

    public HttpConnection(String str, Method method) {
        this.mExtraHeaders = null;
        this.mClientBuilder = null;
        this.mRequestBuilder = null;
        this.mResponse = null;
        this.mBody = null;
        this.mContentType = null;
        this.mReadTimeout = -1;
        this.mConnTimeout = -1;
        this.mEnhancedConnTimeout = -1;
        this.mCheckConnTimeout = -1;
        this.mUrl = str;
        this.mType = method;
        this.mClientBuilder = new OkHttpClient.Builder();
        this.mRequestBuilder = new Request.Builder();
    }

    public HttpConnection(String str, Method method, int i, int i2, String str2, String str3) {
        this(str, method);
        setReadTimeout(i);
        setConnectionTimeout(i2);
        setBody(str2, str3);
    }

    public static Map<String, String> addDefaultHeaders(Map<String, String> map) {
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
        }
        if (!map2.containsKey(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_1_key))) {
            map2.put(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_1_key), PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_1_value));
        }
        if (!map2.containsKey(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_2_key))) {
            map2.put(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_2_key), PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_2_value));
        }
        if (!map2.containsKey(PSApplication.getInstance().getString(C1566R.string.raw_request_user_agent_header_key))) {
            map2.put(PSApplication.getInstance().getString(C1566R.string.raw_request_user_agent_header_key), System.getProperty("http.agent"));
        }
        return map2;
    }

    public static Map<String, String> getDefaultHeaders() {
        return addDefaultHeaders(new HashMap());
    }

    private void setupDeleteConnection() throws IOException {
        this.mRequestBuilder.method(Method.DELETE.name(), null);
    }

    private void setupGetConnection() throws IOException {
        this.mRequestBuilder.method(Method.GET.name(), null);
    }

    private void setupParameters() throws IOException {
        if (this.mReadTimeout > 0) {
            this.mClientBuilder.readTimeout(this.mReadTimeout, TimeUnit.MILLISECONDS);
        }
        startConnectionTimeout();
        switch (C15961.f281x59a5342[this.mType.ordinal()]) {
            case 1:
                setupPostConnection();
                return;
            case 2:
                setupGetConnection();
                return;
            case 3:
                setupPutConnection();
                return;
            case 4:
                setupDeleteConnection();
                return;
            default:
                return;
        }
    }

    private void setupPostConnection() throws IOException {
        if (Text.isBlank(this.mContentType)) {
            this.mContentType = PSApplication.getInstance().getString(C1566R.string.raw_request_default_media_type);
        }
        this.mRequestBuilder.method(Method.POST.name(), RequestBody.create(MediaType.parse(this.mContentType), this.mBody));
        this.mRequestBuilder.addHeader("Content-Type", this.mContentType);
        this.mRequestBuilder.addHeader(HEADER_ACCEPT_ENCODING, "gzip");
        this.mRequestBuilder.addHeader(HEADER_ACCEPT, DEFAULT_ACCEPT);
        for (Map.Entry<String, String> entry : this.mExtraHeaders.entrySet()) {
            this.mRequestBuilder.header(entry.getKey(), entry.getValue());
        }
    }

    private void setupPutConnection() throws IOException {
        this.mRequestBuilder.method(Method.PUT.name(), null);
    }

    private void startConnectionTimeout() {
        if (this.mConnTimeout > 0) {
            this.mClientBuilder.connectTimeout(this.mConnTimeout, TimeUnit.MILLISECONDS);
        }
        if (this.mEnhancedConnTimeout > 0) {
            new Thread(new InterruptThread(Thread.currentThread(), this, this.mConnTimeout)).start();
        }
    }

    public HttpConnection addExtraHeaders(Map<String, String> map) {
        this.mExtraHeaders = map;
        return this;
    }

    public HttpResponse connect() {
        try {
            if (!Text.isBlank(this.mUrl) && !Text.isBlank(WebServices.isNetworkAvailable(PSApplication.getInstance())) && (this.mCheckConnTimeout < 0 || WebServices.isConnectionValid(this.mCheckConnTimeout))) {
                this.mRequestBuilder.url(this.mUrl);
                setupParameters();
                this.mResponse = this.mClientBuilder.build().newCall(this.mRequestBuilder.build()).execute();
            }
            return new HttpResponse(this);
        } catch (Exception e) {
            Timber.m23w(e, "While sending network request", new Object[0]);
            return new HttpResponse(this, e);
        }
    }

    public void disconnect() {
        ResponseBody body;
        if (this.mResponse != null && (body = this.mResponse.body()) != null) {
            body.close();
        }
    }

    public Method getRequestType() {
        return this.mType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Response getResponse() {
        return this.mResponse;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public HttpConnection setBody(String str, String str2) {
        this.mContentType = str;
        this.mBody = str2;
        return this;
    }

    public HttpConnection setConnectionTimeout(int i) {
        this.mConnTimeout = i;
        return this;
    }

    public HttpConnection setEnhancedConnectionTimeout(int i) {
        this.mEnhancedConnTimeout = i;
        return this;
    }

    public HttpConnection setReadTimeout(int i) {
        this.mReadTimeout = i;
        return this;
    }

    public HttpConnection use204ConnectionCheck(int i) {
        this.mCheckConnTimeout = i;
        return this;
    }
}
