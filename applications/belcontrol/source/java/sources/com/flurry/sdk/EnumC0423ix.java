package com.flurry.sdk;
/* renamed from: com.flurry.sdk.ix */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ix.class */
public enum EnumC0423ix {
    COMPLETE(1),
    TIMEOUT(2),
    INVALID_RESPONSE(3),
    PENDING_COMPLETION(4);
    

    /* renamed from: e */
    public int f3283e;

    EnumC0423ix(int i) {
        this.f3283e = i;
    }

    /* renamed from: a */
    public static EnumC0423ix m4760a(int i) {
        if (i != 1) {
            if (i == 2) {
                return TIMEOUT;
            }
            if (i == 3) {
                return INVALID_RESPONSE;
            }
            if (i == 4) {
                return PENDING_COMPLETION;
            }
            return null;
        }
        return COMPLETE;
    }
}
