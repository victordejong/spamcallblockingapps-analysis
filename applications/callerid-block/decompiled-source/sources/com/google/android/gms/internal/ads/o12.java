package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/o12.class */
public final class o12 {

    /* renamed from: a */
    public static final String f7824a = "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";

    /* renamed from: b */
    public static final String f7825b = "type.googleapis.com/google.crypto.tink.AesGcmKey";
    @Deprecated

    /* renamed from: c */
    public static final w82 f7826c = w82.F();

    static {
        new v12();
        new e22();
        new h22();
        new b22();
        new n22();
        new r22();
        new k22();
        new v22();
        try {
            m6347a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m6347a() {
        z32.m4661a();
        m12.m6615c(new v12(), true);
        m12.m6615c(new b22(), true);
        m12.m6615c(new e22(), true);
        h22.j(true);
        m12.m6615c(new k22(), true);
        m12.m6615c(new n22(), true);
        m12.m6615c(new r22(), true);
        m12.m6615c(new v22(), true);
        m12.m6613e(new r12());
    }
}
