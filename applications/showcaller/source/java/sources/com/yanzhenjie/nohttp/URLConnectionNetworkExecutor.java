package com.yanzhenjie.nohttp;

import android.os.Build;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/URLConnectionNetworkExecutor.class */
public class URLConnectionNetworkExecutor implements NetworkExecutor {
    private static InputStream getErrorStream(String str, HttpURLConnection httpURLConnection) {
        return gzipInputStream(str, httpURLConnection.getErrorStream());
    }

    private static InputStream getInputStream(String str, HttpURLConnection httpURLConnection) {
        return gzipInputStream(str, httpURLConnection.getInputStream());
    }

    public static InputStream getServerStream(int i, String str, HttpURLConnection httpURLConnection) {
        return i >= 400 ? getErrorStream(str, httpURLConnection) : getInputStream(str, httpURLConnection);
    }

    private static InputStream gzipInputStream(String str, InputStream inputStream) {
        GZIPInputStream gZIPInputStream = inputStream;
        if (HeaderUtils.isGzipContent(str)) {
            gZIPInputStream = new GZIPInputStream(inputStream);
        }
        return gZIPInputStream;
    }

    private boolean isAllowBody(RequestMethod requestMethod) {
        boolean allowRequestBody = requestMethod.allowRequestBody();
        if (Build.VERSION.SDK_INT < 21) {
            return allowRequestBody && requestMethod != RequestMethod.DELETE;
        }
        return allowRequestBody;
    }

    @Override // com.yanzhenjie.nohttp.NetworkExecutor
    public Network execute(BasicRequest basicRequest) {
        URL url = new URL(basicRequest.url());
        Proxy proxy = basicRequest.getProxy();
        HttpURLConnection httpURLConnection = proxy == null ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(proxy);
        httpURLConnection.setConnectTimeout(basicRequest.getConnectTimeout());
        httpURLConnection.setReadTimeout(basicRequest.getReadTimeout());
        httpURLConnection.setInstanceFollowRedirects(false);
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLSocketFactory sSLSocketFactory = basicRequest.getSSLSocketFactory();
            if (sSLSocketFactory != null) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
            }
            HostnameVerifier hostnameVerifier = basicRequest.getHostnameVerifier();
            if (hostnameVerifier != null) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(hostnameVerifier);
            }
        }
        httpURLConnection.setRequestMethod(basicRequest.getRequestMethod().getValue());
        httpURLConnection.setDoInput(true);
        boolean isAllowBody = isAllowBody(basicRequest.getRequestMethod());
        httpURLConnection.setDoOutput(isAllowBody);
        Headers headers = basicRequest.getHeaders();
        List<String> values = headers.getValues(Headers.HEAD_KEY_CONNECTION);
        if (values == null || values.size() == 0) {
            headers.set((Headers) Headers.HEAD_KEY_CONNECTION, (String) (Build.VERSION.SDK_INT > 19 ? Headers.HEAD_VALUE_CONNECTION_KEEP_ALIVE : Headers.HEAD_VALUE_CONNECTION_CLOSE));
        }
        if (isAllowBody) {
            long contentLength = basicRequest.getContentLength();
            if (contentLength <= 2147483647L) {
                httpURLConnection.setFixedLengthStreamingMode((int) contentLength);
            } else if (Build.VERSION.SDK_INT >= 19) {
                httpURLConnection.setFixedLengthStreamingMode(contentLength);
            } else {
                httpURLConnection.setChunkedStreamingMode(262144);
            }
            headers.set((Headers) Headers.HEAD_KEY_CONTENT_LENGTH, Long.toString(contentLength));
        }
        for (Map.Entry<String, String> entry : headers.toRequestHeaders().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            Logger.m564i(key + ": " + value);
            httpURLConnection.setRequestProperty(key, value);
        }
        httpURLConnection.connect();
        return new URLConnectionNetwork(httpURLConnection);
    }
}
