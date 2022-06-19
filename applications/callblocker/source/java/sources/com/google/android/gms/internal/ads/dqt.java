package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqt.class */
public final class dqt extends dln {

    /* renamed from: b */
    private static final Object f15430b = new Object();

    /* renamed from: c */
    private final long f15431c;

    /* renamed from: d */
    private final long f15432d;

    /* renamed from: e */
    private final long f15433e;

    /* renamed from: f */
    private final long f15434f;

    /* renamed from: g */
    private final boolean f15435g;

    /* renamed from: h */
    private final boolean f15436h;

    private dqt(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f15431c = j;
        this.f15432d = j2;
        this.f15433e = 0L;
        this.f15434f = 0L;
        this.f15435g = z;
        this.f15436h = false;
    }

    public dqt(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: a */
    public final int mo8840a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: a */
    public final int mo8837a(Object obj) {
        return f15430b.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: a */
    public final dlo mo8839a(int i, dlo dloVar, boolean z, long j) {
        drz.m8775a(i, 0, 1);
        boolean z2 = this.f15435g;
        long j2 = this.f15432d;
        dloVar.f14667a = null;
        dloVar.f14668b = -9223372036854775807L;
        dloVar.f14669c = -9223372036854775807L;
        dloVar.f14670d = z2;
        dloVar.f14671e = false;
        dloVar.f14674h = 0L;
        dloVar.f14675i = j2;
        dloVar.f14672f = 0;
        dloVar.f14673g = 0;
        dloVar.f14676j = 0L;
        return dloVar;
    }

    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: a */
    public final dlp mo8838a(int i, dlp dlpVar, boolean z) {
        drz.m8775a(i, 0, 1);
        Object obj = z ? f15430b : null;
        return dlpVar.m9197a(obj, obj, 0, this.f15431c, 0L, false);
    }

    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: b */
    public final int mo8836b() {
        return 1;
    }
}
