package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fv3.class */
final class fv3 implements lv3 {

    /* renamed from: a */
    private final ir3 f23157a;

    /* renamed from: b */
    private final hr3 f23158b;

    /* renamed from: c */
    private long f23159c = -1;

    /* renamed from: d */
    private long f23160d = -1;

    public fv3(ir3 ir3Var, hr3 hr3Var) {
        this.f23157a = ir3Var;
        this.f23158b = hr3Var;
    }

    @Override // com.google.android.gms.internal.ads.lv3
    /* renamed from: a */
    public final long mo12122a(vq3 vq3Var) {
        long j = this.f23160d;
        if (j >= 0) {
            this.f23160d = -1L;
            return -(j + 2);
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.lv3
    /* renamed from: b */
    public final void mo12121b(long j) {
        long[] jArr = this.f23158b.f24033a;
        this.f23160d = jArr[C7101wa.m9695d(jArr, j, true, true)];
    }

    /* renamed from: c */
    public final void m15042c(long j) {
        this.f23159c = j;
    }

    @Override // com.google.android.gms.internal.ads.lv3
    public final ur3 zzg() {
        C7173y8.m8895d(this.f23159c != -1);
        return new gr3(this.f23157a, this.f23159c);
    }
}
