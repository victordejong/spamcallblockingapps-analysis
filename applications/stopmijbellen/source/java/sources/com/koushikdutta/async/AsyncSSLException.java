package com.koushikdutta.async;
/* loaded from: classes2-dex2jar.jar:com/koushikdutta/async/AsyncSSLException.class */
public class AsyncSSLException extends Exception {
    public AsyncSSLException(Throwable th) {
        super("Peer not trusted by any of the system trust managers.", th);
    }
}
