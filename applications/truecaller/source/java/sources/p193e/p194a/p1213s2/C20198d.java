package p193e.p194a.p1213s2;

import com.truecaller.premium.data.feature.PremiumFeature;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17052b;
import p193e.p194a.p1213s2.p1216h.AbstractC20215e;
import p193e.p194a.p1213s2.p1217i.AbstractC20226a;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.s2.d */
/* loaded from: classes5-dex2jar.jar:e/a/s2/d.class */
public final class C20198d implements AbstractC20197c {

    /* renamed from: a */
    public final a<C20592g> f56911a;

    /* renamed from: b */
    public final a<AbstractC20215e> f56912b;

    /* renamed from: c */
    public final a<AbstractC17052b> f56913c;

    /* renamed from: d */
    public final a<AbstractC20226a> f56914d;

    @Inject
    public C20198d(a<C20592g> aVar, a<AbstractC20215e> aVar2, a<AbstractC17052b> aVar3, a<AbstractC20226a> aVar4) {
        l.e(aVar, "featuresRegistry");
        l.e(aVar2, "announceCallerIdSettings");
        l.e(aVar3, "premiumFeatureManager");
        l.e(aVar4, "deviceStateUtils");
        this.f56911a = aVar;
        this.f56912b = aVar2;
        this.f56913c = aVar3;
        this.f56914d = aVar4;
    }

    /* renamed from: a */
    public final boolean m11362a() {
        return ((AbstractC20226a) this.f56914d.get()).mo11317a() ? ((AbstractC20215e) this.f56912b.get()).mo11334g3() : true;
    }

    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: b */
    public boolean mo11361b() {
        C20592g c20592g = (C20592g) this.f56911a.get();
        return c20592g.f58047w.m10941a(c20592g, C20592g.f57695p6[19]).isEnabled();
    }

    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: c */
    public boolean mo11360c() {
        return ((AbstractC17052b) this.f56913c.get()).mo16600a(PremiumFeature.ANNOUNCE_CALL, true);
    }

    /* renamed from: d */
    public final boolean m11359d(C20200f c20200f) {
        return ((AbstractC20215e) this.f56912b.get()).mo11339d1() ? c20200f.f56919d : true;
    }

    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: k */
    public void mo11358k(boolean z) {
        if (!((AbstractC20215e) this.f56912b.get()).mo11328r() && z) {
            ((AbstractC20215e) this.f56912b.get()).mo11327r2(true);
            ((AbstractC20215e) this.f56912b.get()).mo11341b(true);
        }
        ((AbstractC20215e) this.f56912b.get()).mo11330k(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
        if (r7 != false) goto L25;
     */
    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo11357l(p193e.p194a.p1213s2.C20200f r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "callerAnnouncementInfo"
            s1.z.c.l.e(r0, r1)
            r0 = r3
            boolean r0 = r0.mo11361b()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L6c
            r0 = r3
            boolean r0 = r0.mo11356m()
            if (r0 == 0) goto L6c
            r0 = r3
            boolean r0 = r0.mo11360c()
            if (r0 == 0) goto L6c
            r0 = r4
            boolean r0 = r0.f56918c
            if (r0 == 0) goto L4c
            r0 = r3
            o3.a<e.a.s2.h.e> r0 = r0.f56912b
            java.lang.Object r0 = r0.get()
            e.a.s2.h.e r0 = (p193e.p194a.p1213s2.p1216h.AbstractC20215e) r0
            boolean r0 = r0.mo11329o2()
            if (r0 == 0) goto L61
            r0 = r3
            r1 = r4
            boolean r0 = r0.m11359d(r1)
            if (r0 == 0) goto L61
            r0 = r3
            boolean r0 = r0.m11362a()
            if (r0 == 0) goto L61
            goto L5b
        L4c:
            r0 = r3
            r1 = r4
            boolean r0 = r0.m11359d(r1)
            if (r0 == 0) goto L61
            r0 = r3
            boolean r0 = r0.m11362a()
            if (r0 == 0) goto L61
        L5b:
            r0 = 1
            r7 = r0
            goto L64
        L61:
            r0 = 0
            r7 = r0
        L64:
            r0 = r7
            if (r0 == 0) goto L6c
            goto L6e
        L6c:
            r0 = 0
            r6 = r0
        L6e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1213s2.C20198d.mo11357l(e.a.s2.f):boolean");
    }

    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: m */
    public boolean mo11356m() {
        return ((AbstractC20215e) this.f56912b.get()).mo11342W2() && mo11360c();
    }

    @Override // p193e.p194a.p1213s2.AbstractC20197c
    /* renamed from: n */
    public boolean mo11355n() {
        return ((AbstractC20226a) this.f56914d.get()).mo11317a() && ((AbstractC20215e) this.f56912b.get()).mo11334g3();
    }
}
