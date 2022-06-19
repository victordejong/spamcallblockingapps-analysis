package com.huawei.agconnect.exception;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/exception/AGCException.class */
public abstract class AGCException extends Exception {
    private int code;
    private String errMsg;

    public AGCException(String str, int i) {
        this.code = i;
        this.errMsg = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getErrMsg() {
        return this.errMsg;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder m8728C = C22128a.m8728C(" code: ");
        m8728C.append(this.code);
        m8728C.append(" message: ");
        m8728C.append(this.errMsg);
        return m8728C.toString();
    }
}
