package org.xutils.p344ex;

import android.text.TextUtils;
/* renamed from: org.xutils.ex.HttpException */
/* loaded from: classes2-dex2jar.jar:org/xutils/ex/HttpException.class */
public class HttpException extends BaseException {
    private static final long serialVersionUID = 1;
    private int code;
    private String customMessage;
    private String errorCode;
    private String result;

    public HttpException(int i, String str) {
        super(str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }

    public String getErrorCode() {
        String str = this.errorCode;
        String str2 = str;
        if (str == null) {
            str2 = String.valueOf(this.code);
        }
        return str2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return !TextUtils.isEmpty(this.customMessage) ? this.customMessage : super.getMessage();
    }

    public String getResult() {
        return this.result;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setMessage(String str) {
        this.customMessage = str;
    }

    public void setResult(String str) {
        this.result = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "errorCode: " + getErrorCode() + ", msg: " + getMessage() + ", result: " + this.result;
    }
}
