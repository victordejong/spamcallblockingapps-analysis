package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.p028a.C0519f;
/* renamed from: androidx.constraintlayout.a.a.a.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/g.class */
public class C0521g extends C0519f {

    /* renamed from: m */
    public int f1963m;

    public C0521g(AbstractC0533p abstractC0533p) {
        super(abstractC0533p);
        if (abstractC0533p instanceof C0526l) {
            this.f1955e = C0519f.EnumC0520a.HORIZONTAL_DIMENSION;
        } else {
            this.f1955e = C0519f.EnumC0520a.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.p028a.C0519f
    /* renamed from: a */
    public final void mo45352a(int i) {
        if (this.f1960j) {
            return;
        }
        this.f1960j = true;
        this.f1957g = i;
        for (AbstractC0517d abstractC0517d : this.f1961k) {
            abstractC0517d.mo45317d();
        }
    }
}
