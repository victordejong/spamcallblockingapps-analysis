package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvm.class */
public final class cvm {

    /* renamed from: a */
    private static final String f13725a = new cvi().mo10636b();
    @Deprecated

    /* renamed from: b */
    private static final cys f13726b;
    @Deprecated

    /* renamed from: c */
    private static final cys f13727c;
    @Deprecated

    /* renamed from: d */
    private static final cys f13728d;

    static {
        cys m10331b = cys.m10331b();
        f13726b = m10331b;
        f13727c = m10331b;
        f13728d = f13726b;
        try {
            m10628a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m10628a() {
        cti.m10687a((csx) new cvi(), true);
        cti.m10687a((csx) new cvh(), true);
        cti.m10684a((cth) new cvq());
    }
}
