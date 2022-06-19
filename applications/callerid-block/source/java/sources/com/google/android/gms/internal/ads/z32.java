package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/z32.class */
public final class z32 {
    @Deprecated

    /* renamed from: a */
    public static final w82 f9305a = w82.F();

    static {
        new y32();
        try {
            m4661a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m4661a() {
        m12.m6615c(new y32(), true);
        m12.m6615c(new u32(), true);
        m12.m6613e(new c42());
    }
}
