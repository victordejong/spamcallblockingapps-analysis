package com.yanzhenjie.nohttp.error;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/error/ServerError.class */
public class ServerError extends Exception {
    private static final long serialVersionUID = 1854642;
    private String errorBody;

    public ServerError() {
    }

    public ServerError(String str) {
        super(str);
    }

    public ServerError(String str, Throwable th) {
        super(str, th);
    }

    public ServerError(Throwable th) {
        super(th);
    }

    public String getErrorBody() {
        return this.errorBody;
    }

    public void setErrorBody(String str) {
        this.errorBody = str;
    }
}
