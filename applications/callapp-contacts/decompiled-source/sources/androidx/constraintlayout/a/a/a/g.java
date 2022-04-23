package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a.f;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/g.class */
public class g extends f {
    public int m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.a.a.a.f
    public final void a(int i) {
        if (!this.j) {
            this.j = true;
            this.g = i;
            for (d dVar : this.k) {
                dVar.d();
            }
        }
    }
}
