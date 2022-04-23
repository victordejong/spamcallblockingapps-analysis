package com.flurry.sdk;
/* renamed from: com.flurry.sdk.hq */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hq.class */
public enum EnumC3233hq {
    COMPLETE(1),
    TIMEOUT(2),
    INVALID_RESPONSE(3),
    PENDING_COMPLETION(4);
    

    /* renamed from: e */
    public int f5409e;

    EnumC3233hq(int i) {
        this.f5409e = i;
    }

    /* renamed from: a */
    public static EnumC3233hq m32850a(int i) {
        if (i == 1) {
            return COMPLETE;
        }
        if (i == 2) {
            return TIMEOUT;
        }
        if (i == 3) {
            return INVALID_RESPONSE;
        }
        if (i != 4) {
            return null;
        }
        return PENDING_COMPLETION;
    }
}
