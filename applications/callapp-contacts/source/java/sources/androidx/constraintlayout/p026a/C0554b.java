package androidx.constraintlayout.p026a;

import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.C0567h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/b.class */
public class C0554b implements C0557d.AbstractC0558a {

    /* renamed from: e */
    public AbstractC0555a f2236e;

    /* renamed from: a */
    C0567h f2232a = null;

    /* renamed from: b */
    public float f2233b = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c */
    boolean f2234c = false;

    /* renamed from: d */
    ArrayList<C0567h> f2235d = new ArrayList<>();

    /* renamed from: f */
    boolean f2237f = false;

    /* renamed from: androidx.constraintlayout.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/b$a.class */
    public interface AbstractC0555a {
        /* renamed from: a */
        float mo45102a(C0554b c0554b, boolean z);

        /* renamed from: a */
        float mo45097a(C0567h c0567h, boolean z);

        /* renamed from: a */
        C0567h mo45104a(int i);

        /* renamed from: a */
        void mo45106a();

        /* renamed from: a */
        void mo45105a(float f);

        /* renamed from: a */
        void mo45100a(C0567h c0567h, float f);

        /* renamed from: a */
        void mo45099a(C0567h c0567h, float f, boolean z);

        /* renamed from: a */
        boolean mo45101a(C0567h c0567h);

        /* renamed from: b */
        float mo45095b(int i);

        /* renamed from: b */
        float mo45094b(C0567h c0567h);

        /* renamed from: b */
        void mo45096b();

        /* renamed from: c */
        int mo45093c();
    }

    public C0554b() {
    }

    public C0554b(C0556c c0556c) {
        this.f2236e = new C0510a(this, c0556c);
    }

    /* renamed from: b */
    public static boolean m45153b(C0567h c0567h) {
        return c0567h.f2330l <= 1;
    }

    /* renamed from: a */
    public final C0554b m45159a(C0557d c0557d, int i) {
        this.f2236e.mo45100a(c0557d.m45148a(i, "ep"), 1.0f);
        this.f2236e.mo45100a(c0557d.m45148a(i, "em"), -1.0f);
        return this;
    }

