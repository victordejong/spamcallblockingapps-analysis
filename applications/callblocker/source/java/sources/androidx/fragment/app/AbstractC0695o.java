package androidx.fragment.app;

import androidx.lifecycle.AbstractC0864e;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o.class */
public abstract class AbstractC0695o {

    /* renamed from: e */
    int f2473e;

    /* renamed from: f */
    int f2474f;

    /* renamed from: g */
    int f2475g;

    /* renamed from: h */
    int f2476h;

    /* renamed from: i */
    int f2477i;

    /* renamed from: j */
    int f2478j;

    /* renamed from: k */
    boolean f2479k;

    /* renamed from: m */
    String f2481m;

    /* renamed from: n */
    int f2482n;

    /* renamed from: o */
    CharSequence f2483o;

    /* renamed from: p */
    int f2484p;

    /* renamed from: q */
    CharSequence f2485q;

    /* renamed from: r */
    ArrayList<String> f2486r;

    /* renamed from: s */
    ArrayList<String> f2487s;

    /* renamed from: u */
    ArrayList<Runnable> f2489u;

    /* renamed from: d */
    ArrayList<C0696a> f2472d = new ArrayList<>();

    /* renamed from: l */
    boolean f2480l = true;

    /* renamed from: t */
    boolean f2488t = false;

    /* renamed from: androidx.fragment.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/o$a.class */
    public static final class C0696a {

        /* renamed from: a */
        int f2490a;

        /* renamed from: b */
        Fragment f2491b;

        /* renamed from: c */
        int f2492c;

        /* renamed from: d */
        int f2493d;

        /* renamed from: e */
        int f2494e;

        /* renamed from: f */
        int f2495f;

        /* renamed from: g */
        AbstractC0864e.EnumC0866b f2496g;

        /* renamed from: h */
        AbstractC0864e.EnumC0866b f2497h;

        public C0696a() {
        }

        public C0696a(int i, Fragment fragment) {
            this.f2490a = i;
            this.f2491b = fragment;
            this.f2496g = AbstractC0864e.EnumC0866b.RESUMED;
            this.f2497h = AbstractC0864e.EnumC0866b.RESUMED;
        }

        C0696a(int i, Fragment fragment, AbstractC0864e.EnumC0866b enumC0866b) {
            this.f2490a = i;
            this.f2491b = fragment;
            this.f2496g = fragment.f2279Z;
            this.f2497h = enumC0866b;
        }
    }

    /* renamed from: a */
    public AbstractC0695o m19666a(int i, int i2) {
        return m19665a(i, i2, 0, 0);
    }

    /* renamed from: a */
    public AbstractC0695o m19665a(int i, int i2, int i3, int i4) {
        this.f2473e = i;
        this.f2474f = i2;
        this.f2475g = i3;
        this.f2476h = i4;
        return this;
    }

    /* renamed from: a */
    public AbstractC0695o m19664a(int i, Fragment fragment) {
        mo19662a(i, fragment, (String) null, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC0695o m19663a(int i, Fragment fragment, String str) {
        mo19662a(i, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC0695o mo19661a(Fragment fragment) {
        m19658a(new C0696a(3, fragment));
        return this;
    }

    /* renamed from: a */
    public AbstractC0695o mo19660a(Fragment fragment, AbstractC0864e.EnumC0866b enumC0866b) {
        m19658a(new C0696a(10, fragment, enumC0866b));
        return this;
    }

    /* renamed from: a */
    public AbstractC0695o m19659a(Fragment fragment, String str) {
        mo19662a(0, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public void mo19662a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (fragment.f2260G != null && !str.equals(fragment.f2260G)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f2260G + " now " + str);
            }
            fragment.f2260G = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            if (fragment.f2258E != 0 && fragment.f2258E != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f2258E + " now " + i);
            }
            fragment.f2258E = i;
            fragment.f2259F = i;
        }
        m19658a(new C0696a(i2, fragment));
    }

    /* renamed from: a */
    public void m19658a(C0696a c0696a) {
        this.f2472d.add(c0696a);
        c0696a.f2492c = this.f2473e;
        c0696a.f2493d = this.f2474f;
        c0696a.f2494e = this.f2475g;
        c0696a.f2495f = this.f2476h;
    }

    /* renamed from: b */
    public abstract int mo19657b();

    /* renamed from: b */
    public AbstractC0695o m19656b(int i, Fragment fragment) {
        return m19655b(i, fragment, null);
    }

    /* renamed from: b */
    public AbstractC0695o m19655b(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        mo19662a(i, fragment, str, 2);
        return this;
    }

    /* renamed from: b */
    public AbstractC0695o mo19654b(Fragment fragment) {
        m19658a(new C0696a(4, fragment));
        return this;
    }

    /* renamed from: c */
    public abstract int mo19653c();

    /* renamed from: c */
    public AbstractC0695o mo19652c(Fragment fragment) {
        m19658a(new C0696a(5, fragment));
        return this;
    }

    /* renamed from: d */
    public AbstractC0695o mo19650d(Fragment fragment) {
        m19658a(new C0696a(6, fragment));
        return this;
    }

    /* renamed from: d */
    public abstract void mo19651d();

    /* renamed from: e */
    public AbstractC0695o m19648e(Fragment fragment) {
        m19658a(new C0696a(7, fragment));
        return this;
    }

    /* renamed from: e */
    public abstract void mo19649e();

    /* renamed from: i */
    public boolean mo19647i() {
        return this.f2472d.isEmpty();
    }

    /* renamed from: j */
    public AbstractC0695o m19646j() {
        if (this.f2479k) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f2480l = false;
        return this;
    }
}
