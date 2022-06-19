package androidx.fragment.app;

import androidx.lifecycle.AbstractC0896g;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public abstract class AbstractC0738l {

    /* renamed from: e */
    int f2418e;

    /* renamed from: f */
    int f2419f;

    /* renamed from: g */
    int f2420g;

    /* renamed from: h */
    int f2421h;

    /* renamed from: i */
    int f2422i;

    /* renamed from: j */
    int f2423j;

    /* renamed from: k */
    boolean f2424k;

    /* renamed from: m */
    String f2426m;

    /* renamed from: n */
    int f2427n;

    /* renamed from: o */
    CharSequence f2428o;

    /* renamed from: p */
    int f2429p;

    /* renamed from: q */
    CharSequence f2430q;

    /* renamed from: r */
    ArrayList<String> f2431r;

    /* renamed from: s */
    ArrayList<String> f2432s;

    /* renamed from: u */
    ArrayList<Runnable> f2434u;

    /* renamed from: d */
    ArrayList<C0739a> f2417d = new ArrayList<>();

    /* renamed from: l */
    boolean f2425l = true;

    /* renamed from: t */
    boolean f2433t = false;

    /* renamed from: androidx.fragment.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$a.class */
    public static final class C0739a {

        /* renamed from: a */
        int f2435a;

        /* renamed from: b */
        Fragment f2436b;

        /* renamed from: c */
        int f2437c;

        /* renamed from: d */
        int f2438d;

        /* renamed from: e */
        int f2439e;

        /* renamed from: f */
        int f2440f;

        /* renamed from: g */
        AbstractC0896g.EnumC0898b f2441g;

        /* renamed from: h */
        AbstractC0896g.EnumC0898b f2442h;

        public C0739a() {
        }

        public C0739a(int i, Fragment fragment) {
            this.f2435a = i;
            this.f2436b = fragment;
            this.f2441g = AbstractC0896g.EnumC0898b.RESUMED;
            this.f2442h = AbstractC0896g.EnumC0898b.RESUMED;
        }

        C0739a(int i, Fragment fragment, AbstractC0896g.EnumC0898b enumC0898b) {
            this.f2435a = i;
            this.f2436b = fragment;
            this.f2441g = fragment.mMaxState;
            this.f2442h = enumC0898b;
        }
    }

    /* renamed from: a */
    public AbstractC0738l m5463a(int i, Fragment fragment) {
        mo5462a(i, fragment, null, 1);
        return this;
    }

    /* renamed from: a */
    public AbstractC0738l mo5461a(Fragment fragment) {
        m5458a(new C0739a(3, fragment));
        return this;
    }

    /* renamed from: a */
    public AbstractC0738l mo5460a(Fragment fragment, AbstractC0896g.EnumC0898b enumC0898b) {
        m5458a(new C0739a(10, fragment, enumC0898b));
        return this;
    }

    /* renamed from: a */
    public AbstractC0738l m5459a(Fragment fragment, String str) {
        mo5462a(0, fragment, str, 1);
        return this;
    }

    /* renamed from: a */
    public void mo5462a(int i, Fragment fragment, String str, int i2) {
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
        m5458a(new C0739a(i2, fragment));
    }

    /* renamed from: a */
    public void m5458a(C0739a c0739a) {
        this.f2417d.add(c0739a);
        c0739a.f2437c = this.f2418e;
        c0739a.f2438d = this.f2419f;
        c0739a.f2439e = this.f2420g;
        c0739a.f2440f = this.f2421h;
    }

    /* renamed from: b */
    public abstract int mo5457b();

    /* renamed from: c */
    public abstract int mo5456c();

    /* renamed from: d */
    public abstract void mo5455d();

    /* renamed from: e */
    public abstract void mo5454e();

    /* renamed from: i */
    public AbstractC0738l m5453i() {
        if (!this.f2424k) {
            this.f2425l = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }
}
