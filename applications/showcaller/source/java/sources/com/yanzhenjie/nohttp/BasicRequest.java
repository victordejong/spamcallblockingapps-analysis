package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.BasicRequest;
import com.yanzhenjie.nohttp.able.Cancelable;
import com.yanzhenjie.nohttp.able.Finishable;
import com.yanzhenjie.nohttp.able.Startable;
import com.yanzhenjie.nohttp.tools.CounterOutputStream;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import com.yanzhenjie.nohttp.tools.IOUtils;
import com.yanzhenjie.nohttp.tools.MultiValueMap;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpCookie;
import java.net.Proxy;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/BasicRequest.class */
public class BasicRequest<T extends BasicRequest> implements Startable, Cancelable, Finishable {
    private final String boundary;
    private final String endBoundary;
    private boolean isFinished;
    private boolean isMultipartFormEnable;
    private boolean isStart;
    private Object mCancelSign;
    private Cancelable mCancelable;
    private int mConnectTimeout;
    private Headers mHeaders;
    private HostnameVerifier mHostnameVerifier;
    private String mParamEncoding;
    private Params mParams;
    private Priority mPriority;
    private Proxy mProxy;
    private int mReadTimeout;
    private RedirectHandler mRedirectHandler;
    private InputStream mRequestBody;
    private RequestMethod mRequestMethod;
    private int mRetryCount;
    private SSLSocketFactory mSSLSocketFactory;
    private Object mTag;
    private final String startBoundary;
    private String url;

    public BasicRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public BasicRequest(String str, RequestMethod requestMethod) {
        String createBoundary = createBoundary();
        this.boundary = createBoundary;
        String str2 = "--" + createBoundary;
        this.startBoundary = str2;
        this.endBoundary = str2 + "--";
        this.mPriority = Priority.DEFAULT;
        this.isMultipartFormEnable = false;
        this.mSSLSocketFactory = NoHttp.getInitializeConfig().getSSLSocketFactory();
        this.mHostnameVerifier = NoHttp.getInitializeConfig().getHostnameVerifier();
        this.mConnectTimeout = NoHttp.getInitializeConfig().getConnectTimeout();
        this.mReadTimeout = NoHttp.getInitializeConfig().getReadTimeout();
        this.mRetryCount = NoHttp.getInitializeConfig().getRetryCount();
        this.isStart = false;
        this.isFinished = false;
        this.url = str;
        this.mRequestMethod = requestMethod;
        Headers headers = new Headers();
        this.mHeaders = headers;
        headers.set((Headers) Headers.HEAD_KEY_ACCEPT, Headers.HEAD_VALUE_ACCEPT_ALL);
        this.mHeaders.set((Headers) Headers.HEAD_KEY_ACCEPT_ENCODING, Headers.HEAD_VALUE_ACCEPT_ENCODING_GZIP_DEFLATE);
        this.mHeaders.set((Headers) Headers.HEAD_KEY_ACCEPT_LANGUAGE, HeaderUtils.systemAcceptLanguage());
        this.mHeaders.set((Headers) Headers.HEAD_KEY_USER_AGENT, UserAgent.instance());
        for (Map.Entry<String, List<String>> entry : NoHttp.getInitializeConfig().getHeaders().entrySet()) {
            String key = entry.getKey();
            for (String str3 : entry.getValue()) {
                this.mHeaders.add((Headers) key, str3);
            }
        }
        this.mParams = new Params();
        for (Map.Entry<String, List<String>> entry2 : NoHttp.getInitializeConfig().getParams().entrySet()) {
            for (String str4 : entry2.getValue()) {
                this.mParams.add((Params) entry2.getKey(), str4);
            }
        }
    }

