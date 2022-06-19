package com.flurry.sdk;
/* renamed from: com.flurry.sdk.jc */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jc.class */
public enum EnumC0432jc {
    GET("GET", 0),
    PUT("PUT", 1),
    POST("POST", 2);
    

    /* renamed from: d */
    public String f3326d;

    /* renamed from: e */
    public int f3327e;

    EnumC0432jc(String str, int i) {
        this.f3326d = str;
        this.f3327e = i;
    }

    /* renamed from: a */
    public static EnumC0432jc m4709a(int i) {
        if (i != 0) {
            if (i == 1) {
                return PUT;
            }
            if (i == 2) {
                return POST;
            }
            return null;
        }
        return GET;
    }
}
