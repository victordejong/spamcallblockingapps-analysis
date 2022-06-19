package com.yanzhenjie.nohttp;

import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/URLConnectionNetwork.class */
public class URLConnectionNetwork implements Network {
    private HttpURLConnection mUrlConnection;

    public URLConnectionNetwork(HttpURLConnection httpURLConnection) {
        this.mUrlConnection = httpURLConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.closeQuietly(this.mUrlConnection);
    }

    @Override // com.yanzhenjie.nohttp.Network
    public OutputStream getOutputStream() {
        return this.mUrlConnection.getOutputStream();
    }

    @Override // com.yanzhenjie.nohttp.Network
    public int getResponseCode() {
        return this.mUrlConnection.getResponseCode();
    }

    @Override // com.yanzhenjie.nohttp.Network
    public Map<String, List<String>> getResponseHeaders() {
        return this.mUrlConnection.getHeaderFields();
    }

    @Override // com.yanzhenjie.nohttp.Network
    public InputStream getServerStream(int i, Headers headers) {
        return URLConnectionNetworkExecutor.getServerStream(i, headers.getContentEncoding(), this.mUrlConnection);
    }
}
