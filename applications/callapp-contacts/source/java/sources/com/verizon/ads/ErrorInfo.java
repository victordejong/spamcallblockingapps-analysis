package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ErrorInfo.class */
public final class ErrorInfo {

    /* renamed from: a */
    private final String f61193a;

    /* renamed from: b */
    private final String f61194b;

    /* renamed from: c */
    private final int f61195c;

    public ErrorInfo(String str, String str2, int i) {
        this.f61193a = str;
        this.f61194b = str2;
        this.f61195c = i;
    }

    public final String getDescription() {
        return this.f61194b;
    }

    public final int getErrorCode() {
        return this.f61195c;
    }

    public final String getWho() {
        return this.f61193a;
    }

    public final String toString() {
        return "ErrorInfo{who='" + this.f61193a + "', description='" + this.f61194b + "', errorCode=" + this.f61195c + '}';
    }
}
