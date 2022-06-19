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
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0480l;
import androidx.core.p025g.C0519a;
import androidx.core.p026h.C0579e;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0867f;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.AbstractC0889v;
import androidx.lifecycle.C0870i;
import androidx.lifecycle.C0877n;
import androidx.lifecycle.C0888u;
import androidx.p037g.p038a.AbstractC0714a;
import androidx.savedstate.AbstractC1063c;
import androidx.savedstate.C1059a;
import androidx.savedstate.C1062b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment.class */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, AbstractC0869h, AbstractC0889v, AbstractC1063c {

    /* renamed from: j */
    static final Object f2253j = new Object();

    /* renamed from: A */
    LayoutInflater$Factory2C0673j f2254A;

    /* renamed from: B */
    AbstractC0669h f2255B;

    /* renamed from: D */
    Fragment f2257D;

    /* renamed from: E */
    int f2258E;

    /* renamed from: F */
    int f2259F;

    /* renamed from: G */
    String f2260G;

    /* renamed from: H */
    boolean f2261H;

    /* renamed from: I */
    boolean f2262I;

    /* renamed from: J */
    boolean f2263J;

    /* renamed from: K */
    boolean f2264K;

    /* renamed from: L */
    boolean f2265L;

    /* renamed from: N */
    ViewGroup f2267N;

    /* renamed from: O */
    View f2268O;

    /* renamed from: P */
    View f2269P;

    /* renamed from: Q */
    boolean f2270Q;

    /* renamed from: S */
    C0657a f2272S;

    /* renamed from: U */
    boolean f2274U;

    /* renamed from: V */
    boolean f2275V;

    /* renamed from: W */
    float f2276W;

    /* renamed from: X */
    LayoutInflater f2277X;

    /* renamed from: Y */
    boolean f2278Y;

    /* renamed from: aa */
    C0870i f2281aa;

    /* renamed from: ab */
    C0712s f2282ab;

    /* renamed from: ad */
    C1062b f2284ad;

    /* renamed from: b */
    private boolean f2285b;

    /* renamed from: c */
    private int f2286c;

    /* renamed from: l */
    Bundle f2288l;

    /* renamed from: m */
    SparseArray<Parcelable> f2289m;

    /* renamed from: n */
    Boolean f2290n;

    /* renamed from: p */
    Bundle f2292p;

    /* renamed from: q */
    Fragment f2293q;

    /* renamed from: s */
    int f2295s;

    /* renamed from: t */
    boolean f2296t;

    /* renamed from: u */
    boolean f2297u;

    /* renamed from: v */
    boolean f2298v;

    /* renamed from: w */
    boolean f2299w;

    /* renamed from: x */
    boolean f2300x;

    /* renamed from: y */
    boolean f2301y;

    /* renamed from: z */
    int f2302z;

    /* renamed from: k */
    int f2287k = 0;

    /* renamed from: o */
    String f2291o = UUID.randomUUID().toString();

    /* renamed from: r */
    String f2294r = null;

    /* renamed from: a */
    private Boolean f2280a = null;

    /* renamed from: C */
    LayoutInflater$Factory2C0673j f2256C = new LayoutInflater$Factory2C0673j();

    /* renamed from: M */
    boolean f2266M = true;

    /* renamed from: R */
    boolean f2271R = true;

    /* renamed from: T */
    Runnable f2273T = new Runnable() { // from class: androidx.fragment.app.Fragment.1
        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m20004V();
        }
    };

    /* renamed from: Z */
    AbstractC0864e.EnumC0866b f2279Z = AbstractC0864e.EnumC0866b.RESUMED;

    /* renamed from: ac */
    C0877n<AbstractC0869h> f2283ac = new C0877n<>();

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$InstantiationException.class */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
    public static class C0657a {

        /* renamed from: a */
        View f2307a;

        /* renamed from: b */
        Animator f2308b;

        /* renamed from: c */
        int f2309c;

        /* renamed from: d */
        int f2310d;

        /* renamed from: e */
        int f2311e;

        /* renamed from: f */
        int f2312f;

        /* renamed from: m */
        Boolean f2319m;

        /* renamed from: n */
        Boolean f2320n;

        /* renamed from: q */
        boolean f2323q;

        /* renamed from: r */
        AbstractC0658b f2324r;

        /* renamed from: s */
        boolean f2325s;

        /* renamed from: g */
        Object f2313g = null;

        /* renamed from: h */
        Object f2314h = Fragment.f2253j;

        /* renamed from: i */
        Object f2315i = null;

        /* renamed from: j */
        Object f2316j = Fragment.f2253j;

        /* renamed from: k */
        Object f2317k = null;

        /* renamed from: l */
        Object f2318l = Fragment.f2253j;

        /* renamed from: o */
        AbstractC0480l f2321o = null;

        /* renamed from: p */
        AbstractC0480l f2322p = null;

        C0657a() {
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
    public interface AbstractC0658b {
        /* renamed from: a */
        void mo19687a();

        /* renamed from: b */
        void mo19686b();
    }

    public Fragment() {
        m19999a();
    }

    @Deprecated
    /* renamed from: a */
    public static Fragment m19990a(Context context, String str, Bundle bundle) {
        try {
            Fragment newInstance = C0668g.m19843b(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.m19941g(bundle);
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

    /* renamed from: a */
    private void m19999a() {
        this.f2281aa = new C0870i(this);
        this.f2284ad = C1062b.m18227a(this);
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2281aa.mo19219a(new AbstractC0867f() { // from class: androidx.fragment.app.Fragment.2
                @Override // androidx.lifecycle.AbstractC0867f
                /* renamed from: a */
                public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
                    if (enumC0865a != AbstractC0864e.EnumC0865a.ON_STOP || Fragment.this.f2268O == null) {
                        return;
                    }
                    Fragment.this.f2268O.cancelPendingInputEvents();
                }
            });
        }
    }

    /* renamed from: d */
    private C0657a m19949d() {
        if (this.f2272S == null) {
            this.f2272S = new C0657a();
        }
        return this.f2272S;
    }

    /* renamed from: A */
    public final boolean m20022A() {
        return this.f2262I;
    }

    /* renamed from: B */
    public final boolean m20021B() {
        return this.f2297u;
    }

    /* renamed from: C */
    public final boolean m20020C() {
        return this.f2287k >= 4;
    }

    /* renamed from: D */
    public final boolean m20019D() {
        return this.f2261H;
    }

    /* renamed from: E */
    public final boolean m20018E() {
        return this.f2263J;
    }

    /* renamed from: F */
    public final LayoutInflater m20017F() {
        return this.f2277X == null ? m19939h((Bundle) null) : this.f2277X;
    }

    /* renamed from: G */
    public View m20016G() {
        return this.f2268O;
    }

    /* renamed from: H */
    public final View m20015H() {
        View m20016G = m20016G();
        if (m20016G == null) {
            throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
        }
        return m20016G;
    }

    /* renamed from: I */
    public void mo875I() {
        this.f2285b = true;
    }

    /* renamed from: J */
    public void mo15139J() {
        this.f2285b = true;
    }

    /* renamed from: K */
    public void mo954K() {
        this.f2285b = true;
    }

    /* renamed from: L */
    public void m20014L() {
        m19999a();
        this.f2291o = UUID.randomUUID().toString();
        this.f2296t = false;
        this.f2297u = false;
        this.f2298v = false;
        this.f2299w = false;
        this.f2300x = false;
        this.f2302z = 0;
        this.f2254A = null;
        this.f2256C = new LayoutInflater$Factory2C0673j();
        this.f2255B = null;
        this.f2258E = 0;
        this.f2259F = 0;
        this.f2260G = null;
        this.f2261H = false;
        this.f2262I = false;
    }

    /* renamed from: M */
    public void m20013M() {
    }

    /* renamed from: N */
    public Object m20012N() {
        return this.f2272S == null ? null : this.f2272S.f2313g;
    }

    /* renamed from: O */
    public Object m20011O() {
        return this.f2272S == null ? null : this.f2272S.f2314h == f2253j ? m20012N() : this.f2272S.f2314h;
    }

    /* renamed from: P */
    public Object m20010P() {
        return this.f2272S == null ? null : this.f2272S.f2315i;
    }

    /* renamed from: Q */
    public Object m20009Q() {
        return this.f2272S == null ? null : this.f2272S.f2316j == f2253j ? m20010P() : this.f2272S.f2316j;
    }

    /* renamed from: R */
    public Object m20008R() {
        return this.f2272S == null ? null : this.f2272S.f2317k;
    }

    /* renamed from: S */
    public Object m20007S() {
        return this.f2272S == null ? null : this.f2272S.f2318l == f2253j ? m20008R() : this.f2272S.f2318l;
    }

    /* renamed from: T */
    public boolean m20006T() {
        return (this.f2272S == null || this.f2272S.f2320n == null) ? true : this.f2272S.f2320n.booleanValue();
    }

    /* renamed from: U */
    public boolean m20005U() {
        return (this.f2272S == null || this.f2272S.f2319m == null) ? true : this.f2272S.f2319m.booleanValue();
    }

    /* renamed from: V */
    public void m20004V() {
        if (this.f2254A == null || this.f2254A.f2397n == null) {
            m19949d().f2323q = false;
        } else if (Looper.myLooper() != this.f2254A.f2397n.m19827m().getLooper()) {
            this.f2254A.f2397n.m19827m().postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.Fragment.3
                @Override // java.lang.Runnable
                public void run() {
                    Fragment.this.m20003W();
                }
            });
        } else {
            m20003W();
        }
    }

    /* renamed from: W */
    void m20003W() {
        AbstractC0658b abstractC0658b = null;
        if (this.f2272S != null) {
            this.f2272S.f2323q = false;
            abstractC0658b = this.f2272S.f2324r;
            this.f2272S.f2324r = null;
        }
        if (abstractC0658b != null) {
            abstractC0658b.mo19687a();
        }
    }

    /* renamed from: X */
    public void m20002X() {
        this.f2256C.m19777a(this.f2255B, new AbstractC0666e() { // from class: androidx.fragment.app.Fragment.4
            @Override // androidx.fragment.app.AbstractC0666e
            /* renamed from: a */
            public View mo19840a(int i) {
                if (Fragment.this.f2268O == null) {
                    throw new IllegalStateException("Fragment " + this + " does not have a view");
                }
                return Fragment.this.f2268O.findViewById(i);
            }

            @Override // androidx.fragment.app.AbstractC0666e
            /* renamed from: a */
            public boolean mo19841a() {
                return Fragment.this.f2268O != null;
            }
        }, this);
        this.f2285b = false;
        mo17250a(this.f2255B.m19828l());
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    /* renamed from: Y */
    public void m20001Y() {
        this.f2256C.m19711o();
        this.f2256C.m19719k();
        this.f2287k = 3;
        this.f2285b = false;
        mo3152i();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onStart()");
        }
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_START);
        if (this.f2268O != null) {
            this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_START);
        }
        this.f2256C.m19705r();
    }

    /* renamed from: Z */
    public void m20000Z() {
        this.f2256C.m19711o();
        this.f2256C.m19719k();
        this.f2287k = 4;
        this.f2285b = false;
        mo875I();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onResume()");
        }
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_RESUME);
        if (this.f2268O != null) {
            this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_RESUME);
        }
        this.f2256C.m19703s();
        this.f2256C.m19719k();
    }

    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f2286c != 0 ? layoutInflater.inflate(this.f2286c, viewGroup, false) : null;
    }

    /* renamed from: a */
    public Animation m19996a(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: a */
    public Fragment m19979a(String str) {
        return str.equals(this.f2291o) ? this : this.f2256C.m19752b(str);
    }

    /* renamed from: a */
    public final CharSequence m19998a(int i) {
        return m19919u().getText(i);
    }

    /* renamed from: a */
    public final String m19995a(int i, Object... objArr) {
        return m19919u().getString(i, objArr);
    }

    /* renamed from: a */
    public void m19997a(int i, int i2) {
        if (this.f2272S == null && i == 0 && i2 == 0) {
            return;
        }
        m19949d();
        this.f2272S.f2311e = i;
        this.f2272S.f2312f = i2;
    }

    /* renamed from: a */
    public void mo952a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public void mo950a(int i, String[] strArr, int[] iArr) {
    }

    /* renamed from: a */
    public void m19994a(Animator animator) {
        m19949d().f2308b = animator;
    }

    @Deprecated
    /* renamed from: a */
    public void m19993a(Activity activity) {
        this.f2285b = true;
    }

    @Deprecated
    /* renamed from: a */
    public void m19992a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.f2285b = true;
    }

    /* renamed from: a */
    public void mo17250a(Context context) {
        this.f2285b = true;
        Activity m19829k = this.f2255B == null ? null : this.f2255B.m19829k();
        if (m19829k != null) {
            this.f2285b = false;
            m19993a(m19829k);
        }
    }

    /* renamed from: a */
    public void m19991a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.f2285b = true;
        Activity m19829k = this.f2255B == null ? null : this.f2255B.m19829k();
        if (m19829k != null) {
            this.f2285b = false;
            m19992a(m19829k, attributeSet, bundle);
        }
    }

    /* renamed from: a */
    public void m19989a(@SuppressLint({"UnknownNullness"}) Intent intent) {
        m19987a(intent, (Bundle) null);
    }

    /* renamed from: a */
    public void m19988a(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.f2255B == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.f2255B.mo19838a(this, intent, i, bundle);
    }

    /* renamed from: a */
    public void m19987a(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        if (this.f2255B == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.f2255B.mo19838a(this, intent, -1, bundle);
    }

    /* renamed from: a */
    public void m19986a(Configuration configuration) {
        onConfigurationChanged(configuration);
        this.f2256C.m19796a(configuration);
    }

    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        this.f2285b = true;
        m19935j(bundle);
        if (!this.f2256C.m19800a(1)) {
            this.f2256C.m19709p();
        }
    }

    /* renamed from: a */
    public void m19985a(Menu menu) {
    }

    /* renamed from: a */
    public void m19984a(Menu menu, MenuInflater menuInflater) {
    }

    /* renamed from: a */
    public void m19982a(View view) {
        m19949d().f2307a = view;
    }

    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
    }

    /* renamed from: a */
    public void m19981a(AbstractC0658b abstractC0658b) {
        m19949d();
        if (abstractC0658b == this.f2272S.f2324r) {
            return;
        }
        if (abstractC0658b != null && this.f2272S.f2324r != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.f2272S.f2323q) {
            this.f2272S.f2324r = abstractC0658b;
        }
        if (abstractC0658b == null) {
            return;
        }
        abstractC0658b.mo19686b();
    }

    /* renamed from: a */
    public void m19980a(Fragment fragment) {
    }

    /* renamed from: a */
    public void mo14333a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f2258E));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f2259F));
        printWriter.print(" mTag=");
        printWriter.println(this.f2260G);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f2287k);
        printWriter.print(" mWho=");
        printWriter.print(this.f2291o);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f2302z);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f2296t);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f2297u);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f2298v);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f2299w);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f2261H);
        printWriter.print(" mDetached=");
        printWriter.print(this.f2262I);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f2266M);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f2265L);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f2263J);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f2271R);
        if (this.f2254A != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f2254A);
        }
        if (this.f2255B != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f2255B);
        }
        if (this.f2257D != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f2257D);
        }
        if (this.f2292p != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f2292p);
        }
        if (this.f2288l != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f2288l);
        }
        if (this.f2289m != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f2289m);
        }
        Fragment m19925o = m19925o();
        if (m19925o != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(m19925o);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f2295s);
        }
        if (m19969ai() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(m19969ai());
        }
        if (this.f2267N != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f2267N);
        }
        if (this.f2268O != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f2268O);
        }
        if (this.f2269P != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.f2268O);
        }
        if (m19964an() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m19964an());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(m19962ap());
        }
        if (m19924p() != null) {
            AbstractC0714a.m19601a(this).mo19597a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f2256C + ":");
        this.f2256C.mo19770a(str + "  ", fileDescriptor, printWriter, strArr);
    }

    /* renamed from: a */
    public final void m19978a(String[] strArr, int i) {
        if (this.f2255B == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.f2255B.mo19837a(this, strArr, i);
    }

    /* renamed from: a */
    public boolean m19983a(MenuItem menuItem) {
        return false;
    }

    /* renamed from: aa */
    public void m19977aa() {
        this.f2256C.m19711o();
    }

    /* renamed from: ab */
    public void m19976ab() {
        boolean m19788a = this.f2254A.m19788a(this);
        if (this.f2280a == null || this.f2280a.booleanValue() != m19788a) {
            this.f2280a = Boolean.valueOf(m19788a);
            m19938h(m19788a);
            this.f2256C.m19692y();
        }
    }

    /* renamed from: ac */
    public void m19975ac() {
        onLowMemory();
        this.f2256C.m19693x();
    }

    /* renamed from: ad */
    public void m19974ad() {
        this.f2256C.m19701t();
        if (this.f2268O != null) {
            this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_PAUSE);
        }
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_PAUSE);
        this.f2287k = 3;
        this.f2285b = false;
        mo15139J();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onPause()");
        }
    }

    /* renamed from: ae */
    public void m19973ae() {
        this.f2256C.m19699u();
        if (this.f2268O != null) {
            this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_STOP);
        }
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_STOP);
        this.f2287k = 2;
        this.f2285b = false;
        mo3151j();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    /* renamed from: af */
    public void m19972af() {
        this.f2256C.m19697v();
        if (this.f2268O != null) {
            this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_DESTROY);
        }
        this.f2287k = 1;
        this.f2285b = false;
        mo15637k();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        AbstractC0714a.m19601a(this).mo19600a();
        this.f2301y = false;
    }

    /* renamed from: ag */
    public void m19971ag() {
        this.f2256C.m19695w();
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_DESTROY);
        this.f2287k = 0;
        this.f2285b = false;
        this.f2278Y = false;
        mo954K();
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    /* renamed from: ah */
    public void m19970ah() {
        this.f2285b = false;
        mo17240h();
        this.f2277X = null;
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onDetach()");
        }
        if (this.f2256C.mo19741d()) {
            return;
        }
        this.f2256C.m19695w();
        this.f2256C = new LayoutInflater$Factory2C0673j();
    }

    /* renamed from: ai */
    public int m19969ai() {
        return this.f2272S == null ? 0 : this.f2272S.f2310d;
    }

    /* renamed from: aj */
    public int m19968aj() {
        return this.f2272S == null ? 0 : this.f2272S.f2311e;
    }

    /* renamed from: ak */
    public int m19967ak() {
        return this.f2272S == null ? 0 : this.f2272S.f2312f;
    }

    /* renamed from: al */
    public AbstractC0480l m19966al() {
        return this.f2272S == null ? null : this.f2272S.f2321o;
    }

    /* renamed from: am */
    public AbstractC0480l m19965am() {
        return this.f2272S == null ? null : this.f2272S.f2322p;
    }

    /* renamed from: an */
    public View m19964an() {
        return this.f2272S == null ? null : this.f2272S.f2307a;
    }

    /* renamed from: ao */
    public Animator m19963ao() {
        return this.f2272S == null ? null : this.f2272S.f2308b;
    }

    /* renamed from: ap */
    public int m19962ap() {
        return this.f2272S == null ? 0 : this.f2272S.f2309c;
    }

    /* renamed from: aq */
    public boolean m19961aq() {
        return this.f2272S == null ? false : this.f2272S.f2323q;
    }

    /* renamed from: ar */
    public boolean m19960ar() {
        return this.f2272S == null ? false : this.f2272S.f2325s;
    }

    /* renamed from: b */
    public Animator m19958b(int i, boolean z, int i2) {
        return null;
    }

    /* renamed from: b */
    public LayoutInflater mo19891b(Bundle bundle) {
        return m19937i(bundle);
    }

    @Override // androidx.lifecycle.AbstractC0869h
    /* renamed from: b */
    public AbstractC0864e mo19203b() {
        return this.f2281aa;
    }

    /* renamed from: b */
    public final String m19959b(int i) {
        return m19919u().getString(i);
    }

    /* renamed from: b */
    public void m19957b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f2256C.m19711o();
        this.f2301y = true;
        this.f2282ab = new C0712s();
        this.f2268O = mo850a(layoutInflater, viewGroup, bundle);
        if (this.f2268O != null) {
            this.f2282ab.m19604a();
            this.f2283ac.mo19194b((C0877n<AbstractC0869h>) this.f2282ab);
        } else if (this.f2282ab.m19602c()) {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        } else {
            this.f2282ab = null;
        }
    }

    /* renamed from: b */
    public void m19956b(Menu menu) {
    }

    /* renamed from: b */
    public void mo940b(boolean z) {
    }

    /* renamed from: b */
    public boolean m19955b(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (!this.f2261H) {
            boolean z2 = false;
            if (this.f2265L) {
                z2 = false;
                if (this.f2266M) {
                    z2 = true;
                    m19984a(menu, menuInflater);
                }
            }
            z = z2 | this.f2256C.m19791a(menu, menuInflater);
        }
        return z;
    }

    /* renamed from: b */
    public boolean m19954b(MenuItem menuItem) {
        return false;
    }

    @Override // androidx.lifecycle.AbstractC0889v
    /* renamed from: c */
    public C0888u mo19167c() {
        if (this.f2254A == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        return this.f2254A.m19758b(this);
    }

    /* renamed from: c */
    public void m19953c(int i) {
        if (this.f2272S == null && i == 0) {
            return;
        }
        m19949d().f2310d = i;
    }

    /* renamed from: c */
    public void m19950c(boolean z) {
        this.f2263J = z;
        if (this.f2254A == null) {
            this.f2264K = true;
        } else if (z) {
            this.f2254A.m19739d(this);
        } else {
            this.f2254A.m19734e(this);
        }
    }

    /* renamed from: c */
    public boolean m19952c(Menu menu) {
        boolean z = false;
        if (!this.f2261H) {
            boolean z2 = false;
            if (this.f2265L) {
                z2 = false;
                if (this.f2266M) {
                    z2 = true;
                    m19985a(menu);
                }
            }
            z = z2 | this.f2256C.m19792a(menu);
        }
        return z;
    }

    /* renamed from: c */
    public boolean m19951c(MenuItem menuItem) {
        boolean z = true;
        if (this.f2261H || ((!this.f2265L || !this.f2266M || !m19983a(menuItem)) && !this.f2256C.m19790a(menuItem))) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public void m19948d(int i) {
        m19949d().f2309c = i;
    }

    /* renamed from: d */
    public void mo19889d(Bundle bundle) {
        this.f2285b = true;
    }

    /* renamed from: d */
    public void m19947d(Menu menu) {
        if (!this.f2261H) {
            if (this.f2265L && this.f2266M) {
                m19956b(menu);
            }
            this.f2256C.m19761b(menu);
        }
    }

    /* renamed from: d */
    public void m19945d(boolean z) {
        if (this.f2266M != z) {
            this.f2266M = z;
            if (!this.f2265L || !m19914z() || m20019D()) {
                return;
            }
            this.f2255B.mo19833g();
        }
    }

    /* renamed from: d */
    public boolean m19946d(MenuItem menuItem) {
        boolean z = true;
        if (this.f2261H || (!m19954b(menuItem) && !this.f2256C.m19760b(menuItem))) {
            z = false;
        }
        return z;
    }

    @Override // androidx.savedstate.AbstractC1063c
    /* renamed from: e */
    public final C1059a mo18225e() {
        return this.f2284ad.m18229a();
    }

    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
    }

    @Deprecated
    /* renamed from: e */
    public void m19944e(boolean z) {
        if (!this.f2271R && z && this.f2287k < 3 && this.f2254A != null && m19914z() && this.f2278Y) {
            this.f2254A.m19731f(this);
        }
        this.f2271R = z;
        this.f2270Q = this.f2287k < 3 && !z;
        if (this.f2288l != null) {
            this.f2290n = Boolean.valueOf(z);
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* renamed from: f */
    public final void m19943f(Bundle bundle) {
        if (this.f2289m != null) {
            this.f2269P.restoreHierarchyState(this.f2289m);
            this.f2289m = null;
        }
        this.f2285b = false;
        m19933k(bundle);
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
        if (this.f2268O == null) {
            return;
        }
        this.f2282ab.m19603a(AbstractC0864e.EnumC0865a.ON_CREATE);
    }

    /* renamed from: f */
    public void m19942f(boolean z) {
    }

    /* renamed from: g */
    public void m19941g(Bundle bundle) {
        if (this.f2254A == null || !m19927n()) {
            this.f2292p = bundle;
            return;
        }
        throw new IllegalStateException("Fragment already added and state has been saved");
    }

    /* renamed from: g */
    public void m19940g(boolean z) {
    }

    /* renamed from: h */
    public LayoutInflater m19939h(Bundle bundle) {
        this.f2277X = mo19891b(bundle);
        return this.f2277X;
    }

    /* renamed from: h */
    public void mo17240h() {
        this.f2285b = true;
    }

    /* renamed from: h */
    public void m19938h(boolean z) {
    }

    public final int hashCode() {
        return super.hashCode();
    }

    @Deprecated
    /* renamed from: i */
    public LayoutInflater m19937i(Bundle bundle) {
        if (this.f2255B == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater mo19834e = this.f2255B.mo19834e();
        C0579e.m20412a(mo19834e, this.f2256C.m19810B());
        return mo19834e;
    }

    /* renamed from: i */
    public void mo3152i() {
        this.f2285b = true;
    }

    /* renamed from: i */
    public void m19936i(boolean z) {
        m19942f(z);
        this.f2256C.m19765a(z);
    }

    /* renamed from: j */
    public void mo3151j() {
        this.f2285b = true;
    }

    /* renamed from: j */
    public void m19935j(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.f2256C.m19793a(parcelable);
        this.f2256C.m19709p();
    }

    /* renamed from: j */
    public void m19934j(boolean z) {
        m19940g(z);
        this.f2256C.m19749b(z);
    }

    /* renamed from: k */
    public void mo15637k() {
        this.f2285b = true;
    }

    /* renamed from: k */
    public void m19933k(Bundle bundle) {
        this.f2285b = true;
    }

    /* renamed from: k */
    public void m19932k(boolean z) {
        m19949d().f2325s = z;
    }

    /* renamed from: l */
    public void m19930l(Bundle bundle) {
        this.f2256C.m19711o();
        this.f2287k = 1;
        this.f2285b = false;
        this.f2284ad.m18228a(bundle);
        mo3149a(bundle);
        this.f2278Y = true;
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onCreate()");
        }
        this.f2281aa.m19222a(AbstractC0864e.EnumC0865a.ON_CREATE);
    }

    /* renamed from: l */
    public final boolean m19931l() {
        return this.f2302z > 0;
    }

    /* renamed from: m */
    public final Bundle m19929m() {
        return this.f2292p;
    }

    /* renamed from: m */
    public void m19928m(Bundle bundle) {
        this.f2256C.m19711o();
        this.f2287k = 2;
        this.f2285b = false;
        mo19889d(bundle);
        if (!this.f2285b) {
            throw new C0713t("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        this.f2256C.m19707q();
    }

    /* renamed from: n */
    public void m19926n(Bundle bundle) {
        mo3147e(bundle);
        this.f2284ad.m18226b(bundle);
        Parcelable m19713n = this.f2256C.m19713n();
        if (m19713n != null) {
            bundle.putParcelable("android:support:fragments", m19713n);
        }
    }

    /* renamed from: n */
    public final boolean m19927n() {
        return this.f2254A == null ? false : this.f2254A.mo19732f();
    }

    /* renamed from: o */
    public final Fragment m19925o() {
        return this.f2293q != null ? this.f2293q : (this.f2254A == null || this.f2294r == null) ? null : this.f2254A.f2390g.get(this.f2294r);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f2285b = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        m19921s().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f2285b = true;
    }

    /* renamed from: p */
    public Context m19924p() {
        return this.f2255B == null ? null : this.f2255B.m19828l();
    }

    /* renamed from: q */
    public final Context m19923q() {
        Context m19924p = m19924p();
        if (m19924p == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to a context.");
        }
        return m19924p;
    }

    /* renamed from: r */
    public final ActivityC0664d m19922r() {
        return this.f2255B == null ? null : (ActivityC0664d) this.f2255B.m19829k();
    }

    /* renamed from: s */
    public final ActivityC0664d m19921s() {
        ActivityC0664d m19922r = m19922r();
        if (m19922r == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
        }
        return m19922r;
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        m19988a(intent, i, (Bundle) null);
    }

    /* renamed from: t */
    public final Object m19920t() {
        return this.f2255B == null ? null : this.f2255B.mo19830j();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        C0519a.m20650a(this, sb);
        sb.append(" (");
        sb.append(this.f2291o);
        sb.append(")");
        if (this.f2258E != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2258E));
        }
        if (this.f2260G != null) {
            sb.append(" ");
            sb.append(this.f2260G);
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: u */
    public final Resources m19919u() {
        return m19923q().getResources();
    }

    /* renamed from: v */
    public final AbstractC0670i m19918v() {
        return this.f2254A;
    }

    /* renamed from: w */
    public final AbstractC0670i m19917w() {
        AbstractC0670i m19918v = m19918v();
        if (m19918v == null) {
            throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
        }
        return m19918v;
    }

    /* renamed from: x */
    public final AbstractC0670i m19916x() {
        if (this.f2255B == null) {
            throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
        }
        return this.f2256C;
    }

    /* renamed from: y */
    public final Fragment m19915y() {
        return this.f2257D;
    }

    /* renamed from: z */
    public final boolean m19914z() {
        return this.f2255B != null && this.f2296t;
    }
}
