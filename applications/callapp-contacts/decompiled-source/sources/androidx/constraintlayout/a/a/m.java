package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.c;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/m.class */
public class m extends e {
    public ArrayList<e> be = new ArrayList<>();

    public m() {
    }

    public m(int i, int i2) {
        super(i, i2);
    }

    public m(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    public final void a(e eVar) {
        this.be.add(eVar);
        if (eVar.S != null) {
            ((m) eVar.S).b(eVar);
        }
        eVar.S = this;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(c cVar) {
        super.a(cVar);
        int size = this.be.size();
        for (int i = 0; i < size; i++) {
            this.be.get(i).a(cVar);
        }
    }

    public final void b(e eVar) {
        this.be.remove(eVar);
        eVar.k();
    }

    @Override // androidx.constraintlayout.a.a.e
    public void k() {
        this.be.clear();
        super.k();
    }

    public void z() {
        ArrayList<e> arrayList = this.be;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                e eVar = this.be.get(i);
                if (eVar instanceof m) {
                    ((m) eVar).z();
                }
            }
        }
    }
}
