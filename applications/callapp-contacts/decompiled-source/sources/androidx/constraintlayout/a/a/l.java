package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.a.b;
import androidx.constraintlayout.a.a.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/l.class */
public class l extends j {
    public int aZ = 0;
    public int ba = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f1392a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1393b = 0;
    public int bb = 0;
    public int bc = 0;
    public int bd = 0;
    public int be = 0;
    public boolean bf = false;
    public int bg = 0;
    public int bh = 0;
    protected b.a bi = new b.a();
    b.AbstractC0032b bj = null;

    public void a(int i, int i2, int i3, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(e eVar, e.a aVar, int i, e.a aVar2, int i2) {
        while (this.bj == null && this.S != null) {
            this.bj = ((f) this.S).f();
        }
        this.bi.f1323d = aVar;
        this.bi.e = aVar2;
        this.bi.f = i;
        this.bi.g = i2;
        this.bj.a(eVar, this.bi);
        eVar.g(this.bi.h);
        eVar.h(this.bi.i);
        eVar.C = this.bi.k;
        eVar.k(this.bi.j);
    }

    public final void d() {
        for (int i = 0; i < this.aY; i++) {
            e eVar = this.aX[i];
            if (eVar != null) {
                eVar.E = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e() {
        b.AbstractC0032b f = this.S != null ? ((f) this.S).f() : null;
        if (f == null) {
            return false;
        }
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.aY) {
                return true;
            }
            e eVar = this.aX[i];
            if (eVar != null && !(eVar instanceof h)) {
                e.a l = eVar.l(0);
                e.a l2 = eVar.l(1);
                if (l != e.a.MATCH_CONSTRAINT || eVar.o == 1 || l2 != e.a.MATCH_CONSTRAINT || eVar.p == 1) {
                    z = false;
                }
                if (!z) {
                    e.a aVar = l;
                    if (l == e.a.MATCH_CONSTRAINT) {
                        aVar = e.a.WRAP_CONTENT;
                    }
                    e.a aVar2 = l2;
                    if (l2 == e.a.MATCH_CONSTRAINT) {
                        aVar2 = e.a.WRAP_CONTENT;
                    }
                    this.bi.f1323d = aVar;
                    this.bi.e = aVar2;
                    this.bi.f = eVar.o();
                    this.bi.g = eVar.p();
                    f.a(eVar, this.bi);
                    eVar.g(this.bi.h);
                    eVar.h(this.bi.i);
                    eVar.k(this.bi.j);
                }
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.a.a.j, androidx.constraintlayout.a.a.i
    public final void f_() {
        d();
    }

    public final void g(int i, int i2) {
        this.bg = i;
        this.bh = i2;
    }

    public final void p(int i) {
        this.f1392a = i;
        this.aZ = i;
        this.f1393b = i;
        this.ba = i;
        this.bb = i;
        this.bc = i;
    }

    public final void q(int i) {
        this.f1392a = i;
        this.bd = i;
    }

    public final void r(int i) {
        this.f1393b = i;
        this.be = i;
    }
}
