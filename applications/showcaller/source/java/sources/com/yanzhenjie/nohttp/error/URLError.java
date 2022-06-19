package com.yanzhenjie.nohttp.error;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/error/URLError.class */
public class URLError extends Exception {
    private static final long serialVersionUID = 114946;

    public URLError() {
    }

    public URLError(String str) {
        super(str);
    }

    public URLError(String str, Throwable th) {
        super(str, th);
    }

    public URLError(Throwable th) {
        super(th);
    }
}
