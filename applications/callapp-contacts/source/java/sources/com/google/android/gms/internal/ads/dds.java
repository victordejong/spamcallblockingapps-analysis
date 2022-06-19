package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dds.class */
public final class dds {

    /* renamed from: a */
    public static final String f46995a = new ddv().mo16806a();

    /* renamed from: b */
    public static final String f46996b = new ded().mo16806a();

    /* renamed from: c */
    private static final String f46997c = new dei().mo16806a();

    /* renamed from: d */
    private static final String f46998d = new dec().mo16806a();

    /* renamed from: e */
    private static final String f46999e = new deo().mo16806a();

    /* renamed from: f */
    private static final String f47000f = new des().mo16806a();

    /* renamed from: g */
    private static final String f47001g = new dej().mo16806a();

    /* renamed from: h */
    private static final String f47002h = new det().mo16806a();
    @Deprecated

    /* renamed from: i */
    private static final djc f47003i;
    @Deprecated

    /* renamed from: j */
    private static final djc f47004j;
    @Deprecated

    /* renamed from: k */
    private static final djc f47005k;

    static {
        djc m16582a = djc.m16582a();
        f47003i = m16582a;
        f47004j = m16582a;
        f47005k = m16582a;
        try {
            m16823a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /* renamed from: a */
    public static void m16823a() throws GeneralSecurityException {
        dft.m16795a();
        ddm.m16849a((dcu) new ddv());
        ddm.m16849a((dcu) new dec());
        ddm.m16849a((dcu) new ded());
        if (dei.m16820e()) {
            ddm.m16849a((dcu) new dei());
        }
        ddm.m16849a((dcu) new dej());
        ddm.m16849a((dcu) new deo());
        ddm.m16849a((dcu) new des());
        ddm.m16849a((dcu) new det());
        ddm.m16847a((ddh) new ddr());
    }
}
