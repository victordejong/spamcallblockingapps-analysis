package p258v;

import java.util.ArrayList;
import p237t.C4343c;
/* renamed from: v.j */
/* loaded from: classes-dex2jar.jar:v/j.class */
public class C4572j extends C4566d {

    /* renamed from: r0 */
    public ArrayList<C4566d> f14146r0 = new ArrayList<>();

    @Override // p258v.C4566d
    /* renamed from: F */
    public void mo766F() {
        this.f14146r0.clear();
        super.mo766F();
    }

    @Override // p258v.C4566d
    /* renamed from: H */
    public void mo765H(C4343c c4343c) {
        super.mo765H(c4343c);
        int size = this.f14146r0.size();
        for (int i = 0; i < size; i++) {
            this.f14146r0.get(i).mo765H(c4343c);
        }
    }

    /* renamed from: V */
    public void mo764V() {
        ArrayList<C4566d> arrayList = this.f14146r0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C4566d c4566d = this.f14146r0.get(i);
            if (c4566d instanceof C4572j) {
                ((C4572j) c4566d).mo764V();
            }
        }
    }
}
