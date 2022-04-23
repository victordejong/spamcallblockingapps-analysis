package com.flurry.sdk;
/* renamed from: com.flurry.sdk.hv */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hv.class */
public enum EnumC3253hv {
    GET("GET", 0),
    PUT("PUT", 1),
    POST("POST", 2);
    

    /* renamed from: e */
    public int f5447e;

    EnumC3253hv(String str, int i) {
        this.f5447e = i;
    }

    /* renamed from: a */
    public static EnumC3253hv m32799a(int i) {
        if (i == 0) {
            return GET;
        }
        if (i == 1) {
            return PUT;
        }
        if (i != 2) {
            return null;
        }
        return POST;
    }
}
