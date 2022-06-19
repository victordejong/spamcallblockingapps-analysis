package p237t;

import java.util.ArrayList;
import p237t.C4344d;
/* renamed from: t.b */
/* loaded from: classes-dex2jar.jar:t/b.class */
public class C4341b implements C4344d.AbstractC4345a {

    /* renamed from: d */
    public AbstractC4342a f13536d;

    /* renamed from: a */
    public C4351h f13533a = null;

    /* renamed from: b */
    public float f13534b = 0.0f;

    /* renamed from: c */
    public ArrayList<C4351h> f13535c = new ArrayList<>();

    /* renamed from: e */
    public boolean f13537e = false;

    /* renamed from: t.b$a */
    /* loaded from: classes-dex2jar.jar:t/b$a.class */
    public interface AbstractC4342a {
        /* renamed from: a */
        float mo1062a(int i);

        /* renamed from: b */
        float mo1061b(C4341b c4341b, boolean z);

        /* renamed from: c */
        float mo1060c(C4351h c4351h, boolean z);

        void clear();

        /* renamed from: d */
        void mo1059d(C4351h c4351h, float f);

        /* renamed from: e */
        float mo1058e(C4351h c4351h);

        /* renamed from: f */
        int mo1057f();

        /* renamed from: g */
        boolean mo1056g(C4351h c4351h);

        /* renamed from: h */
        C4351h mo1055h(int i);

        /* renamed from: i */
        void mo1054i(float f);

        /* renamed from: j */
        void mo1053j(C4351h c4351h, float f, boolean z);

        /* renamed from: k */
        void mo1052k();
    }

    public C4341b() {
    }

    public C4341b(C4343c c4343c) {
        this.f13536d = new C4340a(this, c4343c);
    }

    @Override // p237t.C4344d.AbstractC4345a
    /* renamed from: a */
    public C4351h mo1028a(C4344d c4344d, boolean[] zArr) {
        return m1065i(zArr, null);
    }

