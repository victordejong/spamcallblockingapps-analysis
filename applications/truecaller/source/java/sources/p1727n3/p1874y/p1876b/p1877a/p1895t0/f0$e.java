package p1727n3.p1874y.p1876b.p1877a.p1895t0;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.C27414x;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27155c;
/* renamed from: n3.y.b.a.t0.f0$e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/f0$e.class */
public final class f0$e implements AbstractC27342j0 {

    /* renamed from: a */
    public final int f76919a;

    /* renamed from: b */
    public final /* synthetic */ f0 f76920b;

    public f0$e(f0 f0Var, int i) {
        this.f76920b = f0Var;
        this.f76919a = i;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: a */
    public void mo491a() throws IOException {
        f0 f0Var = this.f76920b;
        f0Var.t[this.f76919a].m486b();
        f0Var.j.m408d(f0Var.d.b(f0Var.z));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: b */
    public boolean mo490b() {
        f0 f0Var = this.f76920b;
        return !f0Var.B() && f0Var.t[this.f76919a].m487a(f0Var.O);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: c */
    public int mo489c(long j) {
        f0 f0Var = this.f76920b;
        int i = this.f76919a;
        int i2 = 0;
        int i3 = 0;
        if (!f0Var.B()) {
            f0Var.x(i);
            i0 i0Var = f0Var.s[i];
            if (!f0Var.O || j <= i0Var.j()) {
                int e = i0Var.e(j, true, true);
                if (e != -1) {
                    i3 = e;
                }
            } else {
                i3 = i0Var.f();
            }
            i2 = i3;
            if (i3 == 0) {
                f0Var.y(i);
                i2 = i3;
            }
        }
        return i2;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0
    /* renamed from: d */
    public int mo488d(C27414x c27414x, C27155c c27155c, boolean z) {
        f0 f0Var = this.f76920b;
        int i = this.f76919a;
        int i2 = -3;
        if (!f0Var.B()) {
            f0Var.x(i);
            i2 = f0Var.t[i].m485c(c27414x, c27155c, z, f0Var.O, f0Var.K);
            if (i2 == -3) {
                f0Var.y(i);
            }
        }
        return i2;
    }
}
