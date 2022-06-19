package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0581n;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.C0798i;
import androidx.lifecycle.C0803m;
import androidx.lifecycle.C0814s;
import androidx.lifecycle.C0818t;
import androidx.lifecycle.C0820v;
import androidx.lifecycle.C0821w;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LiveData;
import androidx.savedstate.AbstractC1047c;
import androidx.savedstate.C1046b;
import androidx.savedstate.C1048d;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import p020b.p041h.p050l.C1653g;
import p020b.p065o.p066a.AbstractC1757a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC0797h, AbstractC0819u, AbstractC1047c {

    /* renamed from: d */
    static final Object f3189d = new Object();

    /* renamed from: A */
    int f3190A;

    /* renamed from: B */
    int f3191B;

    /* renamed from: C */
    String f3192C;

    /* renamed from: D */
    boolean f3193D;

    /* renamed from: E */
    boolean f3194E;

    /* renamed from: F */
    boolean f3195F;

    /* renamed from: G */
    boolean f3196G;

    /* renamed from: H */
    boolean f3197H;

    /* renamed from: J */
    private boolean f3199J;

    /* renamed from: K */
    ViewGroup f3200K;

    /* renamed from: L */
    View f3201L;

    /* renamed from: M */
    boolean f3202M;

    /* renamed from: O */
    C0673e f3204O;

    /* renamed from: Q */
    boolean f3206Q;

    /* renamed from: R */
    boolean f3207R;

    /* renamed from: S */
    float f3208S;

    /* renamed from: T */
    LayoutInflater f3209T;

    /* renamed from: U */
    boolean f3210U;

    /* renamed from: W */
    C0798i f3212W;

    /* renamed from: X */
    C0775w f3213X;

    /* renamed from: Z */
    C0814s.AbstractC0815a f3215Z;

    /* renamed from: a0 */
    C1046b f3216a0;

    /* renamed from: b0 */
    private int f3217b0;

    /* renamed from: f */
    Bundle f3221f;

    /* renamed from: g */
    SparseArray<Parcelable> f3222g;

    /* renamed from: h */
    Bundle f3223h;

    /* renamed from: i */
    Boolean f3224i;

    /* renamed from: k */
    Bundle f3226k;

    /* renamed from: l */
    Fragment f3227l;

    /* renamed from: n */
    int f3229n;

    /* renamed from: p */
    boolean f3231p;

    /* renamed from: q */
    boolean f3232q;

    /* renamed from: r */
    boolean f3233r;

    /* renamed from: s */
    boolean f3234s;

    /* renamed from: t */
    boolean f3235t;

    /* renamed from: u */
    boolean f3236u;

    /* renamed from: v */
    int f3237v;

    /* renamed from: w */
    FragmentManager f3238w;

    /* renamed from: x */
    AbstractC0738h<?> f3239x;

    /* renamed from: z */
    Fragment f3241z;

    /* renamed from: e */
    int f3220e = -1;

    /* renamed from: j */
    String f3225j = UUID.randomUUID().toString();

    /* renamed from: m */
    String f3228m = null;

    /* renamed from: o */
    private Boolean f3230o = null;

    /* renamed from: y */
    FragmentManager f3240y = new C0743k();

    /* renamed from: I */
    boolean f3198I = true;

    /* renamed from: N */
    boolean f3203N = true;

    /* renamed from: P */
    Runnable f3205P = new RunnableC0669a();

    /* renamed from: V */
    Lifecycle.State f3211V = Lifecycle.State.RESUMED;

    /* renamed from: Y */
    C0803m<AbstractC0797h> f3214Y = new C0803m<>();

    /* renamed from: c0 */
    private final AtomicInteger f3218c0 = new AtomicInteger();

    /* renamed from: d0 */
    private final ArrayList<AbstractC0674f> f3219d0 = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$InstantiationException.class */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0668a();

        /* renamed from: d */
        final Bundle f3243d;

        /* renamed from: androidx.fragment.app.Fragment$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$SavedState$a.class */
        class C0668a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0668a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Bundle bundle) {
            this.f3243d = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.f3243d = readBundle;
            if (classLoader == null || readBundle == null) {
                return;
            }
            readBundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f3243d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public class RunnableC0669a implements Runnable {
        RunnableC0669a() {
            Fragment.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m32935Z1();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public class RunnableC0670b implements Runnable {
        RunnableC0670b() {
            Fragment.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m32920j(false);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$c.class */
    public class RunnableC0671c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ SpecialEffectsController f3246d;

        RunnableC0671c(SpecialEffectsController specialEffectsController) {
            Fragment.this = r4;
            this.f3246d = specialEffectsController;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3246d.m32706g();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$d.class */
    public class C0672d extends AbstractC0735e {
        C0672d() {
            Fragment.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0735e
        /* renamed from: e */
        public View mo32596e(int i) {
            View view = Fragment.this.f3201L;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override // androidx.fragment.app.AbstractC0735e
        /* renamed from: f */
        public boolean mo32595f() {
            return Fragment.this.f3201L != null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$e.class */
    public static class C0673e {

        /* renamed from: a */
        View f3249a;

        /* renamed from: b */
        Animator f3250b;

        /* renamed from: c */
        boolean f3251c;

        /* renamed from: d */
        int f3252d;

        /* renamed from: e */
        int f3253e;

        /* renamed from: f */
        int f3254f;

        /* renamed from: g */
        int f3255g;

        /* renamed from: h */
        int f3256h;

        /* renamed from: i */
        ArrayList<String> f3257i;

        /* renamed from: j */
        ArrayList<String> f3258j;

        /* renamed from: l */
        Object f3260l;

        /* renamed from: n */
        Object f3262n;

        /* renamed from: p */
        Object f3264p;

        /* renamed from: q */
        Boolean f3265q;

        /* renamed from: r */
        Boolean f3266r;

        /* renamed from: s */
        AbstractC0581n f3267s;

        /* renamed from: t */
        AbstractC0581n f3268t;

        /* renamed from: w */
        boolean f3271w;

        /* renamed from: x */
        AbstractC0675g f3272x;

        /* renamed from: y */
        boolean f3273y;

        /* renamed from: k */
        Object f3259k = null;

        /* renamed from: m */
        Object f3261m = null;

        /* renamed from: o */
        Object f3263o = null;

        /* renamed from: u */
        float f3269u = 1.0f;

        /* renamed from: v */
        View f3270v = null;

        C0673e() {
            Object obj = Fragment.f3189d;
            this.f3260l = obj;
            this.f3262n = obj;
            this.f3264p = obj;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$f.class */
    public static abstract class AbstractC0674f {
        private AbstractC0674f() {
        }

        /* renamed from: a */
        abstract void m32878a();
    }

    /* renamed from: androidx.fragment.app.Fragment$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$g.class */
    public interface AbstractC0675g {
        /* renamed from: a */
        void mo32727a();

        /* renamed from: b */
        void mo32726b();
    }

    public Fragment() {
        m32924h0();
    }

    /* renamed from: G1 */
    private void m32982G1() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.f3201L != null) {
            m32980H1(this.f3221f);
        }
        this.f3221f = null;
    }

    /* renamed from: O */
    private int m32966O() {
        Lifecycle.State state = this.f3211V;
        return (state == Lifecycle.State.INITIALIZED || this.f3241z == null) ? state.ordinal() : Math.min(state.ordinal(), this.f3241z.m32966O());
    }

    /* renamed from: h0 */
    private void m32924h0() {
        this.f3212W = new C0798i(this);
        this.f3216a0 = C1046b.m31184a(this);
        this.f3215Z = null;
    }

    @Deprecated
    /* renamed from: j0 */
    public static Fragment m32919j0(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C0737g.m32597d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.m32971L1(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    /* renamed from: s */
    private C0673e m32902s() {
        if (this.f3204O == null) {
            this.f3204O = new C0673e();
        }
        return this.f3204O;
    }

    /* renamed from: A */
    public final FragmentManager m32999A() {
        if (this.f3239x != null) {
            return this.f3240y;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    /* renamed from: A0 */
    public boolean m32998A0(MenuItem menuItem) {
        return false;
    }

    /* renamed from: A1 */
    public void m32997A1() {
        this.f3240y.m32823T();
        if (this.f3201L != null) {
            this.f3213X.m32448b(Lifecycle.Event.ON_STOP);
        }
        this.f3212W.m32391h(Lifecycle.Event.ON_STOP);
        this.f3220e = 4;
        this.f3199J = false;
        mo4902b1();
        if (this.f3199J) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }

    /* renamed from: B */
    public Context m32996B() {
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        return abstractC0738h == null ? null : abstractC0738h.m32593h();
    }

    /* renamed from: B0 */
    public void mo4888B0(Bundle bundle) {
        this.f3199J = true;
        m32984F1(bundle);
        if (!this.f3240y.m32840K0(1)) {
            this.f3240y.m32857C();
        }
    }

    /* renamed from: B1 */
    public void m32995B1() {
        mo25018c1(this.f3201L, this.f3221f);
        this.f3240y.m32821U();
    }

    /* renamed from: C */
    public int m32994C() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 0;
        }
        return c0673e.f3252d;
    }

    /* renamed from: C0 */
    public Animation m32993C0(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: C1 */
    public final FragmentActivity m32992C1() {
        FragmentActivity m32896u = m32896u();
        if (m32896u != null) {
            return m32896u;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    /* renamed from: D */
    public Object m32991D() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3259k;
    }

    /* renamed from: D1 */
    public final Context m32990D1() {
        Context m32996B = m32996B();
        if (m32996B != null) {
            return m32996B;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    /* renamed from: E */
    public AbstractC0581n m32989E() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3267s;
    }

    /* renamed from: E0 */
    public Animator m32988E0(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: E1 */
    public final View m32987E1() {
        View m32928f0 = m32928f0();
        if (m32928f0 != null) {
            return m32928f0;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    /* renamed from: F */
    public int m32986F() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 0;
        }
        return c0673e.f3253e;
    }

    /* renamed from: F0 */
    public void m32985F0(Menu menu, MenuInflater menuInflater) {
    }

    /* renamed from: F1 */
    public void m32984F1(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.f3240y.m32792f1(parcelable);
        this.f3240y.m32857C();
    }

    /* renamed from: G */
    public Object m32983G() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3261m;
    }

    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f3217b0;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    /* renamed from: H */
    public AbstractC0581n m32981H() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3268t;
    }

    /* renamed from: H0 */
    public void mo17304H0() {
        this.f3199J = true;
    }

    /* renamed from: H1 */
    final void m32980H1(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f3222g;
        if (sparseArray != null) {
            this.f3201L.restoreHierarchyState(sparseArray);
            this.f3222g = null;
        }
        if (this.f3201L != null) {
            this.f3213X.m32445f(this.f3223h);
            this.f3223h = null;
        }
        this.f3199J = false;
        mo32644d1(bundle);
        if (this.f3199J) {
            if (this.f3201L == null) {
                return;
            }
            this.f3213X.m32448b(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }

    /* renamed from: I */
    public View m32979I() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3270v;
    }

    /* renamed from: I0 */
    public void m32978I0() {
    }

    /* renamed from: I1 */
    public void m32977I1(View view) {
        m32902s().f3249a = view;
    }

    @Deprecated
    /* renamed from: J */
    public final FragmentManager m32976J() {
        return this.f3238w;
    }

    /* renamed from: J1 */
    public void m32975J1(int i, int i2, int i3, int i4) {
        if (this.f3204O == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        m32902s().f3252d = i;
        m32902s().f3253e = i2;
        m32902s().f3254f = i3;
        m32902s().f3255g = i4;
    }

    /* renamed from: K */
    public final Object m32974K() {
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        return abstractC0738h == null ? null : abstractC0738h.mo32590l();
    }

    /* renamed from: K0 */
    public void mo25114K0() {
        this.f3199J = true;
    }

    /* renamed from: K1 */
    public void m32973K1(Animator animator) {
        m32902s().f3250b = animator;
    }

    /* renamed from: L */
    public final LayoutInflater m32972L() {
        LayoutInflater layoutInflater = this.f3209T;
        LayoutInflater layoutInflater2 = layoutInflater;
        if (layoutInflater == null) {
            layoutInflater2 = m32909o1(null);
        }
        return layoutInflater2;
    }

    /* renamed from: L0 */
    public void mo22801L0() {
        this.f3199J = true;
    }

    /* renamed from: L1 */
    public void m32971L1(Bundle bundle) {
        if (this.f3238w == null || !m32898t0()) {
            this.f3226k = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    @Deprecated
    /* renamed from: M */
    public LayoutInflater m32970M(Bundle bundle) {
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        if (abstractC0738h != null) {
            LayoutInflater mo32589m = abstractC0738h.mo32589m();
            C1653g.m29426b(mo32589m, this.f3240y.m32748v0());
            return mo32589m;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    /* renamed from: M0 */
    public LayoutInflater mo32648M0(Bundle bundle) {
        return m32970M(bundle);
    }

    /* renamed from: M1 */
    public void m32969M1(View view) {
        m32902s().f3270v = view;
    }

    /* renamed from: N0 */
    public void m32968N0(boolean z) {
    }

    /* renamed from: N1 */
    public void m32967N1(boolean z) {
        m32902s().f3273y = z;
    }

    @Deprecated
    /* renamed from: O0 */
    public void m32965O0(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f3199J = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r5 != null) goto L9;
     */
    /* renamed from: O1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m32964O1(androidx.fragment.app.Fragment.SavedState r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.fragment.app.FragmentManager r0 = r0.f3238w
            if (r0 != 0) goto L1f
            r0 = r5
            if (r0 == 0) goto L17
            r0 = r5
            android.os.Bundle r0 = r0.f3243d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = 0
            r5 = r0
        L19:
            r0 = r4
            r1 = r5
            r0.f3221f = r1
            return
        L1f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment already added"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Fragment.m32964O1(androidx.fragment.app.Fragment$SavedState):void");
    }

    /* renamed from: P */
    public int m32963P() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 0;
        }
        return c0673e.f3256h;
    }

    /* renamed from: P0 */
    public void m32962P0(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f3199J = true;
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        Activity m32594g = abstractC0738h == null ? null : abstractC0738h.m32594g();
        if (m32594g != null) {
            this.f3199J = false;
            m32965O0(m32594g, attributeSet, bundle);
        }
    }

    /* renamed from: P1 */
    public void m32961P1(boolean z) {
        if (this.f3198I != z) {
            this.f3198I = z;
            if (!this.f3197H || !m32917k0() || m32914m0()) {
                return;
            }
            this.f3239x.mo32586q();
        }
    }

    /* renamed from: Q */
    public final Fragment m32960Q() {
        return this.f3241z;
    }

    /* renamed from: Q0 */
    public void m32959Q0(boolean z) {
    }

    /* renamed from: Q1 */
    public void m32958Q1(int i) {
        if (this.f3204O == null && i == 0) {
            return;
        }
        m32902s();
        this.f3204O.f3256h = i;
    }

    /* renamed from: R */
    public final FragmentManager m32957R() {
        FragmentManager fragmentManager = this.f3238w;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    /* renamed from: R0 */
    public boolean m32956R0(MenuItem menuItem) {
        return false;
    }

    /* renamed from: R1 */
    public void m32955R1(AbstractC0675g abstractC0675g) {
        m32902s();
        C0673e c0673e = this.f3204O;
        AbstractC0675g abstractC0675g2 = c0673e.f3272x;
        if (abstractC0675g == abstractC0675g2) {
            return;
        }
        if (abstractC0675g != null && abstractC0675g2 != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (c0673e.f3271w) {
            c0673e.f3272x = abstractC0675g;
        }
        if (abstractC0675g == null) {
            return;
        }
        abstractC0675g.mo32727a();
    }

    /* renamed from: S */
    public boolean m32954S() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return false;
        }
        return c0673e.f3251c;
    }

    /* renamed from: S0 */
    public void m32953S0(Menu menu) {
    }

    /* renamed from: S1 */
    public void m32952S1(boolean z) {
        if (this.f3204O == null) {
            return;
        }
        m32902s().f3251c = z;
    }

    /* renamed from: T */
    public int m32951T() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 0;
        }
        return c0673e.f3254f;
    }

    /* renamed from: T0 */
    public void mo25021T0() {
        this.f3199J = true;
    }

    /* renamed from: T1 */
    public void m32950T1(float f) {
        m32902s().f3269u = f;
    }

    /* renamed from: U */
    public int m32949U() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 0;
        }
        return c0673e.f3255g;
    }

    /* renamed from: U0 */
    public void m32948U0(boolean z) {
    }

    /* renamed from: U1 */
    public void m32947U1(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        m32902s();
        C0673e c0673e = this.f3204O;
        c0673e.f3257i = arrayList;
        c0673e.f3258j = arrayList2;
    }

    /* renamed from: V */
    public float m32946V() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return 1.0f;
        }
        return c0673e.f3269u;
    }

    /* renamed from: V0 */
    public void m32945V0(Menu menu) {
    }

    @Deprecated
    /* renamed from: V1 */
    public void mo26766V1(boolean z) {
        if (!this.f3203N && z && this.f3220e < 5 && this.f3238w != null && m32917k0() && this.f3210U) {
            FragmentManager fragmentManager = this.f3238w;
            fragmentManager.m32820U0(fragmentManager.m32749v(this));
        }
        this.f3203N = z;
        this.f3202M = this.f3220e < 5 && !z;
        if (this.f3221f != null) {
            this.f3224i = Boolean.valueOf(z);
        }
    }

    /* renamed from: W */
    public Object m32944W() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        Object obj = c0673e.f3262n;
        Object obj2 = obj;
        if (obj == f3189d) {
            obj2 = m32983G();
        }
        return obj2;
    }

    /* renamed from: W0 */
    public void m32943W0(boolean z) {
    }

    /* renamed from: W1 */
    public void m32942W1(@SuppressLint({"UnknownNullness"}) Intent intent) {
        m32939X1(intent, null);
    }

    /* renamed from: X */
    public final Resources m32941X() {
        return m32990D1().getResources();
    }

    @Deprecated
    /* renamed from: X0 */
    public void m32940X0(int i, String[] strArr, int[] iArr) {
    }

    /* renamed from: X1 */
    public void m32939X1(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        if (abstractC0738h != null) {
            abstractC0738h.m32587o(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: Y */
    public Object m32938Y() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        Object obj = c0673e.f3260l;
        Object obj2 = obj;
        if (obj == f3189d) {
            obj2 = m32991D();
        }
        return obj2;
    }

    /* renamed from: Y0 */
    public void mo17303Y0() {
        this.f3199J = true;
    }

    @Deprecated
    /* renamed from: Y1 */
    public void m32937Y1(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.f3239x != null) {
            m32957R().m32836M0(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    /* renamed from: Z */
    public Object m32936Z() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3263o;
    }

    /* renamed from: Z0 */
    public void mo4886Z0(Bundle bundle) {
    }

    /* renamed from: Z1 */
    public void m32935Z1() {
        if (this.f3204O == null || !m32902s().f3271w) {
            return;
        }
        if (this.f3239x == null) {
            m32902s().f3271w = false;
        } else if (Looper.myLooper() != this.f3239x.m32592i().getLooper()) {
            this.f3239x.m32592i().postAtFrontOfQueue(new RunnableC0670b());
        } else {
            m32920j(true);
        }
    }

    @Override // androidx.lifecycle.AbstractC0797h
    /* renamed from: a */
    public Lifecycle mo32372a() {
        return this.f3212W;
    }

    /* renamed from: a0 */
    public Object m32934a0() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        Object obj = c0673e.f3264p;
        Object obj2 = obj;
        if (obj == f3189d) {
            obj2 = m32936Z();
        }
        return obj2;
    }

    /* renamed from: a1 */
    public void mo4903a1() {
        this.f3199J = true;
    }

    /* renamed from: b0 */
    public ArrayList<String> m32933b0() {
        ArrayList<String> arrayList;
        C0673e c0673e = this.f3204O;
        return (c0673e == null || (arrayList = c0673e.f3257i) == null) ? new ArrayList<>() : arrayList;
    }

    /* renamed from: b1 */
    public void mo4902b1() {
        this.f3199J = true;
    }

    /* renamed from: c0 */
    public ArrayList<String> m32932c0() {
        ArrayList<String> arrayList;
        C0673e c0673e = this.f3204O;
        return (c0673e == null || (arrayList = c0673e.f3258j) == null) ? new ArrayList<>() : arrayList;
    }

    /* renamed from: c1 */
    public void mo25018c1(View view, Bundle bundle) {
    }

    /* renamed from: d0 */
    public final String m32931d0(int i) {
        return m32941X().getString(i);
    }

    /* renamed from: d1 */
    public void mo32644d1(Bundle bundle) {
        this.f3199J = true;
    }

    @Deprecated
    /* renamed from: e0 */
    public final Fragment m32930e0() {
        String str;
        Fragment fragment = this.f3227l;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.f3238w;
        if (fragmentManager != null && (str = this.f3228m) != null) {
            return fragmentManager.m32790g0(str);
        }
        return null;
    }

    /* renamed from: e1 */
    public void m32929e1(Bundle bundle) {
        this.f3240y.m32824S0();
        this.f3220e = 3;
        this.f3199J = false;
        mo26781v0(bundle);
        if (this.f3199J) {
            m32982G1();
            this.f3240y.m32743y();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* renamed from: f0 */
    public View m32928f0() {
        return this.f3201L;
    }

    /* renamed from: f1 */
    public void m32927f1() {
        Iterator<AbstractC0674f> it = this.f3219d0.iterator();
        while (it.hasNext()) {
            it.next().m32878a();
        }
        this.f3219d0.clear();
        this.f3240y.m32782j(this.f3239x, mo32632o(), this);
        this.f3220e = 0;
        this.f3199J = false;
        mo22787y0(this.f3239x.m32593h());
        if (this.f3199J) {
            this.f3238w.m32845I(this);
            this.f3240y.m32741z();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onAttach()");
    }

    /* renamed from: g0 */
    public LiveData<AbstractC0797h> m32926g0() {
        return this.f3214Y;
    }

    /* renamed from: g1 */
    public void m32925g1(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f3240y.m32861A(configuration);
    }

    /* renamed from: h1 */
    public boolean m32923h1(MenuItem menuItem) {
        if (!this.f3193D) {
            if (!m32998A0(menuItem)) {
                return this.f3240y.m32859B(menuItem);
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* renamed from: i0 */
    public void m32922i0() {
        m32924h0();
        this.f3225j = UUID.randomUUID().toString();
        this.f3231p = false;
        this.f3232q = false;
        this.f3233r = false;
        this.f3234s = false;
        this.f3235t = false;
        this.f3237v = 0;
        this.f3238w = null;
        this.f3240y = new C0743k();
        this.f3239x = null;
        this.f3190A = 0;
        this.f3191B = 0;
        this.f3192C = null;
        this.f3193D = false;
        this.f3194E = false;
    }

    /* renamed from: i1 */
    public void m32921i1(Bundle bundle) {
        this.f3240y.m32824S0();
        this.f3220e = 1;
        this.f3199J = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3212W.mo32398a(new AbstractC0795f() { // from class: androidx.fragment.app.Fragment.5
                @Override // androidx.lifecycle.AbstractC0795f
                /* renamed from: c */
                public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
                    View view;
                    if (event != Lifecycle.Event.ON_STOP || (view = Fragment.this.f3201L) == null) {
                        return;
                    }
                    view.cancelPendingInputEvents();
                }
            });
        }
        this.f3216a0.m31182c(bundle);
        mo4888B0(bundle);
        this.f3210U = true;
        if (this.f3199J) {
            this.f3212W.m32391h(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* renamed from: j */
    void m32920j(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        C0673e c0673e = this.f3204O;
        AbstractC0675g abstractC0675g = null;
        if (c0673e != null) {
            c0673e.f3271w = false;
            abstractC0675g = c0673e.f3272x;
            c0673e.f3272x = null;
        }
        if (abstractC0675g != null) {
            abstractC0675g.mo32726b();
        } else if (!FragmentManager.f3287b || this.f3201L == null || (viewGroup = this.f3200K) == null || (fragmentManager = this.f3238w) == null) {
        } else {
            SpecialEffectsController m32699n = SpecialEffectsController.m32699n(viewGroup, fragmentManager);
            m32699n.m32697p();
            if (z) {
                this.f3239x.m32592i().post(new RunnableC0671c(m32699n));
            } else {
                m32699n.m32706g();
            }
        }
    }

    /* renamed from: j1 */
    public boolean m32918j1(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (!this.f3193D) {
            boolean z2 = false;
            if (this.f3197H) {
                z2 = false;
                if (this.f3198I) {
                    z2 = true;
                    m32985F0(menu, menuInflater);
                }
            }
            z = z2 | this.f3240y.m32855D(menu, menuInflater);
        }
        return z;
    }

    /* renamed from: k0 */
    public final boolean m32917k0() {
        return this.f3239x != null && this.f3231p;
    }

    /* renamed from: k1 */
    public void mo32637k1(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f3240y.m32824S0();
        this.f3236u = true;
        this.f3213X = new C0775w(this, mo32344p());
        View mo4887G0 = mo4887G0(layoutInflater, viewGroup, bundle);
        this.f3201L = mo4887G0;
        if (mo4887G0 == null) {
            if (this.f3213X.m32446e()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f3213X = null;
            return;
        }
        this.f3213X.m32447d();
        C0820v.m32343a(this.f3201L, this.f3213X);
        C0821w.m32342a(this.f3201L, this.f3213X);
        C1048d.m31179a(this.f3201L, this.f3213X);
        this.f3214Y.mo28960n(this.f3213X);
    }

    /* renamed from: l0 */
    public final boolean m32916l0() {
        return this.f3194E;
    }

    /* renamed from: l1 */
    public void m32915l1() {
        this.f3240y.m32853E();
        this.f3212W.m32391h(Lifecycle.Event.ON_DESTROY);
        this.f3220e = 0;
        this.f3199J = false;
        this.f3210U = false;
        mo17304H0();
        if (this.f3199J) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* renamed from: m0 */
    public final boolean m32914m0() {
        return this.f3193D;
    }

    /* renamed from: m1 */
    public void m32913m1() {
        this.f3240y.m32851F();
        if (this.f3201L != null && this.f3213X.mo32372a().mo32397b().isAtLeast(Lifecycle.State.CREATED)) {
            this.f3213X.m32448b(Lifecycle.Event.ON_DESTROY);
        }
        this.f3220e = 1;
        this.f3199J = false;
        mo25114K0();
        if (this.f3199J) {
            AbstractC1757a.m28969b(this).mo28966d();
            this.f3236u = false;
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
    }

    /* renamed from: n0 */
    public boolean m32912n0() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return false;
        }
        return c0673e.f3273y;
    }

    /* renamed from: n1 */
    public void m32911n1() {
        this.f3220e = -1;
        this.f3199J = false;
        mo22801L0();
        this.f3209T = null;
        if (this.f3199J) {
            if (this.f3240y.m32850F0()) {
                return;
            }
            this.f3240y.m32853E();
            this.f3240y = new C0743k();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
    }

    /* renamed from: o */
    public AbstractC0735e mo32632o() {
        return new C0672d();
    }

    /* renamed from: o0 */
    public final boolean m32910o0() {
        return this.f3237v > 0;
    }

    /* renamed from: o1 */
    public LayoutInflater m32909o1(Bundle bundle) {
        LayoutInflater mo32648M0 = mo32648M0(bundle);
        this.f3209T = mo32648M0;
        return mo32648M0;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f3199J = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        m32992C1().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f3199J = true;
    }

    @Override // androidx.lifecycle.AbstractC0819u
    /* renamed from: p */
    public C0818t mo32344p() {
        if (this.f3238w != null) {
            if (m32966O() == Lifecycle.State.INITIALIZED.ordinal()) {
                throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            }
            return this.f3238w.m32858B0(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    /* renamed from: p0 */
    public final boolean m32908p0() {
        FragmentManager fragmentManager;
        return this.f3198I && ((fragmentManager = this.f3238w) == null || fragmentManager.m32844I0(this.f3241z));
    }

    /* renamed from: p1 */
    public void m32907p1() {
        onLowMemory();
        this.f3240y.m32849G();
    }

    /* renamed from: q */
    public void mo17299q(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f3190A));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f3191B));
        printWriter.print(" mTag=");
        printWriter.println(this.f3192C);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f3220e);
        printWriter.print(" mWho=");
        printWriter.print(this.f3225j);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f3237v);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f3231p);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f3232q);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f3233r);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f3234s);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f3193D);
        printWriter.print(" mDetached=");
        printWriter.print(this.f3194E);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f3198I);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f3197H);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f3195F);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f3203N);
        if (this.f3238w != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f3238w);
        }
        if (this.f3239x != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f3239x);
        }
        if (this.f3241z != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f3241z);
        }
        if (this.f3226k != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f3226k);
        }
        if (this.f3221f != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f3221f);
        }
        if (this.f3222g != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f3222g);
        }
        if (this.f3223h != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f3223h);
        }
        Fragment m32930e0 = m32930e0();
        if (m32930e0 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(m32930e0);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f3229n);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(m32954S());
        if (m32994C() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(m32994C());
        }
        if (m32986F() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(m32986F());
        }
        if (m32951T() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(m32951T());
        }
        if (m32949U() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(m32949U());
        }
        if (this.f3200K != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f3200K);
        }
        if (this.f3201L != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f3201L);
        }
        if (m32889x() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m32889x());
        }
        if (m32996B() != null) {
            AbstractC1757a.m28969b(this).mo28968a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f3240y + ":");
        FragmentManager fragmentManager = this.f3240y;
        fragmentManager.m32817W(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* renamed from: q0 */
    public boolean m32906q0() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return false;
        }
        return c0673e.f3271w;
    }

    /* renamed from: q1 */
    public void m32905q1(boolean z) {
        m32959Q0(z);
        this.f3240y.m32847H(z);
    }

    @Override // androidx.savedstate.AbstractC1047c
    /* renamed from: r */
    public final SavedStateRegistry mo31180r() {
        return this.f3216a0.m31183b();
    }

    /* renamed from: r0 */
    public final boolean m32904r0() {
        return this.f3232q;
    }

    /* renamed from: r1 */
    public boolean m32903r1(MenuItem menuItem) {
        if (!this.f3193D) {
            if (this.f3197H && this.f3198I && m32956R0(menuItem)) {
                return true;
            }
            return this.f3240y.m32843J(menuItem);
        }
        return false;
    }

    /* renamed from: s0 */
    public final boolean m32901s0() {
        Fragment m32960Q = m32960Q();
        return m32960Q != null && (m32960Q.m32904r0() || m32960Q.m32901s0());
    }

    /* renamed from: s1 */
    public void m32900s1(Menu menu) {
        if (!this.f3193D) {
            if (this.f3197H && this.f3198I) {
                m32953S0(menu);
            }
            this.f3240y.m32841K(menu);
        }
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        m32937Y1(intent, i, null);
    }

    /* renamed from: t */
    public Fragment m32899t(String str) {
        return str.equals(this.f3225j) ? this : this.f3240y.m32781j0(str);
    }

    /* renamed from: t0 */
    public final boolean m32898t0() {
        FragmentManager fragmentManager = this.f3238w;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.m32838L0();
    }

    /* renamed from: t1 */
    public void m32897t1() {
        this.f3240y.m32837M();
        if (this.f3201L != null) {
            this.f3213X.m32448b(Lifecycle.Event.ON_PAUSE);
        }
        this.f3212W.m32391h(Lifecycle.Event.ON_PAUSE);
        this.f3220e = 6;
        this.f3199J = false;
        mo25021T0();
        if (this.f3199J) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.f3225j);
        if (this.f3190A != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3190A));
        }
        if (this.f3192C != null) {
            sb.append(" tag=");
            sb.append(this.f3192C);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public final FragmentActivity m32896u() {
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        return abstractC0738h == null ? null : (FragmentActivity) abstractC0738h.m32594g();
    }

    /* renamed from: u0 */
    public void m32895u0() {
        this.f3240y.m32824S0();
    }

    /* renamed from: u1 */
    public void m32894u1(boolean z) {
        m32948U0(z);
        this.f3240y.m32835N(z);
    }

    /* renamed from: v */
    public boolean m32893v() {
        Boolean bool;
        C0673e c0673e = this.f3204O;
        return (c0673e == null || (bool = c0673e.f3266r) == null) ? true : bool.booleanValue();
    }

    @Deprecated
    /* renamed from: v0 */
    public void mo26781v0(Bundle bundle) {
        this.f3199J = true;
    }

    /* renamed from: v1 */
    public boolean m32892v1(Menu menu) {
        boolean z = false;
        if (!this.f3193D) {
            boolean z2 = false;
            if (this.f3197H) {
                z2 = false;
                if (this.f3198I) {
                    z2 = true;
                    m32945V0(menu);
                }
            }
            z = z2 | this.f3240y.m32833O(menu);
        }
        return z;
    }

    /* renamed from: w */
    public boolean m32891w() {
        Boolean bool;
        C0673e c0673e = this.f3204O;
        return (c0673e == null || (bool = c0673e.f3265q) == null) ? true : bool.booleanValue();
    }

    @Deprecated
    /* renamed from: w0 */
    public void mo17298w0(int i, int i2, Intent intent) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    /* renamed from: w1 */
    public void m32890w1() {
        boolean m32842J0 = this.f3238w.m32842J0(this);
        Boolean bool = this.f3230o;
        if (bool == null || bool.booleanValue() != m32842J0) {
            this.f3230o = Boolean.valueOf(m32842J0);
            m32943W0(m32842J0);
            this.f3240y.m32831P();
        }
    }

    /* renamed from: x */
    public View m32889x() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3249a;
    }

    @Deprecated
    /* renamed from: x0 */
    public void m32888x0(Activity activity) {
        this.f3199J = true;
    }

    /* renamed from: x1 */
    public void m32887x1() {
        this.f3240y.m32824S0();
        this.f3240y.m32808a0(true);
        this.f3220e = 7;
        this.f3199J = false;
        mo17303Y0();
        if (!this.f3199J) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        }
        C0798i c0798i = this.f3212W;
        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
        c0798i.m32391h(event);
        if (this.f3201L != null) {
            this.f3213X.m32448b(event);
        }
        this.f3240y.m32829Q();
    }

    /* renamed from: y */
    public Animator m32886y() {
        C0673e c0673e = this.f3204O;
        if (c0673e == null) {
            return null;
        }
        return c0673e.f3250b;
    }

    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        this.f3199J = true;
        AbstractC0738h<?> abstractC0738h = this.f3239x;
        Activity m32594g = abstractC0738h == null ? null : abstractC0738h.m32594g();
        if (m32594g != null) {
            this.f3199J = false;
            m32888x0(m32594g);
        }
    }

    /* renamed from: y1 */
    public void m32885y1(Bundle bundle) {
        mo4886Z0(bundle);
        this.f3216a0.m31181d(bundle);
        Parcelable m32786h1 = this.f3240y.m32786h1();
        if (m32786h1 != null) {
            bundle.putParcelable("android:support:fragments", m32786h1);
        }
    }

    /* renamed from: z */
    public final Bundle m32884z() {
        return this.f3226k;
    }

    @Deprecated
    /* renamed from: z0 */
    public void m32883z0(Fragment fragment) {
    }

    /* renamed from: z1 */
    public void m32882z1() {
        this.f3240y.m32824S0();
        this.f3240y.m32808a0(true);
        this.f3220e = 5;
        this.f3199J = false;
        mo4903a1();
        if (!this.f3199J) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        C0798i c0798i = this.f3212W;
        Lifecycle.Event event = Lifecycle.Event.ON_START;
        c0798i.m32391h(event);
        if (this.f3201L != null) {
            this.f3213X.m32448b(event);
        }
        this.f3240y.m32827R();
    }
}
