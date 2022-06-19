package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0511a;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.p028a.C0519f;
/* renamed from: androidx.constraintlayout.a.a.a.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/k.class */
public final class C0525k extends AbstractC0533p {
    public C0525k(C0541e c0541e) {
        super(c0541e);
    }

    /* renamed from: a */
    private void m45338a(C0519f c0519f) {
        this.f2000j.f1961k.add(c0519f);
        c0519f.f1962l.add(this.f2000j);
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: a */
    public final boolean mo45326a() {
        return false;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: c */
    public final void mo45318c() {
        this.f1995e = null;
        this.f2000j.m45354a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r0 < r9) goto L9;
     */
    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p, androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo45317d() {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.a.a.e r0 = r0.f1994d
            androidx.constraintlayout.a.a.a r0 = (androidx.constraintlayout.p026a.p027a.C0511a) r0
            r5 = r0
            r0 = r5
            int r0 = r0.f1920a
            r6 = r0
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.f2000j
            java.util.List<androidx.constraintlayout.a.a.a.f> r0 = r0.f1962l
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = -1
            r9 = r0
        L20:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r7
            java.lang.Object r0 = r0.next()
            androidx.constraintlayout.a.a.a.f r0 = (androidx.constraintlayout.p026a.p027a.p028a.C0519f) r0
            int r0 = r0.f1957g
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
            r0 = r6
            if (r0 == 0) goto L7d
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L6e
            goto L7d
        L6e:
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.f2000j
            r1 = r8
            r2 = r5
            int r2 = r2.f1922c
            int r1 = r1 + r2
            r0.mo45352a(r1)
            return
        L7d:
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.f2000j
            r1 = r9
            r2 = r5
            int r2 = r2.f1922c
            int r1 = r1 + r2
            r0.mo45352a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.C0525k.mo45317d():void");
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: e */
    public final void mo45316e() {
        if (this.f1994d instanceof C0511a) {
            int i = ((C0511a) this.f1994d).f1920a;
            if (i == 0 || i == 1) {
                this.f1994d.m45276e(this.f2000j.f1957g);
            } else {
                this.f1994d.m45274f(this.f2000j.f1957g);
            }
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: f */
    public final void mo45315f() {
        if (this.f1994d instanceof C0511a) {
            this.f2000j.f1952b = true;
            C0511a c0511a = (C0511a) this.f1994d;
            int i = c0511a.f1920a;
            boolean z = c0511a.f1921b;
            if (i == 0) {
                this.f2000j.f1955e = C0519f.EnumC0520a.LEFT;
                for (int i2 = 0; i2 < c0511a.f2216aY; i2++) {
                    C0541e c0541e = c0511a.f2215aX[i2];
                    if (z || c0541e.f2091ak != 8) {
                        C0519f c0519f = c0541e.f2114i.f2000j;
                        c0519f.f1961k.add(this.f2000j);
                        this.f2000j.f1962l.add(c0519f);
                    }
                }
                m45338a(this.f1994d.f2114i.f2000j);
                m45338a(this.f1994d.f2114i.f2001k);
            } else if (i == 1) {
                this.f2000j.f1955e = C0519f.EnumC0520a.RIGHT;
                for (int i3 = 0; i3 < c0511a.f2216aY; i3++) {
                    C0541e c0541e2 = c0511a.f2215aX[i3];
                    if (z || c0541e2.f2091ak != 8) {
                        C0519f c0519f2 = c0541e2.f2114i.f2001k;
                        c0519f2.f1961k.add(this.f2000j);
                        this.f2000j.f1962l.add(c0519f2);
                    }
                }
                m45338a(this.f1994d.f2114i.f2000j);
                m45338a(this.f1994d.f2114i.f2001k);
            } else if (i == 2) {
                this.f2000j.f1955e = C0519f.EnumC0520a.TOP;
                for (int i4 = 0; i4 < c0511a.f2216aY; i4++) {
                    C0541e c0541e3 = c0511a.f2215aX[i4];
                    if (z || c0541e3.f2091ak != 8) {
                        C0519f c0519f3 = c0541e3.f2115j.f2000j;
                        c0519f3.f1961k.add(this.f2000j);
                        this.f2000j.f1962l.add(c0519f3);
                    }
                }
                m45338a(this.f1994d.f2115j.f2000j);
                m45338a(this.f1994d.f2115j.f2001k);
            } else if (i == 3) {
                this.f2000j.f1955e = C0519f.EnumC0520a.BOTTOM;
                for (int i5 = 0; i5 < c0511a.f2216aY; i5++) {
                    C0541e c0541e4 = c0511a.f2215aX[i5];
                    if (z || c0541e4.f2091ak != 8) {
                        C0519f c0519f4 = c0541e4.f2115j.f2001k;
                        c0519f4.f1961k.add(this.f2000j);
                        this.f2000j.f1962l.add(c0519f4);
                    }
                }
                m45338a(this.f1994d.f2115j.f2000j);
                m45338a(this.f1994d.f2115j.f2001k);
            }
        }
    }
}
