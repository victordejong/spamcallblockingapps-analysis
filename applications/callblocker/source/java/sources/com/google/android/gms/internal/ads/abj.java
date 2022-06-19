package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abj.class */
final class abj implements drp {

    /* renamed from: a */
    private final drp f7748a;

    /* renamed from: b */
    private final long f7749b;

    /* renamed from: c */
    private final drp f7750c;

    /* renamed from: d */
    private long f7751d;

    /* renamed from: e */
    private Uri f7752e;

    public abj(drp drpVar, int i, drp drpVar2) {
        this.f7748a = drpVar;
        this.f7749b = i;
        this.f7750c = drpVar2;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final int mo8808a(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (this.f7751d < this.f7749b) {
            i3 = this.f7748a.mo8808a(bArr, i, (int) Math.min(i2, this.f7749b - this.f7751d));
            this.f7751d += i3;
        }
        int i4 = i3;
        if (this.f7751d >= this.f7749b) {
            int mo8808a = this.f7750c.mo8808a(bArr, i + i3, i2 - i3);
            i4 = i3 + mo8808a;
            this.f7751d += mo8808a;
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v1 */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final long mo8811a(drq drqVar) {
        drq drqVar2;
        drq drqVar3 = null;
        this.f7752e = drqVar.f15488a;
        if (drqVar.f15491d >= this.f7749b) {
            drqVar2 = null;
        } else {
            long j = drqVar.f15491d;
            drqVar2 = new drq(drqVar.f15488a, j, drqVar.f15492e != -1 ? Math.min(drqVar.f15492e, this.f7749b - j) : this.f7749b - j, null);
        }
        if (drqVar.f15492e == -1 || drqVar.f15491d + drqVar.f15492e > this.f7749b) {
            drqVar3 = new drq(drqVar.f15488a, Math.max(this.f7749b, drqVar.f15491d), ((drqVar.f15492e > (-1L) ? 1 : (drqVar.f15492e == (-1L) ? 0 : -1)) != 0 ? Math.min(drqVar.f15492e, (drqVar.f15491d + drqVar.f15492e) - this.f7749b) : true) == true ? 1L : 0L, null);
        }
        ?? mo8811a = drqVar2 != null ? this.f7748a.mo8811a(drqVar2) : (char) 0;
        ?? mo8811a2 = drqVar3 != null ? this.f7750c.mo8811a(drqVar3) : (char) 0;
        this.f7751d = drqVar.f15491d;
        ?? r19 = 65535;
        if (mo8811a != -1) {
            r19 = mo8811a2 == -1 ? (char) 65535 : mo8811a + mo8811a2;
        }
        return r19;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final Uri mo8812a() {
        return this.f7752e;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: b */
    public final void mo8807b() {
        this.f7748a.mo8807b();
        this.f7750c.mo8807b();
    }
}
