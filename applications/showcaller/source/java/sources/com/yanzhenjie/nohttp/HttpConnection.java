package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.yanzhenjie.nohttp.error.NetworkError;
import com.yanzhenjie.nohttp.error.TimeoutError;
import com.yanzhenjie.nohttp.error.URLError;
import com.yanzhenjie.nohttp.error.UnKnownHostError;
import com.yanzhenjie.nohttp.tools.IOUtils;
import com.yanzhenjie.nohttp.tools.NetUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/HttpConnection.class */
public class HttpConnection {
    private NetworkExecutor mExecutor;

    public HttpConnection(NetworkExecutor networkExecutor) {
        this.mExecutor = networkExecutor;
    }

    private Network createConnectionAndWriteData(BasicRequest<?> basicRequest) {
        Network network;
        Exception exc;
        boolean z = true;
        int retryCount = basicRequest.getRetryCount() + 1;
        Network network2 = null;
        Exception exc2 = null;
        while (z && retryCount > 0) {
            try {
                network = createNetwork(basicRequest);
                z = false;
                exc = null;
            } catch (Exception e) {
                network = network2;
                exc = e;
            }
            retryCount--;
            exc2 = exc;
            network2 = network;
        }
        if (!z) {
            if (basicRequest.getRequestMethod().allowRequestBody()) {
                writeRequestBody(basicRequest, network2.getOutputStream());
            }
            return network2;
        }
        throw exc2;
    }

    private Network createNetwork(BasicRequest<?> basicRequest) {
        basicRequest.onPreExecute();
        String url = basicRequest.url();
        Logger.m564i("Request address: " + url);
        Logger.m564i("Request method: " + basicRequest.getRequestMethod());
        Headers headers = basicRequest.getHeaders();
        headers.set((Headers) Headers.HEAD_KEY_CONTENT_TYPE, basicRequest.getContentType());
        List<String> values = headers.getValues(Headers.HEAD_KEY_CONNECTION);
        if (values == null || values.size() == 0) {
            headers.add((Headers) Headers.HEAD_KEY_CONNECTION, Headers.HEAD_VALUE_CONNECTION_KEEP_ALIVE);
        }
        if (basicRequest.getRequestMethod().allowRequestBody()) {
            headers.set((Headers) Headers.HEAD_KEY_CONTENT_LENGTH, Long.toString(basicRequest.getContentLength()));
        }
        headers.addCookie(new URI(url), NoHttp.getInitializeConfig().getCookieManager());
        return this.mExecutor.execute(basicRequest);
    }

