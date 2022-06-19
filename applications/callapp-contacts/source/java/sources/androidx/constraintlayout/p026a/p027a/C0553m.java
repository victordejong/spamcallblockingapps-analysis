package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0556c;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.a.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/m.class */
public class C0553m extends C0541e {

    /* renamed from: be */
    public ArrayList<C0541e> f2231be = new ArrayList<>();

    public C0553m() {
    }

    public C0553m(int i, int i2) {
        super(i, i2);
    }

    public C0553m(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    /* renamed from: a */
    public final void m45165a(C0541e c0541e) {
        this.f2231be.add(c0541e);
        if (c0541e.f2060S != null) {
            ((C0553m) c0541e.f2060S).m45163b(c0541e);
        }
        c0541e.f2060S = this;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45164a(C0556c c0556c) {
        super.mo45164a(c0556c);
        int size = this.f2231be.size();
        for (int i = 0; i < size; i++) {
            this.f2231be.get(i).mo45164a(c0556c);
        }
    }

    /* renamed from: b */
    public final void m45163b(C0541e c0541e) {
        this.f2231be.remove(c0541e);
        c0541e.mo45162k();
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: k */
    public void mo45162k() {
        this.f2231be.clear();
        super.mo45162k();
    }

    /* renamed from: z */
    public void mo45161z() {
        ArrayList<C0541e> arrayList = this.f2231be;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0541e c0541e = this.f2231be.get(i);
            if (c0541e instanceof C0553m) {
                ((C0553m) c0541e).mo45161z();
            }
        }
    }
}
