package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public abstract class AbstractC0334p {

    /* renamed from: b */
    int f1937b;

    /* renamed from: c */
    int f1938c;

    /* renamed from: d */
    int f1939d;

    /* renamed from: e */
    int f1940e;

    /* renamed from: f */
    int f1941f;

    /* renamed from: g */
    boolean f1942g;

    /* renamed from: h */
    String f1943h;

    /* renamed from: i */
    int f1944i;

    /* renamed from: j */
    CharSequence f1945j;

    /* renamed from: k */
    int f1946k;

    /* renamed from: l */
    CharSequence f1947l;

    /* renamed from: m */
    ArrayList<String> f1948m;

    /* renamed from: n */
    ArrayList<String> f1949n;

    /* renamed from: p */
    ArrayList<Runnable> f1951p;

    /* renamed from: a */
    ArrayList<C0335a> f1936a = new ArrayList<>();

    /* renamed from: o */
    boolean f1950o = false;

    /* renamed from: androidx.fragment.app.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$a.class */
    public static final class C0335a {

        /* renamed from: a */
        int f1952a;

        /* renamed from: b */
        Fragment f1953b;

        /* renamed from: c */
        int f1954c;

        /* renamed from: d */
        int f1955d;

        /* renamed from: e */
        int f1956e;

        /* renamed from: f */
        int f1957f;

        /* renamed from: g */
        Lifecycle.State f1958g;

        /* renamed from: h */
        Lifecycle.State f1959h;

        public C0335a() {
        }

        C0335a(int i, Fragment fragment) {
            this.f1952a = i;
            this.f1953b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f1958g = state;
            this.f1959h = state;
        }

        C0335a(int i, Fragment fragment, Lifecycle.State state) {
            this.f1952a = i;
            this.f1953b = fragment;
            this.f1958g = fragment.Q;
            this.f1959h = state;
        }
    }

    AbstractC0334p(C0321f c0321f, ClassLoader classLoader) {
    }

    /* renamed from: b */
    public AbstractC0334p m13095b(int i, Fragment fragment, String str) {
        m13085l(i, fragment, str, 1);
        return this;
    }

    /* renamed from: c */
    public AbstractC0334p m13094c(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.G = viewGroup;
        m13095b(viewGroup.getId(), fragment, str);
        return this;
    }

    /* renamed from: d */
    public AbstractC0334p m13093d(Fragment fragment, String str) {
        m13085l(0, fragment, str, 1);
        return this;
    }

    /* renamed from: e */
    public void m13092e(C0335a c0335a) {
        this.f1936a.add(c0335a);
        c0335a.f1954c = this.f1937b;
        c0335a.f1955d = this.f1938c;
        c0335a.f1956e = this.f1939d;
        c0335a.f1957f = this.f1940e;
    }

    /* renamed from: f */
    public AbstractC0334p m13091f(Fragment fragment) {
        m13092e(new C0335a(7, fragment));
        return this;
    }

    /* renamed from: g */
    public abstract int m13090g();

    /* renamed from: h */
    public abstract int m13089h();

    /* renamed from: i */
    public abstract void m13088i();

    /* renamed from: j */
    public AbstractC0334p m13087j(Fragment fragment) {
        m13092e(new C0335a(6, fragment));
        return this;
    }

    /* renamed from: k */
    public AbstractC0334p m13086k() {
        if (!this.f1942g) {
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: l */
    void m13085l(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.y;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.y + " now " + str);
            }
            fragment.y = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.w;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.w + " now " + i);
            }
            fragment.w = i;
            fragment.x = i;
        }
        m13092e(new C0335a(i2, fragment));
    }

    /* renamed from: m */
    public AbstractC0334p m13084m(Fragment fragment) {
        m13092e(new C0335a(3, fragment));
        return this;
    }

    /* renamed from: n */
    public AbstractC0334p m13083n(Fragment fragment, Lifecycle.State state) {
        m13092e(new C0335a(10, fragment, state));
        return this;
    }

    /* renamed from: o */
    public AbstractC0334p m13082o(boolean z) {
        this.f1950o = z;
        return this;
    }
}
