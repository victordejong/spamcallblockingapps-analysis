package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.h;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/j.class */
public final class j extends p {
    public j(e eVar) {
        super(eVar);
        eVar.i.c();
        eVar.j.c();
        this.h = ((h) eVar).aI;
    }

    private void a(f fVar) {
        this.j.k.add(fVar);
        fVar.l.add(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void c() {
        this.j.a();
    }

    @Override // androidx.constraintlayout.a.a.a.p, androidx.constraintlayout.a.a.a.d
    public final void d() {
        if (this.j.f1332c && !this.j.j) {
            this.j.a((int) ((this.j.l.get(0).g * ((h) this.f1353d).d()) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final void e() {
        if (((h) this.f1353d).aI == 1) {
            this.f1353d.e(this.j.g);
        } else {
            this.f1353d.f(this.j.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void f() {
        h hVar = (h) this.f1353d;
        int e = hVar.e();
        int f = hVar.f();
        hVar.d();
        if (hVar.aI == 1) {
            if (e != -1) {
                this.j.l.add(this.f1353d.S.i.j);
                this.f1353d.S.i.j.k.add(this.j);
                this.j.f = e;
            } else if (f != -1) {
                this.j.l.add(this.f1353d.S.i.k);
                this.f1353d.S.i.k.k.add(this.j);
                this.j.f = -f;
            } else {
                this.j.f1331b = true;
                this.j.l.add(this.f1353d.S.i.k);
                this.f1353d.S.i.k.k.add(this.j);
            }
            a(this.f1353d.i.j);
            a(this.f1353d.i.k);
            return;
        }
        if (e != -1) {
            this.j.l.add(this.f1353d.S.j.j);
            this.f1353d.S.j.j.k.add(this.j);
            this.j.f = e;
        } else if (f != -1) {
            this.j.l.add(this.f1353d.S.j.k);
            this.f1353d.S.j.k.k.add(this.j);
            this.j.f = -f;
        } else {
            this.j.f1331b = true;
            this.j.l.add(this.f1353d.S.j.k);
            this.f1353d.S.j.k.k.add(this.j);
        }
        a(this.f1353d.j.j);
        a(this.f1353d.j.k);
    }
}
