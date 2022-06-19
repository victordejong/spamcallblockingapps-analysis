package com.yanzhenjie.nohttp;

import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.Closeable;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Connection.class */
public class Connection implements Closeable {
    private Exception mException;
    private Headers mResponseHeaders;
    private InputStream mServerStream;
    private Network network;

    public Connection(Network network, Headers headers, InputStream inputStream, Exception exc) {
        this.network = network;
        this.mResponseHeaders = headers;
        this.mServerStream = inputStream;
        this.mException = exc;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.closeQuietly(this.mServerStream);
        IOUtils.closeQuietly(this.network);
    }

    public Exception exception() {
        return this.mException;
    }

    public Headers responseHeaders() {
        return this.mResponseHeaders;
    }

    public InputStream serverStream() {
        return this.mServerStream;
    }
}
