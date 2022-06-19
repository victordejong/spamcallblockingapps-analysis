package com.huawei.secure.android.common.util;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/SecurityCommonException.class */
public class SecurityCommonException extends Exception {

    /* renamed from: c */
    private static final long f8143c = 1;

    /* renamed from: a */
    private String f8144a;

    /* renamed from: b */
    private String f8145b;

    public SecurityCommonException() {
    }

    public SecurityCommonException(String str) {
        super(str);
        this.f8145b = str;
    }

    public SecurityCommonException(String str, String str2) {
        this.f8144a = str;
        this.f8145b = str2;
    }

    public SecurityCommonException(String str, Throwable th) {
        super(str, th);
    }

    public SecurityCommonException(Throwable th) {
        super(th);
    }

    public String getMsgDes() {
        return this.f8145b;
    }

    public String getRetCd() {
        return this.f8144a;
    }
}
