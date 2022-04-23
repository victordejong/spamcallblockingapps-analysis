package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ErrorInfo.class */
public final class ErrorInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f35300a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35301b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35302c;

    public ErrorInfo(String str, String str2, int i) {
        this.f35300a = str;
        this.f35301b = str2;
        this.f35302c = i;
    }

    public final String getDescription() {
        return this.f35301b;
    }

    public final int getErrorCode() {
        return this.f35302c;
    }

    public final String getWho() {
        return this.f35300a;
    }

    public final String toString() {
        return "ErrorInfo{who='" + this.f35300a + "', description='" + this.f35301b + "', errorCode=" + this.f35302c + '}';
    }
}