    /* renamed from: a */
    public final C0554b m45156a(C0567h c0567h, C0567h c0567h2, C0567h c0567h3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2233b = i2;
        }
        if (!z) {
            this.f2236e.mo45100a(c0567h, -1.0f);
            this.f2236e.mo45100a(c0567h2, 1.0f);
            this.f2236e.mo45100a(c0567h3, 1.0f);
        } else {
            this.f2236e.mo45100a(c0567h, 1.0f);
            this.f2236e.mo45100a(c0567h2, -1.0f);
            this.f2236e.mo45100a(c0567h3, -1.0f);
        }
        return this;
    }

    /* renamed from: a */
    public final C0554b m45155a(C0567h c0567h, C0567h c0567h2, C0567h c0567h3, C0567h c0567h4, float f) {
        this.f2236e.mo45100a(c0567h, -1.0f);
        this.f2236e.mo45100a(c0567h2, 1.0f);
        this.f2236e.mo45100a(c0567h3, f);
        this.f2236e.mo45100a(c0567h4, -f);
        return this;
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: a */
    public C0567h mo45118a(boolean[] zArr) {
        return m45154a(zArr, (C0567h) null);
    }

    /* renamed from: a */
    public final C0567h m45154a(boolean[] zArr, C0567h c0567h) {
        int mo45093c = this.f2236e.mo45093c();
        C0567h c0567h2 = null;
        int i = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            float f2 = f;
            if (i < mo45093c) {
                float mo45095b = this.f2236e.mo45095b(i);
                C0567h c0567h3 = c0567h2;
                float f3 = f2;
                if (mo45095b < BitmapDescriptorFactory.HUE_RED) {
                    C0567h mo45104a = this.f2236e.mo45104a(i);
                    if (zArr != null) {
                        c0567h3 = c0567h2;
                        f3 = f2;
                        if (zArr[mo45104a.f2320b]) {
                        }
                    }
                    c0567h3 = c0567h2;
                    f3 = f2;
                    if (mo45104a != c0567h) {
                        if (mo45104a.f2327i != C0567h.EnumC0568a.SLACK) {
                            c0567h3 = c0567h2;
                            f3 = f2;
                            if (mo45104a.f2327i != C0567h.EnumC0568a.ERROR) {
                            }
                        }
                        c0567h3 = c0567h2;
                        f3 = f2;
                        if (mo45095b < f2) {
                            f3 = mo45095b;
                            c0567h3 = mo45104a;
                        }
                    }
                }
                i++;
                c0567h2 = c0567h3;
                f = f3;
            } else {
                return c0567h2;
            }
        }
    }

    /* renamed from: a */
    public final void m45160a() {
        this.f2232a = null;
        this.f2236e.mo45106a();
        this.f2233b = BitmapDescriptorFactory.HUE_RED;
        this.f2237f = false;
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: a */
    public final void mo45124a(C0557d.AbstractC0558a abstractC0558a) {
        if (abstractC0558a instanceof C0554b) {
            C0554b c0554b = (C0554b) abstractC0558a;
            this.f2232a = null;
            this.f2236e.mo45106a();
            for (int i = 0; i < c0554b.f2236e.mo45093c(); i++) {
                this.f2236e.mo45099a(c0554b.f2236e.mo45104a(i), c0554b.f2236e.mo45095b(i), true);
            }
        }
    }

    /* renamed from: a */
    public void mo45119a(C0557d c0557d, C0554b c0554b, boolean z) {
        this.f2233b += c0554b.f2233b * this.f2236e.mo45102a(c0554b, z);
        if (z) {
            c0554b.f2232a.m45107b(this);
        }
        if (!C0557d.f2244c || this.f2232a == null || this.f2236e.mo45093c() != 0) {
            return;
        }
        this.f2237f = true;
        c0557d.f2253g = true;
    }

    /* renamed from: a */
    public final void m45158a(C0557d c0557d, C0567h c0567h, boolean z) {
        if (!c0567h.f2324f) {
            return;
        }
        this.f2233b += c0567h.f2323e * this.f2236e.mo45094b(c0567h);
        this.f2236e.mo45097a(c0567h, z);
        if (z) {
            c0567h.m45107b(this);
        }
        if (!C0557d.f2244c || c0567h == null || this.f2236e.mo45093c() != 0) {
            return;
        }
        this.f2237f = true;
        c0557d.f2253g = true;
    }

    /* renamed from: a */
    public final boolean m45157a(C0567h c0567h) {
        return this.f2236e.mo45101a(c0567h);
    }

    /* renamed from: b */
    public final C0554b m45152b(C0567h c0567h, C0567h c0567h2, C0567h c0567h3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f2233b = i2;
        }
        if (!z) {
            this.f2236e.mo45100a(c0567h, -1.0f);
            this.f2236e.mo45100a(c0567h2, 1.0f);
            this.f2236e.mo45100a(c0567h3, -1.0f);
        } else {
            this.f2236e.mo45100a(c0567h, 1.0f);
            this.f2236e.mo45100a(c0567h2, -1.0f);
            this.f2236e.mo45100a(c0567h3, 1.0f);
        }
        return this;
    }

    /* renamed from: b */
    public final C0554b m45151b(C0567h c0567h, C0567h c0567h2, C0567h c0567h3, C0567h c0567h4, float f) {
        this.f2236e.mo45100a(c0567h3, 0.5f);
        this.f2236e.mo45100a(c0567h4, 0.5f);
        this.f2236e.mo45100a(c0567h, -0.5f);
        this.f2236e.mo45100a(c0567h2, -0.5f);
        this.f2233b = -f;
        return this;
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: b */
    public boolean mo45117b() {
        return this.f2232a == null && this.f2233b == BitmapDescriptorFactory.HUE_RED && this.f2236e.mo45093c() == 0;
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: c */
    public void mo45116c() {
        this.f2236e.mo45106a();
        this.f2232a = null;
        this.f2233b = BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: c */
    public final void m45150c(C0567h c0567h) {
        C0567h c0567h2 = this.f2232a;
        if (c0567h2 != null) {
            this.f2236e.mo45100a(c0567h2, -1.0f);
            this.f2232a.f2321c = -1;
            this.f2232a = null;
        }
        float mo45097a = this.f2236e.mo45097a(c0567h, true) * (-1.0f);
        this.f2232a = c0567h;
        if (mo45097a == 1.0f) {
            return;
        }
        this.f2233b /= mo45097a;
        this.f2236e.mo45105a(mo45097a);
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: d */
    public final C0567h mo45123d() {
        return this.f2232a;
    }

    @Override // androidx.constraintlayout.p026a.C0557d.AbstractC0558a
    /* renamed from: d */
    public void mo45115d(C0567h c0567h) {
        float f = 1.0f;
        if (c0567h.f2322d != 1) {
            if (c0567h.f2322d == 2) {
                f = 1000.0f;
            } else if (c0567h.f2322d == 3) {
                f = 1000000.0f;
            } else if (c0567h.f2322d == 4) {
                f = 1.0E9f;
            } else if (c0567h.f2322d == 5) {
                f = 1.0E12f;
            }
        }
        this.f2236e.mo45100a(c0567h, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x015c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.C0554b.toString():java.lang.String");
    }
}
