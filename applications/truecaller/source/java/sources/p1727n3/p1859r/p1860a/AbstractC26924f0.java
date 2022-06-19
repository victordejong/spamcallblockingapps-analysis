package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import p1727n3.p1868v.AbstractC27028u;
/* renamed from: n3.r.a.f0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/f0.class */
public abstract class AbstractC26924f0 {

    /* renamed from: b */
    public int f75318b;

    /* renamed from: c */
    public int f75319c;

    /* renamed from: d */
    public int f75320d;

    /* renamed from: e */
    public int f75321e;

    /* renamed from: f */
    public int f75322f;

    /* renamed from: g */
    public boolean f75323g;

    /* renamed from: i */
    public String f75325i;

    /* renamed from: j */
    public int f75326j;

    /* renamed from: k */
    public CharSequence f75327k;

    /* renamed from: l */
    public int f75328l;

    /* renamed from: m */
    public CharSequence f75329m;

    /* renamed from: n */
    public ArrayList<String> f75330n;

    /* renamed from: o */
    public ArrayList<String> f75331o;

    /* renamed from: a */
    public ArrayList<C26925a> f75317a = new ArrayList<>();

    /* renamed from: h */
    public boolean f75324h = true;

    /* renamed from: p */
    public boolean f75332p = false;

    /* renamed from: n3.r.a.f0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/f0$a.class */
    public static final class C26925a {

        /* renamed from: a */
        public int f75333a;

        /* renamed from: b */
        public Fragment f75334b;

        /* renamed from: c */
        public int f75335c;

        /* renamed from: d */
        public int f75336d;

        /* renamed from: e */
        public int f75337e;

        /* renamed from: f */
        public int f75338f;

        /* renamed from: g */
        public AbstractC27028u.EnumC27030b f75339g;

        /* renamed from: h */
        public AbstractC27028u.EnumC27030b f75340h;

        public C26925a() {
        }

        public C26925a(int i, Fragment fragment) {
            this.f75333a = i;
            this.f75334b = fragment;
            AbstractC27028u.EnumC27030b enumC27030b = AbstractC27028u.EnumC27030b.RESUMED;
            this.f75339g = enumC27030b;
            this.f75340h = enumC27030b;
        }

        public C26925a(int i, Fragment fragment, AbstractC27028u.EnumC27030b enumC27030b) {
            this.f75333a = i;
            this.f75334b = fragment;
            this.f75339g = fragment.mMaxState;
            this.f75340h = enumC27030b;
        }
    }

    public AbstractC26924f0(C26957t c26957t, ClassLoader classLoader) {
    }

    /* renamed from: b */
    public AbstractC26924f0 m1131b(int i, Fragment fragment) {
        mo1122k(i, fragment, null, 1);
        return this;
    }

    /* renamed from: c */
    public AbstractC26924f0 m1130c(Fragment fragment, String str) {
        mo1122k(0, fragment, str, 1);
        return this;
    }

    /* renamed from: d */
    public void m1129d(C26925a c26925a) {
        this.f75317a.add(c26925a);
        c26925a.f75335c = this.f75318b;
        c26925a.f75336d = this.f75319c;
        c26925a.f75337e = this.f75320d;
        c26925a.f75338f = this.f75321e;
    }

    /* renamed from: e */
    public AbstractC26924f0 m1128e(String str) {
        if (this.f75324h) {
            this.f75323g = true;
            this.f75325i = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    /* renamed from: f */
    public abstract int mo1127f();

    /* renamed from: g */
    public abstract int mo1126g();

    /* renamed from: h */
    public abstract void mo1125h();

    /* renamed from: i */
    public abstract void mo1124i();

    /* renamed from: j */
    public AbstractC26924f0 m1123j() {
        if (!this.f75323g) {
            this.f75324h = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: k */
    public abstract void mo1122k(int i, Fragment fragment, String str, int i2);

    /* renamed from: l */
    public abstract AbstractC26924f0 mo1121l(Fragment fragment);

    /* renamed from: m */
    public AbstractC26924f0 m1120m(int i, Fragment fragment, String str) {
        if (i != 0) {
            mo1122k(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    /* renamed from: n */
    public AbstractC26924f0 m1119n(int i, int i2) {
        this.f75318b = i;
        this.f75319c = i2;
        this.f75320d = 0;
        this.f75321e = 0;
        return this;
    }

    /* renamed from: o */
    public AbstractC26924f0 m1118o(int i, int i2, int i3, int i4) {
        this.f75318b = i;
        this.f75319c = i2;
        this.f75320d = i3;
        this.f75321e = i4;
        return this;
    }

    /* renamed from: p */
    public abstract AbstractC26924f0 mo1117p(Fragment fragment, AbstractC27028u.EnumC27030b enumC27030b);
}
