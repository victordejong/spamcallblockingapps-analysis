package p1727n3.p1795i.p1799b.p1800h;

import java.util.ArrayList;
import p1727n3.p1795i.p1799b.C26354c;
/* renamed from: n3.i.b.h.l */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/l.class */
public class C26369l extends C26363d {

    /* renamed from: H0 */
    public ArrayList<C26363d> f73777H0 = new ArrayList<>();

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: G */
    public void mo2037G() {
        this.f73777H0.clear();
        super.mo2037G();
    }

    @Override // p1727n3.p1795i.p1799b.p1800h.C26363d
    /* renamed from: J */
    public void mo2036J(C26354c c26354c) {
        super.mo2036J(c26354c);
        int size = this.f73777H0.size();
        for (int i = 0; i < size; i++) {
            this.f73777H0.get(i).mo2036J(c26354c);
        }
    }

    /* renamed from: V */
    public void m2035V() {
        ArrayList<C26363d> arrayList = this.f73777H0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C26363d c26363d = this.f73777H0.get(i);
            if (c26363d instanceof C26369l) {
                ((C26369l) c26363d).m2035V();
            }
        }
    }
}
