package com.huawei.hms.push;

import com.huawei.hms.aaid.constant.ErrorEnum;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/BaseException.class */
public class BaseException extends Exception {

    /* renamed from: a */
    public final int f7669a;

    /* renamed from: b */
    public final ErrorEnum f7670b;

    public BaseException(int i) {
        ErrorEnum fromCode = ErrorEnum.fromCode(i);
        this.f7670b = fromCode;
        this.f7669a = fromCode.getExternalCode();
    }

    public int getErrorCode() {
        return this.f7669a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f7670b.getMessage();
    }
}
