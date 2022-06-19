package com.google.android.gms.internal.ads;

import java.util.Random;
/* renamed from: com.google.android.gms.internal.ads.wr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wr.class */
public final class C7118wr {

    /* renamed from: a */
    private static final C7118wr f31763a = new C7118wr();

    /* renamed from: b */
    private final xh0 f31764b;

    /* renamed from: c */
    private final C7044ur f31765c;

    /* renamed from: d */
    private final String f31766d;

    /* renamed from: e */
    private final zzcgz f31767e;

    /* renamed from: f */
    private final Random f31768f;

    protected C7118wr() {
        xh0 xh0Var = new xh0();
        C7044ur c7044ur = new C7044ur(new C7006tq(), new C6932rq(), new C6306av(), new e10(), new se0(), new hb0(), new f10());
        String m9172f = xh0.m9172f();
        zzcgz zzcgzVar = new zzcgz(0, 213806000, true, false, false);
        Random random = new Random();
        this.f31764b = xh0Var;
        this.f31765c = c7044ur;
        this.f31766d = m9172f;
        this.f31767e = zzcgzVar;
        this.f31768f = random;
    }

    /* renamed from: a */
    public static xh0 m9485a() {
        return f31763a.f31764b;
    }

    /* renamed from: b */
    public static C7044ur m9484b() {
        return f31763a.f31765c;
    }

    /* renamed from: c */
    public static String m9483c() {
        return f31763a.f31766d;
    }

    /* renamed from: d */
    public static zzcgz m9482d() {
        return f31763a.f31767e;
    }

    /* renamed from: e */
    public static Random m9481e() {
        return f31763a.f31768f;
    }
}
