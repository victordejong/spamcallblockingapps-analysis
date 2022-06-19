package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g43.class */
public final class g43 {

    /* renamed from: a */
    public static final String f23236a = "type.googleapis.com/google.crypto.tink.AesSivKey";
    @Deprecated

    /* renamed from: b */
    public static final ia3 f23237b = ia3.m14461D();
    @Deprecated

    /* renamed from: c */
    public static final ia3 f23238c = ia3.m14461D();

    static {
        new f43();
        try {
            p23.m12455e(new i43());
            if (b43.m16450a()) {
                return;
            }
            p23.m12457c(new f43(), true);
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
