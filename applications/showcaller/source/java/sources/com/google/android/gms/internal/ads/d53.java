package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d53.class */
public final class d53 {
    @Deprecated

    /* renamed from: a */
    public static final ia3 f21483a;
    @Deprecated

    /* renamed from: b */
    public static final ia3 f21484b;
    @Deprecated

    /* renamed from: c */
    public static final ia3 f21485c;

    static {
        new c53();
        ia3 m14461D = ia3.m14461D();
        f21483a = m14461D;
        f21484b = m14461D;
        f21485c = m14461D;
        try {
            m15947a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m15947a() {
        p23.m12455e(new h53());
        p23.m12457c(new c53(), true);
        if (b43.m16450a()) {
            return;
        }
        p23.m12457c(new z43(), true);
    }
}
