package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.Lifecycle;
import com.yanzhenjie.nohttp.BuildConfig;
import p020b.p041h.p050l.C1679w;
import p020b.p061m.C1751b;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public class C0749p {

    /* renamed from: a */
    private final C0741j f3530a;

    /* renamed from: b */
    private final C0753r f3531b;

    /* renamed from: c */
    private final Fragment f3532c;

    /* renamed from: d */
    private boolean f3533d = false;

    /* renamed from: e */
    private int f3534e = -1;

    /* renamed from: androidx.fragment.app.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$a.class */
    public class View$OnAttachStateChangeListenerC0750a implements View.OnAttachStateChangeListener {

        /* renamed from: d */
        final /* synthetic */ View f3535d;

        View$OnAttachStateChangeListenerC0750a(View view) {
            C0749p.this = r4;
            this.f3535d = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f3535d.removeOnAttachStateChangeListener(this);
            C1679w.m29279o0(this.f3535d);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.fragment.app.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$b.class */
    public static /* synthetic */ class C0751b {

        /* renamed from: a */
        static final /* synthetic */ int[] f3537a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f3537a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3537a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3537a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3537a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C0749p(C0741j c0741j, C0753r c0753r, Fragment fragment) {
        this.f3530a = c0741j;
        this.f3531b = c0753r;
        this.f3532c = fragment;
    }

    public C0749p(C0741j c0741j, C0753r c0753r, Fragment fragment, FragmentState fragmentState) {
        this.f3530a = c0741j;
        this.f3531b = c0753r;
        this.f3532c = fragment;
        fragment.f3222g = null;
        fragment.f3223h = null;
        fragment.f3237v = 0;
        fragment.f3234s = false;
        fragment.f3231p = false;
        Fragment fragment2 = fragment.f3227l;
        fragment.f3228m = fragment2 != null ? fragment2.f3225j : null;
        fragment.f3227l = null;
        Bundle bundle = fragmentState.f3375p;
        if (bundle != null) {
            fragment.f3221f = bundle;
        } else {
            fragment.f3221f = new Bundle();
        }
    }

    public C0749p(C0741j c0741j, C0753r c0753r, ClassLoader classLoader, C0737g c0737g, FragmentState fragmentState) {
        this.f3530a = c0741j;
        this.f3531b = c0753r;
        Fragment mo32600a = c0737g.mo32600a(classLoader, fragmentState.f3363d);
        this.f3532c = mo32600a;
        Bundle bundle = fragmentState.f3372m;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        mo32600a.m32971L1(fragmentState.f3372m);
        mo32600a.f3225j = fragmentState.f3364e;
        mo32600a.f3233r = fragmentState.f3365f;
        mo32600a.f3235t = true;
        mo32600a.f3190A = fragmentState.f3366g;
        mo32600a.f3191B = fragmentState.f3367h;
        mo32600a.f3192C = fragmentState.f3368i;
        mo32600a.f3195F = fragmentState.f3369j;
        mo32600a.f3232q = fragmentState.f3370k;
        mo32600a.f3194E = fragmentState.f3371l;
        mo32600a.f3193D = fragmentState.f3373n;
        mo32600a.f3211V = Lifecycle.State.values()[fragmentState.f3374o];
        Bundle bundle2 = fragmentState.f3375p;
        if (bundle2 != null) {
            mo32600a.f3221f = bundle2;
        } else {
            mo32600a.f3221f = new Bundle();
        }
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + mo32600a);
        }
    }

    /* renamed from: l */
    private boolean m32545l(View view) {
        if (view == this.f3532c.f3201L) {
            return true;
        }
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == null) {
                return false;
            }
            if (viewParent == this.f3532c.f3201L) {
                return true;
            }
            parent = viewParent.getParent();
        }
    }

    /* renamed from: q */
    private Bundle m32540q() {
        Bundle bundle = new Bundle();
        this.f3532c.m32885y1(bundle);
        this.f3530a.m32576j(this.f3532c, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f3532c.f3201L != null) {
            m32537t();
        }
        Bundle bundle3 = bundle2;
        if (this.f3532c.f3222g != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f3532c.f3222g);
        }
        Bundle bundle4 = bundle3;
        if (this.f3532c.f3223h != null) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBundle("android:view_registry_state", this.f3532c.f3223h);
        }
        Bundle bundle5 = bundle4;
        if (!this.f3532c.f3203N) {
            bundle5 = bundle4;
            if (bundle4 == null) {
                bundle5 = new Bundle();
            }
            bundle5.putBoolean("android:user_visible_hint", this.f3532c.f3203N);
        }
        return bundle5;
    }

    /* renamed from: a */
    public void m32556a() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        fragment.m32929e1(fragment.f3221f);
        C0741j c0741j = this.f3530a;
        Fragment fragment2 = this.f3532c;
        c0741j.m32585a(fragment2, fragment2.f3221f, false);
    }

    /* renamed from: b */
    public void m32555b() {
        int m32524j = this.f3531b.m32524j(this.f3532c);
        Fragment fragment = this.f3532c;
        fragment.f3200K.addView(fragment.f3201L, m32524j);
    }

    /* renamed from: c */
    public void m32554c() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        Fragment fragment2 = fragment.f3227l;
        C0749p c0749p = null;
        if (fragment2 != null) {
            c0749p = this.f3531b.m32521m(fragment2.f3225j);
            if (c0749p == null) {
                throw new IllegalStateException("Fragment " + this.f3532c + " declared target fragment " + this.f3532c.f3227l + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f3532c;
            fragment3.f3228m = fragment3.f3227l.f3225j;
            fragment3.f3227l = null;
        } else {
            String str = fragment.f3228m;
            if (str != null) {
                c0749p = this.f3531b.m32521m(str);
                if (c0749p == null) {
                    throw new IllegalStateException("Fragment " + this.f3532c + " declared target fragment " + this.f3532c.f3228m + " that does not belong to this FragmentManager!");
                }
            }
        }
        if (c0749p != null && (FragmentManager.f3287b || c0749p.m32546k().f3220e < 1)) {
            c0749p.m32544m();
        }
        Fragment fragment4 = this.f3532c;
        fragment4.f3239x = fragment4.f3238w.m32750u0();
        Fragment fragment5 = this.f3532c;
        fragment5.f3241z = fragment5.f3238w.m32744x0();
        this.f3530a.m32579g(this.f3532c, false);
        this.f3532c.m32927f1();
        this.f3530a.m32584b(this.f3532c, false);
    }

    /* renamed from: d */
    public int m32553d() {
        int i;
        Fragment fragment = this.f3532c;
        if (fragment.f3238w == null) {
            return fragment.f3220e;
        }
        int i2 = this.f3534e;
        int i3 = C0751b.f3537a[fragment.f3211V.ordinal()];
        int i4 = i2;
        if (i3 != 1) {
            i4 = i3 != 2 ? i3 != 3 ? i3 != 4 ? Math.min(i2, -1) : Math.min(i2, 0) : Math.min(i2, 1) : Math.min(i2, 5);
        }
        Fragment fragment2 = this.f3532c;
        int i5 = i4;
        if (fragment2.f3233r) {
            if (fragment2.f3234s) {
                int max = Math.max(this.f3534e, 2);
                View view = this.f3532c.f3201L;
                i5 = max;
                if (view != null) {
                    i5 = max;
                    if (view.getParent() == null) {
                        i5 = Math.min(max, 2);
                    }
                }
            } else {
                i5 = this.f3534e < 4 ? Math.min(i4, fragment2.f3220e) : Math.min(i4, 1);
            }
        }
        int i6 = i5;
        if (!this.f3532c.f3231p) {
            i6 = Math.min(i5, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact = null;
        if (FragmentManager.f3287b) {
            Fragment fragment3 = this.f3532c;
            ViewGroup viewGroup = fragment3.f3200K;
            lifecycleImpact = null;
            if (viewGroup != null) {
                lifecycleImpact = SpecialEffectsController.m32699n(viewGroup, fragment3.m32957R()).m32701l(this);
            }
        }
        if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            i = Math.min(i6, 6);
        } else if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            i = Math.max(i6, 3);
        } else {
            Fragment fragment4 = this.f3532c;
            i = i6;
            if (fragment4.f3232q) {
                i = fragment4.m32910o0() ? Math.min(i6, 1) : Math.min(i6, -1);
            }
        }
        Fragment fragment5 = this.f3532c;
        int i7 = i;
        if (fragment5.f3202M) {
            i7 = i;
            if (fragment5.f3220e < 5) {
                i7 = Math.min(i, 4);
            }
        }
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i7 + " for " + this.f3532c);
        }
        return i7;
    }

    /* renamed from: e */
    public void m32552e() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        if (fragment.f3210U) {
            fragment.m32984F1(fragment.f3221f);
            this.f3532c.f3220e = 1;
            return;
        }
        this.f3530a.m32578h(fragment, fragment.f3221f, false);
        Fragment fragment2 = this.f3532c;
        fragment2.m32921i1(fragment2.f3221f);
        C0741j c0741j = this.f3530a;
        Fragment fragment3 = this.f3532c;
        c0741j.m32583c(fragment3, fragment3.f3221f, false);
    }

    /* renamed from: f */
    public void m32551f() {
        String str;
        if (this.f3532c.f3233r) {
            return;
        }
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        LayoutInflater m32909o1 = fragment.m32909o1(fragment.f3221f);
        Fragment fragment2 = this.f3532c;
        ViewGroup viewGroup = fragment2.f3200K;
        if (viewGroup == null) {
            int i = fragment2.f3191B;
            viewGroup = null;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f3532c + " for a container view with no id");
                }
                ViewGroup viewGroup2 = (ViewGroup) fragment2.f3238w.m32766o0().mo32596e(this.f3532c.f3191B);
                viewGroup = viewGroup2;
                if (viewGroup2 == null) {
                    Fragment fragment3 = this.f3532c;
                    if (!fragment3.f3235t) {
                        try {
                            str = fragment3.m32941X().getResourceName(this.f3532c.f3191B);
                        } catch (Resources.NotFoundException e) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f3532c.f3191B) + " (" + str + ") for fragment " + this.f3532c);
                    }
                    viewGroup = viewGroup2;
                }
            }
        }
        Fragment fragment4 = this.f3532c;
        fragment4.f3200K = viewGroup;
        fragment4.mo32637k1(m32909o1, viewGroup, fragment4.f3221f);
        View view = this.f3532c.f3201L;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f3532c;
            fragment5.f3201L.setTag(C1751b.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                m32555b();
            }
            Fragment fragment6 = this.f3532c;
            if (fragment6.f3193D) {
                fragment6.f3201L.setVisibility(8);
            }
            if (C1679w.m29314U(this.f3532c.f3201L)) {
                C1679w.m29279o0(this.f3532c.f3201L);
            } else {
                View view2 = this.f3532c.f3201L;
                view2.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC0750a(view2));
            }
            this.f3532c.m32995B1();
            C0741j c0741j = this.f3530a;
            Fragment fragment7 = this.f3532c;
            c0741j.m32573m(fragment7, fragment7.f3201L, fragment7.f3221f, false);
            int visibility = this.f3532c.f3201L.getVisibility();
            float alpha = this.f3532c.f3201L.getAlpha();
            if (FragmentManager.f3287b) {
                this.f3532c.m32950T1(alpha);
                Fragment fragment8 = this.f3532c;
                if (fragment8.f3200K != null && visibility == 0) {
                    View findFocus = fragment8.f3201L.findFocus();
                    if (findFocus != null) {
                        this.f3532c.m32969M1(findFocus);
                        if (FragmentManager.m32848G0(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.f3532c);
                        }
                    }
                    this.f3532c.f3201L.setAlpha(0.0f);
                }
            } else {
                Fragment fragment9 = this.f3532c;
                boolean z = false;
                if (visibility == 0) {
                    z = false;
                    if (fragment9.f3200K != null) {
                        z = true;
                    }
                }
                fragment9.f3206Q = z;
            }
        }
        this.f3532c.f3220e = 2;
    }

    /* renamed from: g */
    public void m32550g() {
        Fragment m32528f;
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        boolean z = true;
        boolean z2 = fragment.f3232q && !fragment.m32910o0();
        if (!(z2 || this.f3531b.m32519o().m32561o(this.f3532c))) {
            String str = this.f3532c.f3228m;
            if (str != null && (m32528f = this.f3531b.m32528f(str)) != null && m32528f.f3195F) {
                this.f3532c.f3227l = m32528f;
            }
            this.f3532c.f3220e = 0;
            return;
        }
        AbstractC0738h<?> abstractC0738h = this.f3532c.f3239x;
        if (abstractC0738h instanceof AbstractC0819u) {
            z = this.f3531b.m32519o().m32564l();
        } else if (abstractC0738h.m32593h() instanceof Activity) {
            z = true ^ ((Activity) abstractC0738h.m32593h()).isChangingConfigurations();
        }
        if (z2 || z) {
            this.f3531b.m32519o().m32570f(this.f3532c);
        }
        this.f3532c.m32915l1();
        this.f3530a.m32582d(this.f3532c, false);
        for (C0749p c0749p : this.f3531b.m32523k()) {
            if (c0749p != null) {
                Fragment m32546k = c0749p.m32546k();
                if (this.f3532c.f3225j.equals(m32546k.f3228m)) {
                    m32546k.f3227l = this.f3532c;
                    m32546k.f3228m = null;
                }
            }
        }
        Fragment fragment2 = this.f3532c;
        String str2 = fragment2.f3228m;
        if (str2 != null) {
            fragment2.f3227l = this.f3531b.m32528f(str2);
        }
        this.f3531b.m32517q(this);
    }

    /* renamed from: h */
    public void m32549h() {
        View view;
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f3532c);
        }
        Fragment fragment = this.f3532c;
        ViewGroup viewGroup = fragment.f3200K;
        if (viewGroup != null && (view = fragment.f3201L) != null) {
            viewGroup.removeView(view);
        }
        this.f3532c.m32913m1();
        this.f3530a.m32572n(this.f3532c, false);
        Fragment fragment2 = this.f3532c;
        fragment2.f3200K = null;
        fragment2.f3201L = null;
        fragment2.f3213X = null;
        fragment2.f3214Y.mo28960n(null);
        this.f3532c.f3234s = false;
    }

    /* renamed from: i */
    public void m32548i() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f3532c);
        }
        this.f3532c.m32911n1();
        this.f3530a.m32581e(this.f3532c, false);
        Fragment fragment = this.f3532c;
        fragment.f3220e = -1;
        fragment.f3239x = null;
        fragment.f3241z = null;
        fragment.f3238w = null;
        boolean z = false;
        if (fragment.f3232q) {
            z = false;
            if (!fragment.m32910o0()) {
                z = true;
            }
        }
        if (z || this.f3531b.m32519o().m32561o(this.f3532c)) {
            if (FragmentManager.m32848G0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f3532c);
            }
            this.f3532c.m32922i0();
        }
    }

    /* renamed from: j */
    public void m32547j() {
        Fragment fragment = this.f3532c;
        if (!fragment.f3233r || !fragment.f3234s || fragment.f3236u) {
            return;
        }
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f3532c);
        }
        Fragment fragment2 = this.f3532c;
        fragment2.mo32637k1(fragment2.m32909o1(fragment2.f3221f), null, this.f3532c.f3221f);
        View view = this.f3532c.f3201L;
        if (view == null) {
            return;
        }
        view.setSaveFromParentEnabled(false);
        Fragment fragment3 = this.f3532c;
        fragment3.f3201L.setTag(C1751b.fragment_container_view_tag, fragment3);
        Fragment fragment4 = this.f3532c;
        if (fragment4.f3193D) {
            fragment4.f3201L.setVisibility(8);
        }
        this.f3532c.m32995B1();
        C0741j c0741j = this.f3530a;
        Fragment fragment5 = this.f3532c;
        c0741j.m32573m(fragment5, fragment5.f3201L, fragment5.f3221f, false);
        this.f3532c.f3220e = 2;
    }

    /* renamed from: k */
    public Fragment m32546k() {
        return this.f3532c;
    }

    /* renamed from: m */
    public void m32544m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f3533d) {
            if (!FragmentManager.m32848G0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + m32546k());
            return;
        }
        try {
            this.f3533d = true;
            while (true) {
                int m32553d = m32553d();
                Fragment fragment = this.f3532c;
                int i = fragment.f3220e;
                if (m32553d == i) {
                    if (FragmentManager.f3287b && fragment.f3207R) {
                        if (fragment.f3201L != null && (viewGroup = fragment.f3200K) != null) {
                            SpecialEffectsController m32699n = SpecialEffectsController.m32699n(viewGroup, fragment.m32957R());
                            if (this.f3532c.f3193D) {
                                m32699n.m32709c(this);
                            } else {
                                m32699n.m32707e(this);
                            }
                        }
                        Fragment fragment2 = this.f3532c;
                        FragmentManager fragmentManager = fragment2.f3238w;
                        if (fragmentManager != null) {
                            fragmentManager.m32852E0(fragment2);
                        }
                        Fragment fragment3 = this.f3532c;
                        fragment3.f3207R = false;
                        fragment3.m32968N0(fragment3.f3193D);
                    }
                    return;
                } else if (m32553d > i) {
                    switch (i + 1) {
                        case 0:
                            m32554c();
                            continue;
                        case 1:
                            m32552e();
                            continue;
                        case 2:
                            m32547j();
                            m32551f();
                            continue;
                        case 3:
                            m32556a();
                            continue;
                        case 4:
                            if (fragment.f3201L != null && (viewGroup2 = fragment.f3200K) != null) {
                                SpecialEffectsController.m32699n(viewGroup2, fragment.m32957R()).m32710b(SpecialEffectsController.Operation.State.from(this.f3532c.f3201L.getVisibility()), this);
                            }
                            this.f3532c.f3220e = 4;
                            continue;
                        case 5:
                            m32535v();
                            continue;
                        case 6:
                            fragment.f3220e = 6;
                            continue;
                        case 7:
                            m32541p();
                            continue;
                    }
                } else {
                    switch (i - 1) {
                        case BuildConfig.VERSION_CODE /* -1 */:
                            m32548i();
                            continue;
                        case 0:
                            m32550g();
                            continue;
                        case 1:
                            m32549h();
                            this.f3532c.f3220e = 1;
                            continue;
                        case 2:
                            fragment.f3234s = false;
                            fragment.f3220e = 2;
                            continue;
                        case 3:
                            if (FragmentManager.m32848G0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f3532c);
                            }
                            Fragment fragment4 = this.f3532c;
                            if (fragment4.f3201L != null && fragment4.f3222g == null) {
                                m32537t();
                            }
                            Fragment fragment5 = this.f3532c;
                            if (fragment5.f3201L != null && (viewGroup3 = fragment5.f3200K) != null) {
                                SpecialEffectsController.m32699n(viewGroup3, fragment5.m32957R()).m32708d(this);
                            }
                            this.f3532c.f3220e = 3;
                            continue;
                        case 4:
                            m32534w();
                            continue;
                        case 5:
                            fragment.f3220e = 5;
                            continue;
                        case 6:
                            m32543n();
                            continue;
                    }
                }
            }
        } finally {
            this.f3533d = false;
        }
    }

    /* renamed from: n */
    public void m32543n() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f3532c);
        }
        this.f3532c.m32897t1();
        this.f3530a.m32580f(this.f3532c, false);
    }

    /* renamed from: o */
    public void m32542o(ClassLoader classLoader) {
        Bundle bundle = this.f3532c.f3221f;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f3532c;
        fragment.f3222g = fragment.f3221f.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f3532c;
        fragment2.f3223h = fragment2.f3221f.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f3532c;
        fragment3.f3228m = fragment3.f3221f.getString("android:target_state");
        Fragment fragment4 = this.f3532c;
        if (fragment4.f3228m != null) {
            fragment4.f3229n = fragment4.f3221f.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f3532c;
        Boolean bool = fragment5.f3224i;
        if (bool != null) {
            fragment5.f3203N = bool.booleanValue();
            this.f3532c.f3224i = null;
        } else {
            fragment5.f3203N = fragment5.f3221f.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f3532c;
        if (fragment6.f3203N) {
            return;
        }
        fragment6.f3202M = true;
    }

    /* renamed from: p */
    public void m32541p() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f3532c);
        }
        View m32979I = this.f3532c.m32979I();
        if (m32979I != null && m32545l(m32979I)) {
            boolean requestFocus = m32979I.requestFocus();
            if (FragmentManager.m32848G0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(m32979I);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f3532c);
                sb.append(" resulting in focused view ");
                sb.append(this.f3532c.f3201L.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.f3532c.m32969M1(null);
        this.f3532c.m32887x1();
        this.f3530a.m32577i(this.f3532c, false);
        Fragment fragment = this.f3532c;
        fragment.f3221f = null;
        fragment.f3222g = null;
        fragment.f3223h = null;
    }

    /* renamed from: r */
    public Fragment.SavedState m32539r() {
        Fragment.SavedState savedState = null;
        if (this.f3532c.f3220e > -1) {
            Bundle m32540q = m32540q();
            savedState = null;
            if (m32540q != null) {
                savedState = new Fragment.SavedState(m32540q);
            }
        }
        return savedState;
    }

    /* renamed from: s */
    public FragmentState m32538s() {
        FragmentState fragmentState = new FragmentState(this.f3532c);
        Fragment fragment = this.f3532c;
        if (fragment.f3220e <= -1 || fragmentState.f3375p != null) {
            fragmentState.f3375p = fragment.f3221f;
        } else {
            Bundle m32540q = m32540q();
            fragmentState.f3375p = m32540q;
            if (this.f3532c.f3228m != null) {
                if (m32540q == null) {
                    fragmentState.f3375p = new Bundle();
                }
                fragmentState.f3375p.putString("android:target_state", this.f3532c.f3228m);
                int i = this.f3532c.f3229n;
                if (i != 0) {
                    fragmentState.f3375p.putInt("android:target_req_state", i);
                }
            }
        }
        return fragmentState;
    }

    /* renamed from: t */
    public void m32537t() {
        if (this.f3532c.f3201L == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f3532c.f3201L.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f3532c.f3222g = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f3532c.f3213X.m32444g(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f3532c.f3223h = bundle;
    }

    /* renamed from: u */
    public void m32536u(int i) {
        this.f3534e = i;
    }

    /* renamed from: v */
    public void m32535v() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f3532c);
        }
        this.f3532c.m32882z1();
        this.f3530a.m32575k(this.f3532c, false);
    }

    /* renamed from: w */
    public void m32534w() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f3532c);
        }
        this.f3532c.m32997A1();
        this.f3530a.m32574l(this.f3532c, false);
    }
}
