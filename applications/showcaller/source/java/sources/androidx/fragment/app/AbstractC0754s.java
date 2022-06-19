package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public abstract class AbstractC0754s {

    /* renamed from: a */
    private final C0737g f3548a;

    /* renamed from: b */
    private final ClassLoader f3549b;

    /* renamed from: d */
    int f3551d;

    /* renamed from: e */
    int f3552e;

    /* renamed from: f */
    int f3553f;

    /* renamed from: g */
    int f3554g;

    /* renamed from: h */
    int f3555h;

    /* renamed from: i */
    boolean f3556i;

    /* renamed from: k */
    String f3558k;

    /* renamed from: l */
    int f3559l;

    /* renamed from: m */
    CharSequence f3560m;

    /* renamed from: n */
    int f3561n;

    /* renamed from: o */
    CharSequence f3562o;

    /* renamed from: p */
    ArrayList<String> f3563p;

    /* renamed from: q */
    ArrayList<String> f3564q;

    /* renamed from: s */
    ArrayList<Runnable> f3566s;

    /* renamed from: c */
    ArrayList<C0755a> f3550c = new ArrayList<>();

    /* renamed from: j */
    boolean f3557j = true;

    /* renamed from: r */
    boolean f3565r = false;

    /* renamed from: androidx.fragment.app.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$a.class */
    public static final class C0755a {

        /* renamed from: a */
        int f3567a;

        /* renamed from: b */
        Fragment f3568b;

        /* renamed from: c */
        int f3569c;

        /* renamed from: d */
        int f3570d;

        /* renamed from: e */
        int f3571e;

        /* renamed from: f */
        int f3572f;

        /* renamed from: g */
        Lifecycle.State f3573g;

        /* renamed from: h */
        Lifecycle.State f3574h;

        public C0755a() {
        }

        public C0755a(int i, Fragment fragment) {
            this.f3567a = i;
            this.f3568b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f3573g = state;
            this.f3574h = state;
        }

        C0755a(int i, Fragment fragment, Lifecycle.State state) {
            this.f3567a = i;
            this.f3568b = fragment;
            this.f3573g = fragment.f3211V;
            this.f3574h = state;
        }
    }

    public AbstractC0754s(C0737g c0737g, ClassLoader classLoader) {
        this.f3548a = c0737g;
        this.f3549b = classLoader;
    }

    /* renamed from: b */
    public AbstractC0754s m32509b(int i, Fragment fragment) {
        mo32497n(i, fragment, null, 1);
        return this;
    }

    /* renamed from: c */
    public AbstractC0754s m32508c(int i, Fragment fragment, String str) {
        mo32497n(i, fragment, str, 1);
        return this;
    }

    /* renamed from: d */
    public AbstractC0754s m32507d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.f3200K = viewGroup;
        return m32508c(viewGroup.getId(), fragment, str);
    }

    /* renamed from: e */
    public AbstractC0754s m32506e(Fragment fragment, String str) {
        mo32497n(0, fragment, str, 1);
        return this;
    }

    /* renamed from: f */
    public void m32505f(C0755a c0755a) {
        this.f3550c.add(c0755a);
        c0755a.f3569c = this.f3551d;
        c0755a.f3570d = this.f3552e;
        c0755a.f3571e = this.f3553f;
        c0755a.f3572f = this.f3554g;
    }

    /* renamed from: g */
    public AbstractC0754s m32504g(Fragment fragment) {
        m32505f(new C0755a(7, fragment));
        return this;
    }

    /* renamed from: h */
    public abstract int mo32503h();

    /* renamed from: i */
    public abstract int mo32502i();

    /* renamed from: j */
    public abstract void mo32501j();

    /* renamed from: k */
    public abstract void mo32500k();

    /* renamed from: l */
    public AbstractC0754s mo32499l(Fragment fragment) {
        m32505f(new C0755a(6, fragment));
        return this;
    }

    /* renamed from: m */
    public AbstractC0754s m32498m() {
        if (!this.f3556i) {
            this.f3557j = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: n */
    public void mo32497n(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.f3192C;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f3192C + " now " + str);
            }
            fragment.f3192C = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.f3190A;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f3190A + " now " + i);
            }
            fragment.f3190A = i;
            fragment.f3191B = i;
        }
        m32505f(new C0755a(i2, fragment));
    }

    /* renamed from: o */
    public AbstractC0754s mo32496o(Fragment fragment) {
        m32505f(new C0755a(3, fragment));
        return this;
    }

    /* renamed from: p */
    public AbstractC0754s m32495p(int i, Fragment fragment) {
        return m32494q(i, fragment, null);
    }

    /* renamed from: q */
    public AbstractC0754s m32494q(int i, Fragment fragment, String str) {
        if (i != 0) {
            mo32497n(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    /* renamed from: r */
    public AbstractC0754s mo32493r(Fragment fragment, Lifecycle.State state) {
        m32505f(new C0755a(10, fragment, state));
        return this;
    }

    /* renamed from: s */
    public AbstractC0754s m32492s(boolean z) {
        this.f3565r = z;
        return this;
    }
}
