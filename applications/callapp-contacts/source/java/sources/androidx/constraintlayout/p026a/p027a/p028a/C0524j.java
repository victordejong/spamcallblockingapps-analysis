package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0547h;
/* renamed from: androidx.constraintlayout.a.a.a.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/j.class */
public final class C0524j extends AbstractC0533p {
    public C0524j(C0541e c0541e) {
        super(c0541e);
        c0541e.f2114i.mo45318c();
        c0541e.f2115j.mo45318c();
        this.f1998h = ((C0547h) c0541e).f2208aI;
    }

    /* renamed from: a */
    private void m45339a(C0519f c0519f) {
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
        this.f2000j.m45354a();
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p, androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    public final void mo45317d() {
        if (this.f2000j.f1953c && !this.f2000j.f1960j) {
            this.f2000j.mo45352a((int) ((this.f2000j.f1962l.get(0).f1957g * ((C0547h) this.f1994d).m45188d()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: e */
    public final void mo45316e() {
        if (((C0547h) this.f1994d).f2208aI == 1) {
            this.f1994d.m45276e(this.f2000j.f1957g);
        } else {
            this.f1994d.m45274f(this.f2000j.f1957g);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0533p
    /* renamed from: f */
    public final void mo45315f() {
        C0547h c0547h = (C0547h) this.f1994d;
        int m45187e = c0547h.m45187e();
        int m45186f = c0547h.m45186f();
        c0547h.m45188d();
        if (c0547h.f2208aI == 1) {
            if (m45187e != -1) {
                this.f2000j.f1962l.add(this.f1994d.f2060S.f2114i.f2000j);
                this.f1994d.f2060S.f2114i.f2000j.f1961k.add(this.f2000j);
                this.f2000j.f1956f = m45187e;
            } else if (m45186f != -1) {
                this.f2000j.f1962l.add(this.f1994d.f2060S.f2114i.f2001k);
                this.f1994d.f2060S.f2114i.f2001k.f1961k.add(this.f2000j);
                this.f2000j.f1956f = -m45186f;
            } else {
                this.f2000j.f1952b = true;
                this.f2000j.f1962l.add(this.f1994d.f2060S.f2114i.f2001k);
                this.f1994d.f2060S.f2114i.f2001k.f1961k.add(this.f2000j);
            }
            m45339a(this.f1994d.f2114i.f2000j);
            m45339a(this.f1994d.f2114i.f2001k);
            return;
        }
        if (m45187e != -1) {
            this.f2000j.f1962l.add(this.f1994d.f2060S.f2115j.f2000j);
            this.f1994d.f2060S.f2115j.f2000j.f1961k.add(this.f2000j);
            this.f2000j.f1956f = m45187e;
        } else if (m45186f != -1) {
            this.f2000j.f1962l.add(this.f1994d.f2060S.f2115j.f2001k);
            this.f1994d.f2060S.f2115j.f2001k.f1961k.add(this.f2000j);
            this.f2000j.f1956f = -m45186f;
        } else {
            this.f2000j.f1952b = true;
            this.f2000j.f1962l.add(this.f1994d.f2060S.f2115j.f2001k);
            this.f1994d.f2060S.f2115j.f2001k.f1961k.add(this.f2000j);
        }
        m45339a(this.f1994d.f2115j.f2000j);
        m45339a(this.f1994d.f2115j.f2001k);
    }
}
