package androidx.fragment.app;

import androidx.lifecycle.AbstractC0516f;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.i0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i0.class */
public abstract class AbstractC0438i0 {

    /* renamed from: b */
    public int f1823b;

    /* renamed from: c */
    public int f1824c;

    /* renamed from: d */
    public int f1825d;

    /* renamed from: e */
    public int f1826e;

    /* renamed from: f */
    public int f1827f;

    /* renamed from: g */
    public boolean f1828g;

    /* renamed from: i */
    public String f1830i;

    /* renamed from: j */
    public int f1831j;

    /* renamed from: k */
    public CharSequence f1832k;

    /* renamed from: l */
    public int f1833l;

    /* renamed from: m */
    public CharSequence f1834m;

    /* renamed from: n */
    public ArrayList<String> f1835n;

    /* renamed from: o */
    public ArrayList<String> f1836o;

    /* renamed from: a */
    public ArrayList<C0439a> f1822a = new ArrayList<>();

    /* renamed from: h */
    public boolean f1829h = true;

    /* renamed from: p */
    public boolean f1837p = false;

    /* renamed from: androidx.fragment.app.i0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i0$a.class */
    public static final class C0439a {

        /* renamed from: a */
        public int f1838a;

        /* renamed from: b */
        public Fragment f1839b;

        /* renamed from: c */
        public int f1840c;

        /* renamed from: d */
        public int f1841d;

        /* renamed from: e */
        public int f1842e;

        /* renamed from: f */
        public int f1843f;

        /* renamed from: g */
        public AbstractC0516f.EnumC0519c f1844g;

        /* renamed from: h */
        public AbstractC0516f.EnumC0519c f1845h;

        public C0439a() {
        }

        public C0439a(int i, Fragment fragment) {
            this.f1838a = i;
            this.f1839b = fragment;
            AbstractC0516f.EnumC0519c enumC0519c = AbstractC0516f.EnumC0519c.RESUMED;
            this.f1844g = enumC0519c;
            this.f1845h = enumC0519c;
        }
    }

    public AbstractC0438i0(C0483w c0483w, ClassLoader classLoader) {
    }

    /* renamed from: b */
    public void m8098b(C0439a c0439a) {
        this.f1822a.add(c0439a);
        c0439a.f1840c = this.f1823b;
        c0439a.f1841d = this.f1824c;
        c0439a.f1842e = this.f1825d;
        c0439a.f1843f = this.f1826e;
    }

    /* renamed from: c */
    public abstract int mo8097c();

    /* renamed from: d */
    public abstract void mo8096d(int i, Fragment fragment, String str, int i2);

    /* renamed from: e */
    public AbstractC0438i0 m8095e(int i, Fragment fragment, String str) {
        if (i != 0) {
            mo8096d(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }
}
