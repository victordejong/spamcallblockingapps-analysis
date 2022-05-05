package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransaction.class */
public abstract class FragmentTransaction {

    /* renamed from: b */
    int f3837b;

    /* renamed from: c */
    int f3838c;

    /* renamed from: d */
    int f3839d;

    /* renamed from: e */
    int f3840e;

    /* renamed from: f */
    int f3841f;

    /* renamed from: g */
    boolean f3842g;
    @Nullable

    /* renamed from: i */
    String f3844i;

    /* renamed from: j */
    int f3845j;

    /* renamed from: k */
    CharSequence f3846k;

    /* renamed from: l */
    int f3847l;

    /* renamed from: m */
    CharSequence f3848m;

    /* renamed from: n */
    ArrayList<String> f3849n;

    /* renamed from: o */
    ArrayList<String> f3850o;

    /* renamed from: q */
    ArrayList<Runnable> f3852q;

    /* renamed from: a */
    ArrayList<C0335Op> f3836a = new ArrayList<>();

    /* renamed from: h */
    boolean f3843h = true;

    /* renamed from: p */
    boolean f3851p = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentTransaction$Op */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransaction$Op.class */
    public static final class C0335Op {

        /* renamed from: a */
        int f3853a;

        /* renamed from: b */
        Fragment f3854b;

        /* renamed from: c */
        int f3855c;

        /* renamed from: d */
        int f3856d;

        /* renamed from: e */
        int f3857e;

        /* renamed from: f */
        int f3858f;

        /* renamed from: g */
        Lifecycle.State f3859g;

        /* renamed from: h */
        Lifecycle.State f3860h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0335Op() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0335Op(int i, Fragment fragment) {
            this.f3853a = i;
            this.f3854b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f3859g = state;
            this.f3860h = state;
        }

        C0335Op(int i, @NonNull Fragment fragment, Lifecycle.State state) {
            this.f3853a = i;
            this.f3854b = fragment;
            this.f3859g = fragment.mMaxState;
            this.f3860h = state;
        }
    }

    @Deprecated
    public FragmentTransaction() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader) {
    }

    @NonNull
    /* renamed from: b */
    public FragmentTransaction m18346b(@IdRes int i, @NonNull Fragment fragment) {
        mo18333o(i, fragment, null, 1);
        return this;
    }

    @NonNull
    /* renamed from: c */
    public FragmentTransaction m18345c(@IdRes int i, @NonNull Fragment fragment, @Nullable String str) {
        mo18333o(i, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public FragmentTransaction m18344d(@NonNull ViewGroup viewGroup, @NonNull Fragment fragment, @Nullable String str) {
        fragment.mContainer = viewGroup;
        m18345c(viewGroup.getId(), fragment, str);
        return this;
    }

    @NonNull
    /* renamed from: e */
    public FragmentTransaction m18343e(@NonNull Fragment fragment, @Nullable String str) {
        mo18333o(0, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m18342f(C0335Op op) {
        this.f3836a.add(op);
        op.f3855c = this.f3837b;
        op.f3856d = this.f3838c;
        op.f3857e = this.f3839d;
        op.f3858f = this.f3840e;
    }

    @NonNull
    /* renamed from: g */
    public FragmentTransaction m18341g(@Nullable String str) {
        if (this.f3843h) {
            this.f3842g = true;
            this.f3844i = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    @NonNull
    /* renamed from: h */
    public FragmentTransaction m18340h(@NonNull Fragment fragment) {
        m18342f(new C0335Op(7, fragment));
        return this;
    }

    /* renamed from: i */
    public abstract int mo18339i();

    /* renamed from: j */
    public abstract int mo18338j();

    /* renamed from: k */
    public abstract void mo18337k();

    /* renamed from: l */
    public abstract void mo18336l();

    @NonNull
    /* renamed from: m */
    public FragmentTransaction mo18335m(@NonNull Fragment fragment) {
        m18342f(new C0335Op(6, fragment));
        return this;
    }

    @NonNull
    /* renamed from: n */
    public FragmentTransaction m18334n() {
        if (!this.f3842g) {
            this.f3843h = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void mo18333o(int i, Fragment fragment, @Nullable String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 == null || str.equals(str2)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
        }
        if (i != 0) {
            if (i != -1) {
                int i3 = fragment.mFragmentId;
                if (i3 == 0 || i3 == i) {
                    fragment.mFragmentId = i;
                    fragment.mContainerId = i;
                } else {
                    throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
                }
            } else {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
        }
        m18342f(new C0335Op(i2, fragment));
    }

    /* renamed from: p */
    public boolean mo18332p() {
        return this.f3836a.isEmpty();
    }

    @NonNull
    /* renamed from: q */
    public FragmentTransaction mo18331q(@NonNull Fragment fragment) {
        m18342f(new C0335Op(3, fragment));
        return this;
    }

    @NonNull
    /* renamed from: r */
    public FragmentTransaction m18330r(@IdRes int i, @NonNull Fragment fragment) {
        m18329s(i, fragment, null);
        return this;
    }

    @NonNull
    /* renamed from: s */
    public FragmentTransaction m18329s(@IdRes int i, @NonNull Fragment fragment, @Nullable String str) {
        if (i != 0) {
            mo18333o(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    @NonNull
    /* renamed from: t */
    public FragmentTransaction mo18328t(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        m18342f(new C0335Op(10, fragment, state));
        return this;
    }

    @NonNull
    /* renamed from: u */
    public FragmentTransaction m18327u(boolean z) {
        this.f3851p = z;
        return this;
    }
}
