package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ik3.class */
public final class ik3 extends wj3<Void> {

    /* renamed from: j */
    private final ok3 f24318j;

    /* renamed from: k */
    private final boolean f24319k;

    /* renamed from: l */
    private final C6802o7 f24320l;

    /* renamed from: m */
    private final C6728m7 f24321m;

    /* renamed from: n */
    private fk3 f24322n;

    /* renamed from: o */
    private ek3 f24323o;

    /* renamed from: p */
    private boolean f24324p;

    /* renamed from: q */
    private boolean f24325q;

    /* renamed from: r */
    private boolean f24326r;

    public ik3(ok3 ok3Var, boolean z) {
        boolean z2;
        this.f24318j = ok3Var;
        if (z) {
            ok3Var.zzt();
            z2 = true;
        } else {
            z2 = false;
        }
        this.f24319k = z2;
        this.f24320l = new C6802o7();
        this.f24321m = new C6728m7();
        ok3Var.mo12599o();
        this.f24322n = fk3.m15153q(ok3Var.mo10988q());
    }

    /* renamed from: B */
    private final Object m14359B(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4 = obj;
        obj2 = this.f24322n.f22943f;
        if (obj2 != null) {
            obj4 = obj;
            if (obj.equals(fk3.f22941d)) {
                obj3 = this.f24322n.f22943f;
                obj4 = obj3;
            }
        }
        return obj4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    /* renamed from: C */
    private final void m14358C(long j) {
        ek3 ek3Var = this.f24323o;
        int mo12366i = this.f24322n.mo12366i(ek3Var.f22260d.f20100a);
        if (mo12366i == -1) {
            return;
        }
        fk3 fk3Var = this.f24322n;
        C6728m7 c6728m7 = this.f24321m;
        fk3Var.mo12367h(mo12366i, c6728m7, false);
        long j2 = c6728m7.f26454e;
        char c = j;
        if (j2 != -9223372036854775807L) {
            c = j;
            if (j >= j2) {
                c = Math.max(0L, j2 - 1);
            }
        }
        ek3Var.m15444o(c);
    }

    /* renamed from: A */
    public final ek3 mo10990e(mk3 mk3Var, tn3 tn3Var, long j) {
        ek3 ek3Var = new ek3(mk3Var, tn3Var, j, null);
        ek3Var.m15442r(this.f24318j);
        if (this.f24325q) {
            ek3Var.m15441s(mk3Var.m13170c(m14359B(mk3Var.f20100a)));
        } else {
            this.f24323o = ek3Var;
            if (!this.f24324p) {
                this.f24324p = true;
                m9574y(null, this.f24318j);
            }
        }
        return ek3Var;
    }

    /* renamed from: D */
    public final AbstractC6839p7 m14357D() {
        return this.f24322n;
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: c */
    public final void mo10991c(lk3 lk3Var) {
        ((ek3) lk3Var).m15440t();
        if (lk3Var == this.f24323o) {
            this.f24323o = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.dg3
    /* renamed from: m */
    public final void mo9578m(AbstractC6816ol abstractC6816ol) {
        super.mo9578m(abstractC6816ol);
        if (!this.f24319k) {
            this.f24324p = true;
            m9574y(null, this.f24318j);
        }
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.dg3
    /* renamed from: p */
    public final void mo9576p() {
        this.f24325q = false;
        this.f24324p = false;
        super.mo9576p();
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: q */
    public final C6615j5 mo10988q() {
        return this.f24318j.mo10988q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b2, code lost:
        if (r13 != 0) goto L19;
     */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    @Override // com.google.android.gms.internal.ads.wj3
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void mo9575x(java.lang.Void r8, com.google.android.gms.internal.ads.ok3 r9, com.google.android.gms.internal.ads.AbstractC6839p7 r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ik3.mo9575x(java.lang.Object, com.google.android.gms.internal.ads.ok3, com.google.android.gms.internal.ads.p7):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.wj3
    /* renamed from: z */
    public final /* bridge */ /* synthetic */ mk3 mo9573z(Void r4, mk3 mk3Var) {
        Object obj;
        Object obj2;
        Object obj3 = mk3Var.f20100a;
        Object obj4 = obj3;
        obj = this.f24322n.f22943f;
        if (obj != null) {
            obj4 = obj3;
            obj2 = this.f24322n.f22943f;
            if (obj2.equals(obj3)) {
                obj4 = fk3.f22941d;
            }
        }
        return mk3Var.m13170c(obj4);
    }

    @Override // com.google.android.gms.internal.ads.wj3, com.google.android.gms.internal.ads.ok3
    public final void zzu() {
    }
}
