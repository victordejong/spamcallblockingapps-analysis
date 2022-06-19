package p269w;

import p258v.C4562a;
import p258v.C4566d;
/* renamed from: w.k */
/* loaded from: classes-dex2jar.jar:w/k.class */
public class C4705k extends AbstractC4711p {
    public C4705k(C4566d c4566d) {
        super(c4566d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r0 < r9) goto L9;
     */
    @Override // p269w.AbstractC4711p, p269w.AbstractC4698d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo561a(p269w.AbstractC4698d r5) {
        /*
            r4 = this;
            r0 = r4
            v.d r0 = r0.f14555b
            v.a r0 = (p258v.C4562a) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f14006t0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            w.f r0 = r0.f14561h
            java.util.List<w.f> r0 = r0.f14537l
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = -1
            r9 = r0
        L20:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r5
            java.lang.Object r0 = r0.next()
            w.f r0 = (p269w.C4700f) r0
            int r0 = r0.f14532g
            r10 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L48
            r0 = r9
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L4c
        L48:
            r0 = r10
            r11 = r0
        L4c:
            r0 = r11
            r9 = r0
            r0 = r8
            r1 = r10
            if (r0 >= r1) goto L20
            r0 = r10
            r8 = r0
            r0 = r11
            r9 = r0
            goto L20
        L62:
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L6e
            goto L7f
        L6e:
            r0 = r4
            w.f r0 = r0.f14561h
            r1 = r8
            r2 = r6
            int r2 = r2.f14008v0
            int r1 = r1 + r2
            r0.mo583c(r1)
            goto L8d
        L7f:
            r0 = r4
            w.f r0 = r0.f14561h
            r1 = r9
            r2 = r6
            int r2 = r2.f14008v0
            int r1 = r1 + r2
            r0.mo583c(r1)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p269w.C4705k.mo561a(w.d):void");
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: d */
    public void mo558d() {
        C4566d c4566d = this.f14555b;
        if (c4566d instanceof C4562a) {
            C4700f c4700f = this.f14561h;
            c4700f.f14527b = true;
            C4562a c4562a = (C4562a) c4566d;
            int i = c4562a.f14006t0;
            boolean z = c4562a.f14007u0;
            if (i == 0) {
                c4700f.f14530e = 4;
                for (int i2 = 0; i2 < c4562a.f14145s0; i2++) {
                    C4566d c4566d2 = c4562a.f14144r0[i2];
                    if (z || c4566d2.f14091i0 != 8) {
                        C4700f c4700f2 = c4566d2.f14080d.f14561h;
                        c4700f2.f14536k.add(this.f14561h);
                        this.f14561h.f14537l.add(c4700f2);
                    }
                }
                m571m(this.f14555b.f14080d.f14561h);
                m571m(this.f14555b.f14080d.f14562i);
            } else if (i == 1) {
                c4700f.f14530e = 5;
                for (int i3 = 0; i3 < c4562a.f14145s0; i3++) {
                    C4566d c4566d3 = c4562a.f14144r0[i3];
                    if (z || c4566d3.f14091i0 != 8) {
                        C4700f c4700f3 = c4566d3.f14080d.f14562i;
                        c4700f3.f14536k.add(this.f14561h);
                        this.f14561h.f14537l.add(c4700f3);
                    }
                }
                m571m(this.f14555b.f14080d.f14561h);
                m571m(this.f14555b.f14080d.f14562i);
            } else if (i == 2) {
                c4700f.f14530e = 6;
                for (int i4 = 0; i4 < c4562a.f14145s0; i4++) {
                    C4566d c4566d4 = c4562a.f14144r0[i4];
                    if (z || c4566d4.f14091i0 != 8) {
                        C4700f c4700f4 = c4566d4.f14082e.f14561h;
                        c4700f4.f14536k.add(this.f14561h);
                        this.f14561h.f14537l.add(c4700f4);
                    }
                }
                m571m(this.f14555b.f14082e.f14561h);
                m571m(this.f14555b.f14082e.f14562i);
            } else if (i == 3) {
                c4700f.f14530e = 7;
                for (int i5 = 0; i5 < c4562a.f14145s0; i5++) {
                    C4566d c4566d5 = c4562a.f14144r0[i5];
                    if (z || c4566d5.f14091i0 != 8) {
                        C4700f c4700f5 = c4566d5.f14082e.f14562i;
                        c4700f5.f14536k.add(this.f14561h);
                        this.f14561h.f14537l.add(c4700f5);
                    }
                }
                m571m(this.f14555b.f14082e.f14561h);
                m571m(this.f14555b.f14082e.f14562i);
            }
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: e */
    public void mo557e() {
        C4566d c4566d = this.f14555b;
        if (c4566d instanceof C4562a) {
            int i = ((C4562a) c4566d).f14006t0;
            if (i == 0 || i == 1) {
                c4566d.f14075a0 = this.f14561h.f14532g;
            } else {
                c4566d.f14077b0 = this.f14561h.f14532g;
            }
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: f */
    public void mo556f() {
        this.f14556c = null;
        this.f14561h.m584b();
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: k */
    public boolean mo551k() {
        return false;
    }

    /* renamed from: m */
    public final void m571m(C4700f c4700f) {
        this.f14561h.f14536k.add(c4700f);
        c4700f.f14537l.add(this.f14561h);
    }
}
