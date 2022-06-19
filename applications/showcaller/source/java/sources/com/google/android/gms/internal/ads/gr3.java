package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gr3.class */
public final class gr3 implements ur3 {

    /* renamed from: a */
    private final ir3 f23664a;

    /* renamed from: b */
    private final long f23665b;

    public gr3(ir3 ir3Var, long j) {
        this.f23664a = ir3Var;
        this.f23665b = j;
    }

    /* renamed from: e */
    private final vr3 m14822e(long j, long j2) {
        return new vr3((j * 1000000) / this.f23664a.f24414e, this.f23665b + j2);
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.gms.internal.ads.gr3] */
    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        C7173y8.m8894e(this.f23664a.f24420k);
        ir3 ir3Var = this.f23664a;
        hr3 hr3Var = ir3Var.f24420k;
        ?? r0 = hr3Var.f24033a;
        ?? r02 = hr3Var.f24034b;
        int m9695d = C7101wa.m9695d(r0, ir3Var.m14293b(j), true, false);
        ?? r16 = false;
        ?? r18 = m9695d == -1 ? (char) 0 : r0[m9695d];
        if (m9695d != -1) {
            r16 = r02[m9695d];
        }
        vr3 m14822e = m14822e(r18, r16 == true ? 1L : 0L);
        if (m14822e.f31337b == j || m9695d == r0.length - 1) {
            return new sr3(m14822e, m14822e);
        }
        int i = m9695d + 1;
        return new sr3(m14822e, m14822e(r0[i], r02[i]));
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f23664a.m14294a();
    }
}
