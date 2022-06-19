package androidx.fragment.app;

import androidx.lifecycle.AbstractC1253j;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public abstract class AbstractC1121s {

    /* renamed from: a */
    private final C1104g f4401a;

    /* renamed from: b */
    private final ClassLoader f4402b;

    /* renamed from: d */
    ArrayList<C1122a> f4403d;

    /* renamed from: e */
    int f4404e;

    /* renamed from: f */
    int f4405f;

    /* renamed from: g */
    int f4406g;

    /* renamed from: h */
    int f4407h;

    /* renamed from: i */
    int f4408i;

    /* renamed from: j */
    boolean f4409j;

    /* renamed from: k */
    boolean f4410k;

    /* renamed from: l */
    String f4411l;

    /* renamed from: m */
    int f4412m;

    /* renamed from: n */
    CharSequence f4413n;

    /* renamed from: o */
    int f4414o;

    /* renamed from: p */
    CharSequence f4415p;

    /* renamed from: q */
    ArrayList<String> f4416q;

    /* renamed from: r */
    ArrayList<String> f4417r;

    /* renamed from: s */
    boolean f4418s;

    /* renamed from: t */
    ArrayList<Runnable> f4419t;

    /* renamed from: androidx.fragment.app.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$a.class */
    public static final class C1122a {

        /* renamed from: a */
        int f4420a;

        /* renamed from: b */
        Fragment f4421b;

        /* renamed from: c */
        int f4422c;

        /* renamed from: d */
        int f4423d;

        /* renamed from: e */
        int f4424e;

        /* renamed from: f */
        int f4425f;

        /* renamed from: g */
        AbstractC1253j.EnumC1256b f4426g;

        /* renamed from: h */
        AbstractC1253j.EnumC1256b f4427h;

        public C1122a() {
        }

        public C1122a(int i, Fragment fragment) {
            this.f4420a = i;
            this.f4421b = fragment;
            this.f4426g = AbstractC1253j.EnumC1256b.RESUMED;
            this.f4427h = AbstractC1253j.EnumC1256b.RESUMED;
        }

        C1122a(int i, Fragment fragment, AbstractC1253j.EnumC1256b enumC1256b) {
            this.f4420a = i;
            this.f4421b = fragment;
            this.f4426g = fragment.mMaxState;
            this.f4427h = enumC1256b;
        }
    }

    @Deprecated
    public AbstractC1121s() {
        this.f4403d = new ArrayList<>();
        this.f4410k = true;
        this.f4418s = false;
        this.f4401a = null;
        this.f4402b = null;
    }

    public AbstractC1121s(C1104g c1104g, ClassLoader classLoader) {
        this.f4403d = new ArrayList<>();
        this.f4410k = true;
        this.f4418s = false;
        this.f4401a = c1104g;
        this.f4402b = classLoader;
    }

    /* renamed from: a */
    public final AbstractC1121s m43542a(int i, Fragment fragment) {
        mo43540a(i, fragment, null, 1);
        return this;
    }

    /* renamed from: a */
    public final AbstractC1121s m43541a(int i, Fragment fragment, String str) {
        mo43540a(i, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC1121s mo43539a(Fragment fragment) {
        m43533b(new C1122a(3, fragment));
        return this;
    }

    /* renamed from: a */
    public AbstractC1121s mo43538a(Fragment fragment, AbstractC1253j.EnumC1256b enumC1256b) {
        m43533b(new C1122a(10, fragment, enumC1256b));
        return this;
    }

    /* renamed from: a */
    public final AbstractC1121s m43537a(Fragment fragment, String str) {
        mo43540a(0, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public void mo43540a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (fragment.mTag != null && !str.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            } else if (fragment.mFragmentId != 0 && fragment.mFragmentId != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            } else {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            }
        }
        m43533b(new C1122a(i2, fragment));
    }

    /* renamed from: b */
    public abstract int mo43536b();

    /* renamed from: b */
    public final AbstractC1121s m43535b(int i, Fragment fragment, String str) {
        if (i != 0) {
            mo43540a(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    /* renamed from: b */
    public AbstractC1121s mo43534b(Fragment fragment) {
        m43533b(new C1122a(6, fragment));
        return this;
    }

    /* renamed from: b */
    public final void m43533b(C1122a c1122a) {
        this.f4403d.add(c1122a);
        c1122a.f4422c = this.f4404e;
        c1122a.f4423d = this.f4405f;
        c1122a.f4424e = this.f4406g;
        c1122a.f4425f = this.f4407h;
    }

    /* renamed from: c */
    public abstract int mo43532c();

    /* renamed from: c */
    public final AbstractC1121s m43531c(Fragment fragment) {
        m43533b(new C1122a(7, fragment));
        return this;
    }

    /* renamed from: d */
    public abstract void mo43530d();

    /* renamed from: e */
    public abstract void mo43529e();

    /* renamed from: h */
    public boolean mo43528h() {
        return this.f4403d.isEmpty();
    }

    /* renamed from: i */
    public final AbstractC1121s m43527i() {
        this.f4404e = 2130772017;
        this.f4405f = 2130772018;
        this.f4406g = 0;
        this.f4407h = 0;
        return this;
    }

    /* renamed from: j */
    public final AbstractC1121s m43526j() {
        if (!this.f4409j) {
            this.f4410k = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }
}
