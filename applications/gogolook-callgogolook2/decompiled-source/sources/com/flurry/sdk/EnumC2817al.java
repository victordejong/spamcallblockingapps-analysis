package com.flurry.sdk;
/* renamed from: com.flurry.sdk.al */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/al.class */
public enum EnumC2817al {
    STREAM_ONLY(0),
    CACHE_ONLY(1),
    CACHE_OR_STREAM(2);
    

    /* renamed from: d */
    public final int f4004d;

    EnumC2817al(int i) {
        this.f4004d = i;
    }

    /* renamed from: a */
    public static EnumC2817al m33619a(int i) {
        if (i == 0) {
            return STREAM_ONLY;
        }
        if (i == 1) {
            return CACHE_ONLY;
        }
        if (i != 2) {
            return null;
        }
        return CACHE_OR_STREAM;
    }
}
