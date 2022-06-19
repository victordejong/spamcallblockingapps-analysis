package com.yanzhenjie.nohttp.error;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/error/NetworkError.class */
public class NetworkError extends Exception {
    private static final long serialVersionUID = 11548468;

    public NetworkError() {
    }

    public NetworkError(String str) {
        super(str);
    }

    public NetworkError(String str, Throwable th) {
        super(str, th);
    }

    public NetworkError(Throwable th) {
        super(th);
    }
}
