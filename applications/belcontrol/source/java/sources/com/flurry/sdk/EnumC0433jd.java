package com.flurry.sdk;
/* renamed from: com.flurry.sdk.jd */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jd.class */
public enum EnumC0433jd {
    INSTALL(1),
    SESSION_START(2),
    SESSION_END(3),
    APPLICATION_EVENT(4);
    

    /* renamed from: e */
    public final int f3333e;

    EnumC0433jd(int i) {
        this.f3333e = i;
    }

    /* renamed from: a */
    public static EnumC0433jd m4708a(int i) {
        if (i != 1) {
            if (i == 2) {
                return SESSION_START;
            }
            if (i == 3) {
                return SESSION_END;
            }
            if (i == 4) {
                return APPLICATION_EVENT;
            }
            return null;
        }
        return INSTALL;
    }
}
