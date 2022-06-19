package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.a.a.a.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/c.class */
public final class C0516c extends AbstractC0533p {

    /* renamed from: a */
    ArrayList<AbstractC0533p> f1940a = new ArrayList<>();

    /* renamed from: b */
    private int f1941b;

    public C0516c(C0541e c0541e, int i) {
        super(c0541e);
        this.f1998h = i;
        m45365g();
    }

    /* renamed from: g */
    private void m45365g() {
        C0541e c0541e = this.f1994d;
        C0541e m45260m = c0541e.m45260m(this.f1998h);
        while (true) {
            C0541e c0541e2 = m45260m;
            if (c0541e2 == null) {
                break;
            }
            c0541e = c0541e2;
            m45260m = c0541e2.m45260m(this.f1998h);
        }
        this.f1994d = c0541e;
        this.f1940a.add(c0541e.m45297a(this.f1998h));
        C0541e m45258n = c0541e.m45258n(this.f1998h);
        while (true) {
            C0541e c0541e3 = m45258n;
            if (c0541e3 == null) {
                break;
            }
            this.f1940a.add(c0541e3.m45297a(this.f1998h));
            m45258n = c0541e3.m45258n(this.f1998h);
        }
        Iterator<AbstractC0533p> it2 = this.f1940a.iterator();
        while (it2.hasNext()) {
            AbstractC0533p next = it2.next();
            if (this.f1998h == 0) {
                next.f1994d.f2112g = this;
            } else if (this.f1998h == 1) {
                next.f1994d.f2113h = this;
            }
        }
        if ((this.f1998h == 0 && ((C0544f) this.f1994d.f2060S).f2163d) && this.f1940a.size() > 1) {
            ArrayList<AbstractC0533p> arrayList = this.f1940a;
            this.f1994d = arrayList.get(arrayList.size() - 1).f1994d;
        }
        this.f1941b = this.f1998h == 0 ? this.f1994d.f2104ax : this.f1994d.f2105ay;
    }

    /* renamed from: h */
    private C0541e m45364h() {
        for (int i = 0; i < this.f1940a.size(); i++) {
            AbstractC0533p abstractC0533p = this.f1940a.get(i);
            if (abstractC0533p.f1994d.f2091ak != 8) {
                return abstractC0533p.f1994d;
            }
        }
        return null;
    }

    /* renamed from: i */
    private C0541e m45363i() {
        for (int size = this.f1940a.size() - 1; size >= 0; size--) {
            AbstractC0533p abstractC0533p = this.f1940a.get(size);
            if (abstractC0533p.f1994d.f2091ak != 8) {
                return abstractC0533p.f1994d;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: a */
    public final boolean mo45326a() {
        int size = this.f1940a.size();
        for (int i = 0; i < size; i++) {
            if (!this.f1940a.get(i).mo45326a()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: b */
    public final long mo45319b() {
        AbstractC0533p abstractC0533p;
        int size = this.f1940a.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = c + abstractC0533p.f2000j.f1956f + this.f1940a.get(i).mo45319b() + abstractC0533p.f2001k.f1956f;
        }
        return c;
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: c */
    public final void mo45318c() {
        this.f1995e = null;
        Iterator<AbstractC0533p> it2 = this.f1940a.iterator();
        while (it2.hasNext()) {
            it2.next().mo45318c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0284, code lost:
        if (r16 < r0) goto L354;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0289, code lost:
        if (r9 == 0) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x028c, code lost:
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0292, code lost:
        r22 = r17;
        r10 = r9;
     */
    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p, androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo45317d() {
        /*
            Method dump skipped, instructions count: 2517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.p027a.p028a.C0516c.mo45317d():void");
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: e */
    public final void mo45316e() {
        for (int i = 0; i < this.f1940a.size(); i++) {
            this.f1940a.get(i).mo45316e();
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: f */
    public final void mo45315f() {
        Iterator<AbstractC0533p> it2 = this.f1940a.iterator();
        while (it2.hasNext()) {
            it2.next().mo45315f();
        }
        int size = this.f1940a.size();
        if (size <= 0) {
            return;
        }
        C0541e c0541e = this.f1940a.get(0).f1994d;
        C0541e c0541e2 = this.f1940a.get(size - 1).f1994d;
        if (this.f1998h == 0) {
            C0538d c0538d = c0541e.f2049H;
            C0538d c0538d2 = c0541e2.f2051J;
            C0519f a = m45321a(c0538d, 0);
            int m45301e = c0538d.m45301e();
            C0541e m45364h = m45364h();
            if (m45364h != null) {
                m45301e = m45364h.f2049H.m45301e();
            }
            if (a != null) {
                m45324a(this.f2000j, a, m45301e);
            }
            C0519f a2 = m45321a(c0538d2, 0);
            int m45301e2 = c0538d2.m45301e();
            C0541e m45363i = m45363i();
            if (m45363i != null) {
                m45301e2 = m45363i.f2051J.m45301e();
            }
            if (a2 != null) {
                m45324a(this.f2001k, a2, -m45301e2);
            }
        } else {
            C0538d c0538d3 = c0541e.f2050I;
            C0538d c0538d4 = c0541e2.f2052K;
            C0519f a3 = m45321a(c0538d3, 1);
            int m45301e3 = c0538d3.m45301e();
            C0541e m45364h2 = m45364h();
            if (m45364h2 != null) {
                m45301e3 = m45364h2.f2050I.m45301e();
            }
            if (a3 != null) {
                m45324a(this.f2000j, a3, m45301e3);
            }
            C0519f a4 = m45321a(c0538d4, 1);
            int m45301e4 = c0538d4.m45301e();
            C0541e m45363i2 = m45363i();
            if (m45363i2 != null) {
                m45301e4 = m45363i2.f2052K.m45301e();
            }
            if (a4 != null) {
                m45324a(this.f2001k, a4, -m45301e4);
            }
        }
        this.f2000j.f1951a = this;
        this.f2001k.f1951a = this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f1998h == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<AbstractC0533p> it2 = this.f1940a.iterator();
        while (it2.hasNext()) {
            AbstractC0533p next = it2.next();
            sb2 = ((sb2 + "<") + next) + "> ";
        }
        return sb2;
    }
}
