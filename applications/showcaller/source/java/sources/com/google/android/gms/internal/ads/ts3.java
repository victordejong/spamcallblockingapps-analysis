package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ts3.class */
public final class ts3 implements uq3 {

    /* renamed from: b */
    private xq3 f30337b;

    /* renamed from: c */
    private int f30338c;

    /* renamed from: d */
    private int f30339d;

    /* renamed from: e */
    private int f30340e;

    /* renamed from: g */
    private zzakn f30342g;

    /* renamed from: h */
    private vq3 f30343h;

    /* renamed from: i */
    private ws3 f30344i;

    /* renamed from: j */
    private su3 f30345j;

    /* renamed from: a */
    private final C6694la f30336a = new C6694la(6);

    /* renamed from: f */
    private long f30341f = -1;

    /* renamed from: a */
    private final int m10512a(vq3 vq3Var) {
        this.f30336a.m13642i(2);
        ((pq3) vq3Var).mo9882l(this.f30336a.m13634q(), 0, 2, false);
        return this.f30336a.m13628w();
    }

    /* renamed from: b */
    private final void m10511b() {
        m10510c(new zzaiu[0]);
        xq3 xq3Var = this.f30337b;
        Objects.requireNonNull(xq3Var);
        xq3Var.mo8688t();
        this.f30337b.mo8689r(new tr3(-9223372036854775807L, 0L));
        this.f30338c = 6;
    }

    /* renamed from: c */
    private final void m10510c(zzaiu... zzaiuVarArr) {
        xq3 xq3Var = this.f30337b;
        Objects.requireNonNull(xq3Var);
        yr3 mo8690o = xq3Var.mo8690o(1024, 4);
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11130m("image/jpeg");
        c6947s4.m11131l(new zzaiv(zzaiuVarArr));
        mo8690o.mo8704d(c6947s4.m11168I());
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0296  */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r14, com.google.android.gms.internal.ads.rr3 r15) {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ts3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        if (m10512a(vq3Var) != 65496) {
            return false;
        }
        int m10512a = m10512a(vq3Var);
        this.f30339d = m10512a;
        int i = m10512a;
        if (m10512a == 65504) {
            this.f30336a.m13642i(2);
            pq3 pq3Var = (pq3) vq3Var;
            pq3Var.mo9882l(this.f30336a.m13634q(), 0, 2, false);
            pq3Var.m12195q(this.f30336a.m13628w() - 2, false);
            i = m10512a(vq3Var);
            this.f30339d = i;
        }
        if (i != 65505) {
            return false;
        }
        pq3 pq3Var2 = (pq3) vq3Var;
        pq3Var2.m12195q(2, false);
        this.f30336a.m13642i(6);
        pq3Var2.mo9882l(this.f30336a.m13634q(), 0, 6, false);
        return this.f30336a.m13657B() == 1165519206 && this.f30336a.m13628w() == 0;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f30337b = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        if (j == 0) {
            this.f30338c = 0;
            this.f30345j = null;
        } else if (this.f30338c != 5) {
        } else {
            su3 su3Var = this.f30345j;
            Objects.requireNonNull(su3Var);
            su3Var.mo9041h(j, j2);
        }
    }
}
