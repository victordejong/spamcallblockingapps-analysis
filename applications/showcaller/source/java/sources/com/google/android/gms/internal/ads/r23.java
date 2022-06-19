package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r23.class */
public final class r23 {

    /* renamed from: a */
    public static final String f28747a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";

    /* renamed from: b */
    public static final String f28748b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
    @Deprecated

    /* renamed from: c */
    public static final ia3 f28749c;
    @Deprecated

    /* renamed from: d */
    public static final ia3 f28750d;
    @Deprecated

    /* renamed from: e */
    public static final ia3 f28751e;

    static {
        new x23();
        new h33();
        new k33();
        new e33();
        new q33();
        new u33();
        new n33();
        new x33();
        ia3 m14461D = ia3.m14461D();
        f28749c = m14461D;
        f28750d = m14461D;
        f28751e = m14461D;
        try {
            m11729a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m11729a() {
        p23.m12455e(new u23());
        d53.m15947a();
        p23.m12457c(new x23(), true);
        p23.m12457c(new h33(), true);
        if (b43.m16450a()) {
            return;
        }
        p23.m12457c(new e33(), true);
        k33.m13984k(true);
        p23.m12457c(new n33(), true);
        p23.m12457c(new q33(), true);
        p23.m12457c(new u33(), true);
        p23.m12457c(new x33(), true);
    }
}
