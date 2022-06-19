package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dft.class */
public final class dft {

    /* renamed from: a */
    private static final String f47048a = new dfp().mo16806a();
    @Deprecated

    /* renamed from: b */
    private static final djc f47049b;
    @Deprecated

    /* renamed from: c */
    private static final djc f47050c;
    @Deprecated

    /* renamed from: d */
    private static final djc f47051d;

    static {
        djc m16582a = djc.m16582a();
        f47049b = m16582a;
        f47050c = m16582a;
        f47051d = m16582a;
        try {
            m16795a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m16795a() throws GeneralSecurityException {
        ddm.m16849a((dcu) new dfp());
        ddm.m16849a((dcu) new dfo());
        ddm.m16847a((ddh) new dfw());
    }
}
