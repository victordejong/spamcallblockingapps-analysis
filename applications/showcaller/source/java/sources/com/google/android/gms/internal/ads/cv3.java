package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cv3.class */
final class cv3 implements ur3 {

    /* renamed from: a */
    final /* synthetic */ ev3 f21388a;

    public /* synthetic */ cv3(ev3 ev3Var, bv3 bv3Var) {
        this.f21388a = ev3Var;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        qv3 qv3Var;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        qv3Var = this.f21388a.f22569d;
        long m11785h = qv3Var.m11785h(j);
        j2 = this.f21388a.f22567b;
        j3 = this.f21388a.f22568c;
        j4 = this.f21388a.f22567b;
        long j8 = m11785h * (j3 - j4);
        j5 = this.f21388a.f22571f;
        long j9 = (-30000) + j2 + (j8 / j5);
        j6 = this.f21388a.f22567b;
        j7 = this.f21388a.f22568c;
        vr3 vr3Var = new vr3(j, C7101wa.m9694d0(j9, j6, j7 - 1));
        return new sr3(vr3Var, vr3Var);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        qv3 qv3Var;
        long j;
        qv3Var = this.f21388a.f22569d;
        j = this.f21388a.f22571f;
        return qv3Var.m11786g(j);
    }
}
