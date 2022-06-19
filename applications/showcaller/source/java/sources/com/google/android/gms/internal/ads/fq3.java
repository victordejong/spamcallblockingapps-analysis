package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fq3.class */
public final class fq3 implements ur3 {

    /* renamed from: a */
    private final iq3 f23022a;

    /* renamed from: b */
    private final long f23023b;

    /* renamed from: c */
    private final long f23024c;

    /* renamed from: d */
    private final long f23025d;

    /* renamed from: e */
    private final long f23026e;

    /* renamed from: f */
    private final long f23027f;

    public fq3(iq3 iq3Var, long j, long j2, long j3, long j4, long j5, long j6) {
        this.f23022a = iq3Var;
        this.f23023b = j;
        this.f23024c = j3;
        this.f23025d = j4;
        this.f23026e = j5;
        this.f23027f = j6;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        vr3 vr3Var = new vr3(j, hq3.m14565a(this.f23022a.mo14296a(j), 0L, this.f23024c, this.f23025d, this.f23026e, this.f23027f));
        return new sr3(vr3Var, vr3Var);
    }

    /* renamed from: i */
    public final long m15109i(long j) {
        return this.f23022a.mo14296a(j);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f23023b;
    }
}
