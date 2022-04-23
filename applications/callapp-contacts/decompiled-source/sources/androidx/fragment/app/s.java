package androidx.fragment.app;

import androidx.lifecycle.j;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private final g f2322a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f2323b;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<a> f2324d;
    int e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    boolean k;
    String l;
    int m;
    CharSequence n;
    int o;
    CharSequence p;
    ArrayList<String> q;
    ArrayList<String> r;
    boolean s;
    ArrayList<Runnable> t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f2325a;

        /* renamed from: b  reason: collision with root package name */
        Fragment f2326b;

        /* renamed from: c  reason: collision with root package name */
        int f2327c;

        /* renamed from: d  reason: collision with root package name */
        int f2328d;
        int e;
        int f;
        j.b g;
        j.b h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i, Fragment fragment) {
            this.f2325a = i;
            this.f2326b = fragment;
            this.g = j.b.RESUMED;
            this.h = j.b.RESUMED;
        }

        a(int i, Fragment fragment, j.b bVar) {
            this.f2325a = i;
            this.f2326b = fragment;
            this.g = fragment.mMaxState;
            this.h = bVar;
        }
    }

    @Deprecated
    public s() {
        this.f2324d = new ArrayList<>();
        this.k = true;
        this.s = false;
        this.f2322a = null;
        this.f2323b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(g gVar, ClassLoader classLoader) {
        this.f2324d = new ArrayList<>();
        this.k = true;
        this.s = false;
        this.f2322a = gVar;
        this.f2323b = classLoader;
    }

    public final s a(int i, Fragment fragment) {
        a(i, fragment, null, 1);
        return this;
    }

    public final s a(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    public s a(Fragment fragment) {
        b(new a(3, fragment));
        return this;
    }

    public s a(Fragment fragment, j.b bVar) {
        b(new a(10, fragment, bVar));
        return this;
    }

    public final s a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            if (fragment.mTag == null || str.equals(fragment.mTag)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            } else if (fragment.mFragmentId == 0 || fragment.mFragmentId == i) {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
        }
        b(new a(i2, fragment));
    }

    public abstract int b();

    public final s b(int i, Fragment fragment, String str) {
        if (i != 0) {
            a(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    public s b(Fragment fragment) {
        b(new a(6, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(a aVar) {
        this.f2324d.add(aVar);
        aVar.f2327c = this.e;
        aVar.f2328d = this.f;
        aVar.e = this.g;
        aVar.f = this.h;
    }

    public abstract int c();

    public final s c(Fragment fragment) {
        b(new a(7, fragment));
        return this;
    }

    public abstract void d();

    public abstract void e();

    public boolean h() {
        return this.f2324d.isEmpty();
    }

    public final s i() {
        this.e = 2130772017;
        this.f = 2130772018;
        this.g = 0;
        this.h = 0;
        return this;
    }

    public final s j() {
        if (!this.j) {
            this.k = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }
}
