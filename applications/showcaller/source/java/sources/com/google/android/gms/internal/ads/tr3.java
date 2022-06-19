package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tr3.class */
public class tr3 implements ur3 {

    /* renamed from: a */
    private final long f30332a;

    /* renamed from: b */
    private final sr3 f30333b;

    public tr3(long j, long j2) {
        this.f30332a = j;
        vr3 vr3Var = j2 == 0 ? vr3.f31336a : new vr3(0L, j2);
        this.f30333b = new sr3(vr3Var, vr3Var);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        return this.f30333b;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f30332a;
    }
}