    private Connection handleRedirect(BasicRequest<?> basicRequest, Headers headers) {
        RedirectHandler redirectHandler = basicRequest.getRedirectHandler();
        BasicRequest<?> basicRequest2 = null;
        if (redirectHandler != null) {
            if (redirectHandler.isDisallowedRedirect(headers)) {
                return new Connection(null, headers, null, null);
            }
            basicRequest2 = redirectHandler.onRedirect(basicRequest, headers);
        }
        BasicRequest<?> basicRequest3 = basicRequest2;
        if (basicRequest2 == null) {
            String location = headers.getLocation();
            String str = location;
            if (!URLUtil.isNetworkUrl(location)) {
                str = location;
                try {
                    URL url = new URL(basicRequest.url());
                    if (!location.startsWith("/")) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("/");
                        sb.append(location);
                        location = sb.toString();
                    }
                    String str2 = location;
                    String str3 = location;
                    StringBuilder sb2 = new StringBuilder();
                    String str4 = location;
                    sb2.append(url.getProtocol());
                    String str5 = location;
                    sb2.append("://");
                    String str6 = location;
                    sb2.append(url.getHost());
                    String str7 = location;
                    sb2.append(location);
                    str = location;
                    str = sb2.toString();
                } catch (MalformedURLException e) {
                }
            }
            basicRequest3 = new BasicRequest<>(str, basicRequest.getRequestMethod());
            basicRequest3.setRedirectHandler(basicRequest.getRedirectHandler());
            basicRequest3.setSSLSocketFactory(basicRequest.getSSLSocketFactory());
            basicRequest3.setHostnameVerifier(basicRequest.getHostnameVerifier());
            basicRequest3.setParamsEncoding(basicRequest.getParamsEncoding());
            basicRequest3.setProxy(basicRequest.getProxy());
        }
        return getConnection(basicRequest3);
    }

    public static boolean hasResponseBody(int i) {
        return (100 > i || i >= 200) && i != 204 && i != 205 && (300 > i || i >= 400);
    }

    public static boolean hasResponseBody(RequestMethod requestMethod, int i) {
        return requestMethod != RequestMethod.HEAD && hasResponseBody(i);
    }

    private Headers parseResponseHeaders(URI uri, int i, Map<String, List<String>> map) {
        try {
            NoHttp.getInitializeConfig().getCookieManager().put(uri, map);
        } catch (IOException e) {
            Logger.m565e(e, "Save cookie filed: " + uri.toString() + ".");
        }
        Headers headers = new Headers();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            headers.add((Headers) entry.getKey(), (List) entry.getValue());
        }
        headers.set((Headers) Headers.HEAD_KEY_RESPONSE_CODE, Integer.toString(i));
        for (String str : headers.keySet()) {
            for (String str2 : headers.getValues(str)) {
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    sb.append(": ");
                }
                if (!TextUtils.isEmpty(str2)) {
                    sb.append(str2);
                }
                Logger.m564i(sb.toString());
            }
        }
        return headers;
    }

    private void writeRequestBody(BasicRequest<?> basicRequest, OutputStream outputStream) {
        Logger.m564i("-------Send handle data start-------");
        BufferedOutputStream bufferedOutputStream = IOUtils.toBufferedOutputStream(outputStream);
        basicRequest.onWriteRequestBody(bufferedOutputStream);
        IOUtils.closeQuietly(bufferedOutputStream);
        Logger.m564i("-------Send handle data end-------");
    }

    public Connection getConnection(BasicRequest<?> basicRequest) {
        Headers headers;
        Exception exc;
        Network network;
        InputStream inputStream;
        TimeoutError timeoutError;
        InputStream inputStream2;
        Network network2;
        Network network3;
        Exception exc2;
        InputStream inputStream3;
        Headers headers2;
        Exception exc3;
        Network network4;
        InputStream inputStream4;
        InputStream inputStream5;
        Exception e;
        InputStream inputStream6;
        Logger.m570d("--------------Request start--------------");
        Headers headers3 = new Headers();
        String url = basicRequest.url();
        try {
            try {
            } catch (Throwable th) {
                if (0 != 0) {
                    Logger.m566e((Throwable) null);
                }
                throw th;
            }
        } catch (MalformedURLException e2) {
            inputStream3 = null;
            network3 = null;
            exc2 = null;
            headers2 = headers3;
        } catch (SocketTimeoutException e3) {
            inputStream5 = null;
            network4 = null;
            exc3 = null;
            headers = headers3;
        } catch (UnknownHostException e4) {
            inputStream4 = null;
            network4 = null;
            exc3 = null;
            headers = headers3;
        } catch (Exception e5) {
            e = e5;
            network4 = null;
            inputStream = null;
            headers2 = headers3;
        }
        if (!NetUtils.isNetworkAvailable()) {
            StringBuilder sb = new StringBuilder();
            sb.append("The network is not available, please check the network. The requested url is:");
            sb.append(url);
            throw new NetworkError(sb.toString());
        }
        network4 = createConnectionAndWriteData(basicRequest);
        try {
            Logger.m570d("-------Response start-------");
            int responseCode = network4.getResponseCode();
            Headers parseResponseHeaders = parseResponseHeaders(new URI(basicRequest.url()), responseCode, network4.getResponseHeaders());
            if (responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307) {
                Connection handleRedirect = handleRedirect(basicRequest, parseResponseHeaders);
                headers2 = handleRedirect.responseHeaders();
                inputStream6 = handleRedirect.serverStream();
                try {
                    exc3 = handleRedirect.exception();
                } catch (MalformedURLException e6) {
                    exc2 = null;
                    network3 = network4;
                    inputStream3 = inputStream6;
                    Exception exc4 = exc2;
                    StringBuilder sb2 = new StringBuilder();
                    Exception exc5 = exc2;
                    sb2.append("The url is malformed: ");
                    Exception exc6 = exc2;
                    sb2.append(url);
                    Exception exc7 = exc2;
                    sb2.append(".");
                    Exception exc8 = exc2;
                    inputStream2 = inputStream3;
                    timeoutError = new URLError(sb2.toString());
                    network2 = network3;
                    headers = headers2;
                    Logger.m566e((Throwable) timeoutError);
                    inputStream = inputStream2;
                    network = network2;
                    exc = timeoutError;
                    Logger.m570d("--------------Request finish--------------");
                    return new Connection(network, headers, inputStream, exc);
                } catch (SocketTimeoutException e7) {
                    headers = headers2;
                    exc3 = null;
                    inputStream5 = inputStream6;
                    Exception exc9 = exc3;
                    StringBuilder sb3 = new StringBuilder();
                    Exception exc10 = exc3;
                    sb3.append("Request time out: ");
                    Exception exc11 = exc3;
                    sb3.append(url);
                    Exception exc12 = exc3;
                    sb3.append(".");
                    Exception exc13 = exc3;
                    timeoutError = new TimeoutError(sb3.toString());
                    network2 = network4;
                    inputStream2 = inputStream5;
                    Logger.m566e((Throwable) timeoutError);
                    inputStream = inputStream2;
                    network = network2;
                    exc = timeoutError;
                    Logger.m570d("--------------Request finish--------------");
                    return new Connection(network, headers, inputStream, exc);
                } catch (UnknownHostException e8) {
                    headers = headers2;
                    exc3 = null;
                    inputStream4 = inputStream6;
                    Exception exc14 = exc3;
                    StringBuilder sb4 = new StringBuilder();
                    Exception exc15 = exc3;
                    sb4.append("Hostname can not be resolved: ");
                    Exception exc16 = exc3;
                    sb4.append(url);
                    Exception exc17 = exc3;
                    sb4.append(".");
                    Exception exc18 = exc3;
                    timeoutError = new UnKnownHostError(sb4.toString());
                    network2 = network4;
                    inputStream2 = inputStream4;
                    Logger.m566e((Throwable) timeoutError);
                    inputStream = inputStream2;
                    network = network2;
                    exc = timeoutError;
                    Logger.m570d("--------------Request finish--------------");
                    return new Connection(network, headers, inputStream, exc);
                } catch (Exception e9) {
                    e = e9;
                    inputStream = inputStream6;
                    Logger.m566e((Throwable) e);
                    headers = headers2;
                    exc = e;
                    network = network4;
                    Logger.m570d("--------------Request finish--------------");
                    return new Connection(network, headers, inputStream, exc);
                }
            } else if (hasResponseBody(basicRequest.getRequestMethod(), responseCode)) {
                headers2 = parseResponseHeaders;
                exc3 = null;
                inputStream6 = network4.getServerStream(responseCode, parseResponseHeaders);
            } else {
                headers2 = parseResponseHeaders;
                exc3 = null;
                inputStream6 = null;
            }
            Exception exc19 = exc3;
            try {
                Logger.m570d("-------Response end-------");
                headers = headers2;
                exc = exc3;
                network = network4;
                inputStream = inputStream6;
                if (exc3 != null) {
                    Logger.m566e((Throwable) exc3);
                    headers = headers2;
                    exc = exc3;
                    network = network4;
                    inputStream = inputStream6;
                }
            } catch (MalformedURLException e10) {
                exc2 = exc3;
                network3 = network4;
                inputStream3 = inputStream6;
                Exception exc42 = exc2;
                StringBuilder sb22 = new StringBuilder();
                Exception exc52 = exc2;
                sb22.append("The url is malformed: ");
                Exception exc62 = exc2;
                sb22.append(url);
                Exception exc72 = exc2;
                sb22.append(".");
                Exception exc82 = exc2;
                inputStream2 = inputStream3;
                timeoutError = new URLError(sb22.toString());
                network2 = network3;
                headers = headers2;
                Logger.m566e((Throwable) timeoutError);
                inputStream = inputStream2;
                network = network2;
                exc = timeoutError;
                Logger.m570d("--------------Request finish--------------");
                return new Connection(network, headers, inputStream, exc);
            } catch (SocketTimeoutException e11) {
                headers = headers2;
                inputStream5 = inputStream6;
                Exception exc92 = exc3;
                StringBuilder sb32 = new StringBuilder();
                Exception exc102 = exc3;
                sb32.append("Request time out: ");
                Exception exc112 = exc3;
                sb32.append(url);
                Exception exc122 = exc3;
                sb32.append(".");
                Exception exc132 = exc3;
                timeoutError = new TimeoutError(sb32.toString());
                network2 = network4;
                inputStream2 = inputStream5;
                Logger.m566e((Throwable) timeoutError);
                inputStream = inputStream2;
                network = network2;
                exc = timeoutError;
                Logger.m570d("--------------Request finish--------------");
                return new Connection(network, headers, inputStream, exc);
            } catch (UnknownHostException e12) {
                headers = headers2;
                inputStream4 = inputStream6;
                Exception exc142 = exc3;
                StringBuilder sb42 = new StringBuilder();
                Exception exc152 = exc3;
                sb42.append("Hostname can not be resolved: ");
                Exception exc162 = exc3;
                sb42.append(url);
                Exception exc172 = exc3;
                sb42.append(".");
                Exception exc182 = exc3;
                timeoutError = new UnKnownHostError(sb42.toString());
                network2 = network4;
                inputStream2 = inputStream4;
                Logger.m566e((Throwable) timeoutError);
                inputStream = inputStream2;
                network = network2;
                exc = timeoutError;
                Logger.m570d("--------------Request finish--------------");
                return new Connection(network, headers, inputStream, exc);
            } catch (Exception e13) {
                e = e13;
                inputStream = inputStream6;
                Logger.m566e((Throwable) e);
                headers = headers2;
                exc = e;
                network = network4;
                Logger.m570d("--------------Request finish--------------");
                return new Connection(network, headers, inputStream, exc);
            }
        } catch (MalformedURLException e14) {
            inputStream3 = null;
            headers2 = headers3;
            exc2 = null;
            network3 = network4;
        } catch (SocketTimeoutException e15) {
            inputStream5 = null;
            headers = headers3;
            exc3 = null;
        } catch (UnknownHostException e16) {
            inputStream4 = null;
            headers = headers3;
            exc3 = null;
        } catch (Exception e17) {
            headers2 = headers3;
            inputStream = null;
            e = e17;
        }
        Logger.m570d("--------------Request finish--------------");
        return new Connection(network, headers, inputStream, exc);
    }
}