    @Override // p237t.C4344d.AbstractC4345a
    /* renamed from: b */
    public void mo1027b(C4351h c4351h) {
        float f;
        int i = c4351h.f13573d;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
            this.f13536d.mo1059d(c4351h, f);
        }
        f = 1.0f;
        this.f13536d.mo1059d(c4351h, f);
    }

    /* renamed from: c */
    public C4341b m1071c(C4344d c4344d, int i) {
        this.f13536d.mo1059d(c4344d.m1041k(i, "ep"), 1.0f);
        this.f13536d.mo1059d(c4344d.m1041k(i, "em"), -1.0f);
        return this;
    }

    @Override // p237t.C4344d.AbstractC4345a
    public void clear() {
        this.f13536d.clear();
        this.f13533a = null;
        this.f13534b = 0.0f;
    }

    /* renamed from: d */
    public C4341b m1070d(C4351h c4351h, C4351h c4351h2, C4351h c4351h3, C4351h c4351h4, float f) {
        this.f13536d.mo1059d(c4351h, -1.0f);
        this.f13536d.mo1059d(c4351h2, 1.0f);
        this.f13536d.mo1059d(c4351h3, f);
        this.f13536d.mo1059d(c4351h4, -f);
        return this;
    }

    /* renamed from: e */
    public C4341b m1069e(C4351h c4351h, C4351h c4351h2, C4351h c4351h3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f13534b = i2;
        }
        if (!z) {
            this.f13536d.mo1059d(c4351h, -1.0f);
            this.f13536d.mo1059d(c4351h2, 1.0f);
            this.f13536d.mo1059d(c4351h3, 1.0f);
        } else {
            this.f13536d.mo1059d(c4351h, 1.0f);
            this.f13536d.mo1059d(c4351h2, -1.0f);
            this.f13536d.mo1059d(c4351h3, -1.0f);
        }
        return this;
    }

    /* renamed from: f */
    public C4341b m1068f(C4351h c4351h, C4351h c4351h2, C4351h c4351h3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f13534b = i2;
        }
        if (!z) {
            this.f13536d.mo1059d(c4351h, -1.0f);
            this.f13536d.mo1059d(c4351h2, 1.0f);
            this.f13536d.mo1059d(c4351h3, -1.0f);
        } else {
            this.f13536d.mo1059d(c4351h, 1.0f);
            this.f13536d.mo1059d(c4351h2, -1.0f);
            this.f13536d.mo1059d(c4351h3, 1.0f);
        }
        return this;
    }

    /* renamed from: g */
    public C4341b m1067g(C4351h c4351h, C4351h c4351h2, C4351h c4351h3, C4351h c4351h4, float f) {
        this.f13536d.mo1059d(c4351h3, 0.5f);
        this.f13536d.mo1059d(c4351h4, 0.5f);
        this.f13536d.mo1059d(c4351h, -0.5f);
        this.f13536d.mo1059d(c4351h2, -0.5f);
        this.f13534b = -f;
        return this;
    }

    /* renamed from: h */
    public final boolean m1066h(C4351h c4351h) {
        boolean z = true;
        if (c4351h.f13581l > 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public final C4351h m1065i(boolean[] zArr, C4351h c4351h) {
        int mo1057f = this.f13536d.mo1057f();
        C4351h c4351h2 = null;
        int i = 0;
        float f = 0.0f;
        while (true) {
            float f2 = f;
            if (i < mo1057f) {
                float mo1062a = this.f13536d.mo1062a(i);
                C4351h c4351h3 = c4351h2;
                float f3 = f2;
                if (mo1062a < 0.0f) {
                    C4351h mo1055h = this.f13536d.mo1055h(i);
                    if (zArr != null) {
                        c4351h3 = c4351h2;
                        f3 = f2;
                        if (zArr[mo1055h.f13571b]) {
                        }
                    }
                    c4351h3 = c4351h2;
                    f3 = f2;
                    if (mo1055h != c4351h) {
                        int i2 = mo1055h.f13578i;
                        if (i2 != 3) {
                            c4351h3 = c4351h2;
                            f3 = f2;
                            if (i2 != 4) {
                            }
                        }
                        c4351h3 = c4351h2;
                        f3 = f2;
                        if (mo1062a < f2) {
                            f3 = mo1062a;
                            c4351h3 = mo1055h;
                        }
                    }
                }
                i++;
                c4351h2 = c4351h3;
                f = f3;
            } else {
                return c4351h2;
            }
        }
    }

    @Override // p237t.C4344d.AbstractC4345a
    public boolean isEmpty() {
        return this.f13533a == null && this.f13534b == 0.0f && this.f13536d.mo1057f() == 0;
    }

    /* renamed from: j */
    public void m1064j(C4351h c4351h) {
        C4351h c4351h2 = this.f13533a;
        if (c4351h2 != null) {
            this.f13536d.mo1059d(c4351h2, -1.0f);
            this.f13533a.f13572c = -1;
            this.f13533a = null;
        }
        float mo1060c = this.f13536d.mo1060c(c4351h, true) * (-1.0f);
        this.f13533a = c4351h;
        if (mo1060c == 1.0f) {
            return;
        }
        this.f13534b /= mo1060c;
        this.f13536d.mo1054i(mo1060c);
    }

    /* renamed from: k */
    public void m1063k(C4344d c4344d, C4351h c4351h, boolean z) {
        if (!c4351h.f13575f) {
            return;
        }
        float mo1058e = this.f13536d.mo1058e(c4351h);
        this.f13534b = (c4351h.f13574e * mo1058e) + this.f13534b;
        this.f13536d.mo1060c(c4351h, z);
        if (z) {
            c4351h.m1018b(this);
        }
        if (this.f13536d.mo1057f() != 0) {
            return;
        }
        this.f13537e = true;
        c4344d.f13545a = true;
    }

    /* renamed from: l */
    public void mo1026l(C4344d c4344d, C4341b c4341b, boolean z) {
        float mo1061b = this.f13536d.mo1061b(c4341b, z);
        this.f13534b = (c4341b.f13534b * mo1061b) + this.f13534b;
        if (z) {
            c4341b.f13533a.m1018b(this);
        }
        if (this.f13533a == null || this.f13536d.mo1057f() != 0) {
            return;
        }
        this.f13537e = true;
        c4344d.f13545a = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237t.C4341b.toString():java.lang.String");
    }
}
