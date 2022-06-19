package androidx.constraintlayout.p026a.p027a.p028a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.constraintlayout.a.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/f.class */
public class C0519f implements AbstractC0517d {

    /* renamed from: d */
    AbstractC0533p f1954d;

    /* renamed from: f */
    int f1956f;

    /* renamed from: g */
    public int f1957g;

    /* renamed from: a */
    public AbstractC0517d f1951a = null;

    /* renamed from: b */
    public boolean f1952b = false;

    /* renamed from: c */
    public boolean f1953c = false;

    /* renamed from: e */
    EnumC0520a f1955e = EnumC0520a.UNKNOWN;

    /* renamed from: h */
    int f1958h = 1;

    /* renamed from: i */
    C0521g f1959i = null;

    /* renamed from: j */
    public boolean f1960j = false;

    /* renamed from: k */
    List<AbstractC0517d> f1961k = new ArrayList();

    /* renamed from: l */
    List<C0519f> f1962l = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/f$a.class */
    public enum EnumC0520a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public C0519f(AbstractC0533p abstractC0533p) {
        this.f1954d = abstractC0533p;
    }

    /* renamed from: a */
    public final void m45354a() {
        this.f1962l.clear();
        this.f1961k.clear();
        this.f1960j = false;
        this.f1957g = 0;
        this.f1953c = false;
        this.f1952b = false;
    }

    /* renamed from: a */
    public void mo45352a(int i) {
        if (this.f1960j) {
            return;
        }
        this.f1960j = true;
        this.f1957g = i;
        for (AbstractC0517d abstractC0517d : this.f1961k) {
            abstractC0517d.mo45317d();
        }
    }

    /* renamed from: a */
    public final void m45353a(AbstractC0517d abstractC0517d) {
        this.f1961k.add(abstractC0517d);
        if (this.f1960j) {
            abstractC0517d.mo45317d();
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.AbstractC0517d
    /* renamed from: d */
    public final void mo45317d() {
        for (C0519f c0519f : this.f1962l) {
            if (!c0519f.f1960j) {
                return;
            }
        }
        this.f1953c = true;
        AbstractC0517d abstractC0517d = this.f1951a;
        if (abstractC0517d != null) {
            abstractC0517d.mo45317d();
        }
        if (this.f1952b) {
            this.f1954d.mo45317d();
            return;
        }
        C0519f c0519f2 = null;
        int i = 0;
        for (C0519f c0519f3 : this.f1962l) {
            if (!(c0519f3 instanceof C0521g)) {
                i++;
                c0519f2 = c0519f3;
            }
        }
        if (c0519f2 != null && i == 1 && c0519f2.f1960j) {
            C0521g c0521g = this.f1959i;
            if (c0521g != null) {
                if (!c0521g.f1960j) {
                    return;
                }
                this.f1956f = this.f1958h * this.f1959i.f1957g;
            }
            mo45352a(c0519f2.f1957g + this.f1956f);
        }
        AbstractC0517d abstractC0517d2 = this.f1951a;
        if (abstractC0517d2 == null) {
            return;
        }
        abstractC0517d2.mo45317d();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1954d.f1994d.f2092al);
        sb.append(":");
        sb.append(this.f1955e);
        sb.append("(");
        sb.append(this.f1960j ? Integer.valueOf(this.f1957g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.f1962l.size());
        sb.append(":d=");
        sb.append(this.f1961k.size());
        sb.append(">");
        return sb.toString();
    }
}