    public static StringBuilder buildCommonParams(MultiValueMap<String, Object> multiValueMap, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : multiValueMap.keySet()) {
            if (!TextUtils.isEmpty(str2)) {
                for (Object obj : multiValueMap.getValues(str2)) {
                    if (obj != null && (obj instanceof CharSequence)) {
                        sb.append("&");
                        sb.append(str2);
                        sb.append("=");
                        try {
                            sb.append(URLEncoder.encode(obj.toString(), str));
                        } catch (UnsupportedEncodingException e) {
                            sb.append(obj.toString());
                        }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(0);
        }
        return sb;
    }

    private void buildUrl(StringBuilder sb) {
        StringBuilder buildCommonParams = buildCommonParams(getParamKeyValues(), getParamsEncoding());
        if (buildCommonParams.length() <= 0) {
            return;
        }
        if (this.url.contains("?") && this.url.contains("=")) {
            sb.append("&");
        } else if (!this.url.endsWith("?")) {
            sb.append("?");
        }
        sb.append((CharSequence) buildCommonParams);
    }

    public static String createBoundary() {
        StringBuilder sb = new StringBuilder("----NoHttpFormBoundary");
        for (int i = 1; i < 12; i++) {
            long currentTimeMillis = System.currentTimeMillis() + i;
            long j = currentTimeMillis % 3;
            if (j == 0) {
                sb.append(((char) currentTimeMillis) % '\t');
            } else if (j == 1) {
                sb.append((char) ((currentTimeMillis % 26) + 65));
            } else {
                sb.append((char) ((currentTimeMillis % 26) + 97));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hasBinary() {
        /*
            r3 = this;
            r0 = r3
            com.yanzhenjie.nohttp.Params r0 = r0.mParams
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        Ld:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L4e
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r3
            com.yanzhenjie.nohttp.Params r0 = r0.mParams
            r1 = r5
            java.util.List r0 = r0.getValues(r1)
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L2e:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Ld
            r0 = r5
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.yanzhenjie.nohttp.Binary
            if (r0 != 0) goto L4c
            r0 = r6
            boolean r0 = r0 instanceof java.io.File
            if (r0 == 0) goto L2e
        L4c:
            r0 = 1
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yanzhenjie.nohttp.BasicRequest.hasBinary():boolean");
    }

    private boolean hasDefineRequestBody() {
        return this.mRequestBody != null;
    }

    private void validateMethodForBody(String str) {
        if (getRequestMethod().allowRequestBody()) {
            return;
        }
        throw new IllegalArgumentException(str + " only supports these handle methods: POST/PUT/PATCH/DELETE.");
    }

    private void validateParamForBody(Object obj, String str) {
        if (obj == null || TextUtils.isEmpty(str)) {
            throw new NullPointerException("The requestBody and contentType must be can't be null");
        }
    }

    private void writeFormBinary(OutputStream outputStream, String str, Binary binary) {
        outputStream.write((this.startBoundary + "\r\nContent-Disposition: form-data; name=\"" + str + "\"; filename=\"" + binary.getFileName() + "\"\r\nContent-Type: " + binary.getMimeType() + "\r\n\r\n").getBytes());
        if (outputStream instanceof CounterOutputStream) {
            ((CounterOutputStream) outputStream).writeLength(binary.getLength());
        } else {
            binary.onWriteBinary(outputStream);
        }
    }

    private void writeFormStreamData(OutputStream outputStream) {
        if (isCancelled()) {
            return;
        }
        for (String str : this.mParams.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                for (Object obj : this.mParams.getValues(str)) {
                    if (obj instanceof String) {
                        if (!(outputStream instanceof CounterOutputStream)) {
                            Logger.m564i(str + "=" + obj);
                        }
                        writeFormString(outputStream, str, (String) obj);
                    } else if (obj instanceof Binary) {
                        if (!(outputStream instanceof CounterOutputStream)) {
                            Logger.m564i(str + " is Binary");
                        }
                        writeFormBinary(outputStream, str, (Binary) obj);
                    }
                    outputStream.write("\r\n".getBytes());
                }
            }
        }
        outputStream.write(this.endBoundary.getBytes());
    }

    private void writeFormString(OutputStream outputStream, String str, String str2) {
        outputStream.write((this.startBoundary + "\r\nContent-Disposition: form-data; name=\"" + str + "\"\r\n\r\n").getBytes(getParamsEncoding()));
        outputStream.write(str2.getBytes(getParamsEncoding()));
    }

    private void writeParamStreamData(OutputStream outputStream) {
        StringBuilder buildCommonParams = buildCommonParams(this.mParams, getParamsEncoding());
        if (buildCommonParams.length() > 0) {
            String sb = buildCommonParams.toString();
            if (!(outputStream instanceof CounterOutputStream)) {
                Logger.m564i("Body: " + sb);
            }
            IOUtils.write(sb.getBytes(), outputStream);
        }
    }

    private void writeRequestBody(OutputStream outputStream) {
        InputStream inputStream = this.mRequestBody;
        if (inputStream != null) {
            if (outputStream instanceof CounterOutputStream) {
                ((CounterOutputStream) outputStream).writeLength(inputStream.available());
                return;
            }
            IOUtils.write(inputStream, outputStream);
            IOUtils.closeQuietly(this.mRequestBody);
            this.mRequestBody = null;
        }
    }

    public T add(String str, char c) {
        add(str, String.valueOf(c));
        return this;
    }

    public T add(String str, double d) {
        add(str, Double.toString(d));
        return this;
    }

    public T add(String str, float f) {
        add(str, Float.toString(f));
        return this;
    }

    public T add(String str, int i) {
        add(str, Integer.toString(i));
        return this;
    }

    public T add(String str, long j) {
        add(str, Long.toString(j));
        return this;
    }

    public T add(String str, Binary binary) {
        validateMethodForBody("The Binary param");
        this.mParams.add((Params) str, (String) binary);
        return this;
    }

    public T add(String str, File file) {
        validateMethodForBody("The File param");
        add(str, new FileBinary(file));
        return this;
    }

    public T add(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Params params = this.mParams;
            String str3 = str2;
            if (TextUtils.isEmpty(str2)) {
                str3 = "";
            }
            params.add((Params) str, str3);
        }
        return this;
    }

    public T add(String str, List<Binary> list) {
        validateMethodForBody("The List<Binary> param");
        for (Binary binary : list) {
            this.mParams.add((Params) str, (String) binary);
        }
        return this;
    }

    public T add(String str, short s) {
        add(str, Integer.toString(s));
        return this;
    }

    public T add(String str, boolean z) {
        add(str, Boolean.toString(z));
        return this;
    }

    public T add(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Object obj = value;
            if (value == null) {
                obj = "";
            }
            if (obj instanceof File) {
                this.mParams.add((Params) key, (String) new FileBinary((File) obj));
            } else if (obj instanceof Binary) {
                this.mParams.add((Params) key, (String) obj);
            } else if (obj instanceof List) {
                List list = (List) obj;
                for (int i = 0; i < list.size(); i++) {
                    Object obj2 = list.get(i);
                    Object obj3 = obj2;
                    if (obj2 == null) {
                        obj3 = "";
                    }
                    if (obj3 instanceof File) {
                        this.mParams.add((Params) key, (String) new FileBinary((File) obj3));
                    } else if (obj3 instanceof Binary) {
                        this.mParams.add((Params) key, (String) obj);
                    } else {
                        this.mParams.add((Params) key, obj3.toString());
                    }
                }
            } else {
                this.mParams.add((Params) key, obj.toString());
            }
        }
        return this;
    }

    public T addHeader(String str, String str2) {
        this.mHeaders.add((Headers) str, str2);
        return this;
    }

    public T addHeader(HttpCookie httpCookie) {
        if (httpCookie != null) {
            Headers headers = this.mHeaders;
            headers.add((Headers) Headers.HEAD_KEY_COOKIE, httpCookie.getName() + "=" + httpCookie.getValue());
        }
        return this;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public void cancel() {
        Cancelable cancelable = this.mCancelable;
        if (cancelable != null) {
            cancelable.cancel();
        }
    }

    public void cancelBySign(Object obj) {
        Object obj2 = this.mCancelSign;
        if (obj2 == obj || (obj2 != null && obj2.equals(obj))) {
            cancel();
        }
    }

    public boolean containsHeader(String str) {
        return this.mHeaders.containsKey(str);
    }

    @Override // com.yanzhenjie.nohttp.able.Finishable
    @Deprecated
    public void finish() {
        this.isFinished = true;
    }

    public Object getCancelSign() {
        return this.mCancelSign;
    }

    public int getConnectTimeout() {
        return this.mConnectTimeout;
    }

    public long getContentLength() {
        CounterOutputStream counterOutputStream = new CounterOutputStream();
        try {
            onWriteRequestBody(counterOutputStream);
        } catch (IOException e) {
            Logger.m566e((Throwable) e);
        }
        return counterOutputStream.get();
    }

    public String getContentType() {
        String contentType = this.mHeaders.getContentType();
        if (!TextUtils.isEmpty(contentType)) {
            return contentType;
        }
        if (!getRequestMethod().allowRequestBody() || !isMultipartFormEnable()) {
            return "application/x-www-form-urlencoded; charset=" + getParamsEncoding();
        }
        return "multipart/form-data; boundary=" + this.boundary;
    }

    public InputStream getDefineRequestBody() {
        return this.mRequestBody;
    }

    public Headers getHeaders() {
        return this.mHeaders;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.mHostnameVerifier;
    }

    public MultiValueMap<String, Object> getParamKeyValues() {
        return this.mParams;
    }

    public String getParamsEncoding() {
        if (TextUtils.isEmpty(this.mParamEncoding)) {
            this.mParamEncoding = "utf-8";
        }
        return this.mParamEncoding;
    }

    public Priority getPriority() {
        return this.mPriority;
    }

    public Proxy getProxy() {
        return this.mProxy;
    }

    public int getReadTimeout() {
        return this.mReadTimeout;
    }

    public RedirectHandler getRedirectHandler() {
        return this.mRedirectHandler;
    }

    public RequestMethod getRequestMethod() {
        return this.mRequestMethod;
    }

    public int getRetryCount() {
        return this.mRetryCount;
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.mSSLSocketFactory;
    }

    public Object getTag() {
        return this.mTag;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    @Deprecated
    public boolean isCanceled() {
        return isCancelled();
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public boolean isCancelled() {
        Cancelable cancelable = this.mCancelable;
        return cancelable != null && cancelable.isCancelled();
    }

    @Override // com.yanzhenjie.nohttp.able.Finishable
    @Deprecated
    public boolean isFinished() {
        return this.isFinished;
    }

    public boolean isMultipartFormEnable() {
        return this.isMultipartFormEnable || hasBinary();
    }

    @Override // com.yanzhenjie.nohttp.able.Startable
    @Deprecated
    public boolean isStarted() {
        return this.isStart;
    }

    public void onPreExecute() {
    }

    public void onWriteRequestBody(OutputStream outputStream) {
        if (hasDefineRequestBody()) {
            writeRequestBody(outputStream);
        } else if (isMultipartFormEnable()) {
            writeFormStreamData(outputStream);
        } else {
            writeParamStreamData(outputStream);
        }
    }

    public T path(char c) {
        return path(String.valueOf(c));
    }

    public T path(double d) {
        return path(Double.toString(d));
    }

    public T path(float f) {
        return path(Float.toString(f));
    }

    public T path(int i) {
        return path(Integer.toString(i));
    }

    public T path(long j) {
        return path(Long.toString(j));
    }

    public T path(String str) {
        if (str != null) {
            String trim = str.trim();
            if (!TextUtils.isEmpty(trim)) {
                if (!this.url.endsWith("/")) {
                    this.url += "/";
                }
                this.url += trim;
            }
        }
        return this;
    }

    public T path(boolean z) {
        return path(Boolean.toString(z));
    }

    public T remove(String str) {
        this.mParams.remove(str);
        return this;
    }

    public T removeAll() {
        this.mParams.clear();
        return this;
    }

    public T removeAllHeader() {
        this.mHeaders.clear();
        return this;
    }

    public T removeHeader(String str) {
        this.mHeaders.remove(str);
        return this;
    }

    public T set(String str, Binary binary) {
        validateMethodForBody("The Binary param");
        this.mParams.set((Params) str, (String) binary);
        return this;
    }

    public T set(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Params params = this.mParams;
            String str3 = str2;
            if (TextUtils.isEmpty(str2)) {
                str3 = "";
            }
            params.set((Params) str, str3);
        }
        return this;
    }

    public T set(String str, List<Binary> list) {
        validateMethodForBody("The List<Binary> param");
        this.mParams.remove(str);
        for (Binary binary : list) {
            this.mParams.add((Params) str, (String) binary);
        }
        return this;
    }

    public T set(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Object obj = value;
            if (value == null) {
                obj = "";
            }
            if (obj instanceof File) {
                this.mParams.set((Params) key, (String) new FileBinary((File) obj));
            } else if (obj instanceof Binary) {
                this.mParams.set((Params) key, (String) obj);
            } else if (obj instanceof List) {
                this.mParams.remove(key);
                List list = (List) obj;
                for (int i = 0; i < list.size(); i++) {
                    Object obj2 = list.get(i);
                    Object obj3 = obj2;
                    if (obj2 == null) {
                        obj3 = "";
                    }
                    if (obj3 instanceof File) {
                        this.mParams.add((Params) key, (String) new FileBinary((File) obj3));
                    } else if (obj3 instanceof Binary) {
                        this.mParams.add((Params) key, (String) obj);
                    } else {
                        this.mParams.add((Params) key, obj3.toString());
                    }
                }
            } else {
                this.mParams.set((Params) key, obj.toString());
            }
        }
        return this;
    }

    public T setAccept(String str) {
        this.mHeaders.set((Headers) Headers.HEAD_KEY_ACCEPT, str);
        return this;
    }

    public T setAcceptLanguage(String str) {
        this.mHeaders.set((Headers) Headers.HEAD_KEY_ACCEPT_LANGUAGE, str);
        return this;
    }

    public T setCancelSign(Object obj) {
        this.mCancelSign = obj;
        return this;
    }

    public void setCancelable(Cancelable cancelable) {
        this.mCancelable = cancelable;
    }

    public T setConnectTimeout(int i) {
        this.mConnectTimeout = i;
        return this;
    }

    public T setContentType(String str) {
        this.mHeaders.set((Headers) Headers.HEAD_KEY_CONTENT_TYPE, str);
        return this;
    }

    public T setDefineRequestBody(InputStream inputStream, String str) {
        validateMethodForBody("Request body");
        validateParamForBody(inputStream, str);
        if ((inputStream instanceof ByteArrayInputStream) || (inputStream instanceof FileInputStream)) {
            this.mRequestBody = inputStream;
            this.mHeaders.set((Headers) Headers.HEAD_KEY_CONTENT_TYPE, str);
            return this;
        }
        throw new IllegalArgumentException("Can only accept ByteArrayInputStream and FileInputStream type of stream");
    }

    public T setDefineRequestBody(String str, String str2) {
        validateMethodForBody("Request body");
        validateParamForBody(str, str2);
        try {
            this.mRequestBody = IOUtils.toInputStream(str, getParamsEncoding());
            Headers headers = this.mHeaders;
            headers.set((Headers) Headers.HEAD_KEY_CONTENT_TYPE, str2 + "; charset=" + getParamsEncoding());
        } catch (UnsupportedEncodingException e) {
            this.mRequestBody = IOUtils.toInputStream(str);
            this.mHeaders.set((Headers) Headers.HEAD_KEY_CONTENT_TYPE, str2);
        }
        return this;
    }

    public T setDefineRequestBodyForJson(String str) {
        setDefineRequestBody(str, Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
        return this;
    }

    public T setDefineRequestBodyForJson(JSONObject jSONObject) {
        setDefineRequestBody(jSONObject.toString(), Headers.HEAD_VALUE_CONTENT_TYPE_JSON);
        return this;
    }

    public T setDefineRequestBodyForXML(String str) {
        setDefineRequestBody(str, Headers.HEAD_VALUE_CONTENT_TYPE_XML);
        return this;
    }

    public T setHeader(String str, String str2) {
        this.mHeaders.set((Headers) str, str2);
        return this;
    }

    public T setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.mHostnameVerifier = hostnameVerifier;
        return this;
    }

    public T setMultipartFormEnable(boolean z) {
        validateMethodForBody("Form body");
        this.isMultipartFormEnable = z;
        return this;
    }

    public T setParamsEncoding(String str) {
        this.mParamEncoding = str;
        return this;
    }

    public T setPriority(Priority priority) {
        this.mPriority = priority;
        return this;
    }

    public T setProxy(Proxy proxy) {
        this.mProxy = proxy;
        return this;
    }

    public T setReadTimeout(int i) {
        this.mReadTimeout = i;
        return this;
    }

    public T setRedirectHandler(RedirectHandler redirectHandler) {
        this.mRedirectHandler = redirectHandler;
        return this;
    }

    public T setRetryCount(int i) {
        this.mRetryCount = i;
        return this;
    }

    public T setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.mSSLSocketFactory = sSLSocketFactory;
        return this;
    }

    public T setTag(Object obj) {
        this.mTag = obj;
        return this;
    }

    public T setUserAgent(String str) {
        this.mHeaders.set((Headers) Headers.HEAD_KEY_USER_AGENT, str);
        return this;
    }

    @Override // com.yanzhenjie.nohttp.able.Startable
    @Deprecated
    public void start() {
        this.isStart = true;
    }

    public String url() {
        StringBuilder sb = new StringBuilder(this.url);
        if (hasDefineRequestBody()) {
            buildUrl(sb);
            return sb.toString();
        } else if (getRequestMethod().allowRequestBody()) {
            return sb.toString();
        } else {
            buildUrl(sb);
            return sb.toString();
        }
    }
}
