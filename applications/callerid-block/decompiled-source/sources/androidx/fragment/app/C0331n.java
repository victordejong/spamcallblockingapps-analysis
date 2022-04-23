package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0373v;
import androidx.lifecycle.Lifecycle;
import d.h.m.t;
import d.m.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public class C0331n {

    /* renamed from: a */
    private final C0323i f1930a;

    /* renamed from: b */
    private final Fragment f1931b;

    /* renamed from: c */
    private int f1932c = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/n$a.class */
    public static /* synthetic */ class C0332a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1933a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f1933a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1933a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1933a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0331n(C0323i iVar, Fragment fragment) {
        this.f1930a = iVar;
        this.f1931b = fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0331n(C0323i iVar, Fragment fragment, FragmentState fragmentState) {
        this.f1930a = iVar;
        this.f1931b = fragment;
        fragment.d = null;
        fragment.r = 0;
        fragment.o = false;
        fragment.l = false;
        Fragment fragment2 = fragment.h;
        fragment.i = fragment2 != null ? fragment2.f : null;
        fragment.h = null;
        Bundle bundle = fragmentState.f1853n;
        fragment.c = bundle == null ? new Bundle() : bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0331n(C0323i iVar, ClassLoader classLoader, C0321f fVar, FragmentState fragmentState) {
        this.f1930a = iVar;
        Fragment a = fVar.m13271a(classLoader, fragmentState.f1841b);
        this.f1931b = a;
        Bundle bundle = fragmentState.f1850k;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        a.r1(fragmentState.f1850k);
        a.f = fragmentState.f1842c;
        a.n = fragmentState.f1843d;
        a.p = true;
        a.w = fragmentState.f1844e;
        a.x = fragmentState.f1845f;
        a.y = fragmentState.f1846g;
        a.B = fragmentState.f1847h;
        a.m = fragmentState.f1848i;
        a.A = fragmentState.f1849j;
        a.z = fragmentState.f1851l;
        a.Q = Lifecycle.State.values()[fragmentState.f1852m];
        Bundle bundle2 = fragmentState.f1853n;
        a.c = bundle2 == null ? new Bundle() : bundle2;
        if (AbstractC0325j.m13169q0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a);
        }
    }

    /* renamed from: n */
    private Bundle m13121n() {
        Bundle bundle = new Bundle();
        this.f1931b.h1(bundle);
        this.f1930a.m13258j(this.f1931b, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f1931b.H != null) {
            m13119p();
        }
        Bundle bundle3 = bundle2;
        if (this.f1931b.d != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f1931b.d);
        }
        Bundle bundle4 = bundle3;
        if (!this.f1931b.J) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBoolean("android:user_visible_hint", this.f1931b.J);
        }
        return bundle4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m13134a() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f1931b);
        }
        Fragment fragment = this.f1931b;
        fragment.N0(fragment.c);
        C0323i iVar = this.f1930a;
        Fragment fragment2 = this.f1931b;
        iVar.m13267a(fragment2, fragment2.c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m13133b(g<?> gVar, AbstractC0325j jVar, Fragment fragment) {
        Fragment fragment2 = this.f1931b;
        fragment2.t = gVar;
        fragment2.v = fragment;
        fragment2.s = jVar;
        this.f1930a.m13261g(fragment2, gVar.h(), false);
        this.f1931b.O0();
        Fragment fragment3 = this.f1931b;
        Fragment fragment4 = fragment3.v;
        if (fragment4 == null) {
            gVar.j(fragment3);
        } else {
            fragment4.k0(fragment3);
        }
        this.f1930a.m13266b(this.f1931b, gVar.h(), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m13132c() {
        int i = this.f1932c;
        Fragment fragment = this.f1931b;
        int i2 = i;
        if (fragment.n) {
            i2 = fragment.o ? Math.max(i, 1) : Math.min(i, 1);
        }
        int i3 = i2;
        if (!this.f1931b.l) {
            i3 = Math.min(i2, 1);
        }
        Fragment fragment2 = this.f1931b;
        int i4 = i3;
        if (fragment2.m) {
            i4 = fragment2.a0() ? Math.min(i3, 1) : Math.min(i3, -1);
        }
        Fragment fragment3 = this.f1931b;
        int i5 = i4;
        if (fragment3.I) {
            i5 = i4;
            if (fragment3.b < 3) {
                i5 = Math.min(i4, 2);
            }
        }
        int i6 = C0332a.f1933a[this.f1931b.Q.ordinal()];
        int i7 = i5;
        if (i6 != 1) {
            i7 = i6 != 2 ? i6 != 3 ? Math.min(i5, -1) : Math.min(i5, 1) : Math.min(i5, 3);
        }
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m13131d() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f1931b);
        }
        Fragment fragment = this.f1931b;
        if (!fragment.P) {
            this.f1930a.m13260h(fragment, fragment.c, false);
            Fragment fragment2 = this.f1931b;
            fragment2.R0(fragment2.c);
            C0323i iVar = this.f1930a;
            Fragment fragment3 = this.f1931b;
            iVar.m13265c(fragment3, fragment3.c, false);
            return;
        }
        fragment.n1(fragment.c);
        this.f1931b.b = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m13130e(AbstractC0319d dVar) {
        String str;
        if (!this.f1931b.n) {
            if (AbstractC0325j.m13169q0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f1931b);
            }
            ViewGroup viewGroup = null;
            Fragment fragment = this.f1931b;
            ViewGroup viewGroup2 = fragment.G;
            if (viewGroup2 != null) {
                viewGroup = viewGroup2;
            } else {
                int i = fragment.x;
                if (i != 0) {
                    if (i != -1) {
                        ViewGroup viewGroup3 = (ViewGroup) dVar.m13298e(i);
                        viewGroup = viewGroup3;
                        if (viewGroup3 == null) {
                            Fragment fragment2 = this.f1931b;
                            if (fragment2.p) {
                                viewGroup = viewGroup3;
                            } else {
                                try {
                                    str = fragment2.J().getResourceName(this.f1931b.x);
                                } catch (Resources.NotFoundException e) {
                                    str = "unknown";
                                }
                                throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f1931b.x) + " (" + str + ") for fragment " + this.f1931b);
                            }
                        }
                    } else {
                        throw new IllegalArgumentException("Cannot create fragment " + this.f1931b + " for a container view with no id");
                    }
                }
            }
            Fragment fragment3 = this.f1931b;
            fragment3.G = viewGroup;
            fragment3.T0(fragment3.X0(fragment3.c), viewGroup, this.f1931b.c);
            View view = this.f1931b.H;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment4 = this.f1931b;
                fragment4.H.setTag(b.fragment_container_view_tag, fragment4);
                if (viewGroup != null) {
                    viewGroup.addView(this.f1931b.H);
                }
                Fragment fragment5 = this.f1931b;
                if (fragment5.z) {
                    fragment5.H.setVisibility(8);
                }
                t.k0(this.f1931b.H);
                Fragment fragment6 = this.f1931b;
                fragment6.L0(fragment6.H, fragment6.c);
                C0323i iVar = this.f1930a;
                Fragment fragment7 = this.f1931b;
                iVar.m13255m(fragment7, fragment7.H, fragment7.c, false);
                Fragment fragment8 = this.f1931b;
                boolean z = false;
                if (fragment8.H.getVisibility() == 0) {
                    z = false;
                    if (this.f1931b.G != null) {
                        z = true;
                    }
                }
                fragment8.L = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m13129f(g<?> gVar, l lVar) {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f1931b);
        }
        Fragment fragment = this.f1931b;
        boolean z = true;
        boolean z2 = fragment.m && !fragment.a0();
        if (z2 || lVar.n(this.f1931b)) {
            if (gVar instanceof AbstractC0373v) {
                z = lVar.l();
            } else if (gVar.h() instanceof Activity) {
                z = true ^ ((Activity) gVar.h()).isChangingConfigurations();
            }
            if (z2 || z) {
                lVar.f(this.f1931b);
            }
            this.f1931b.U0();
            this.f1930a.m13264d(this.f1931b, false);
            return;
        }
        this.f1931b.b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m13128g(l lVar) {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f1931b);
        }
        this.f1931b.W0();
        this.f1930a.m13263e(this.f1931b, false);
        Fragment fragment = this.f1931b;
        fragment.b = -1;
        fragment.t = null;
        fragment.v = null;
        fragment.s = null;
        boolean z = false;
        if (fragment.m) {
            z = false;
            if (!fragment.a0()) {
                z = true;
            }
        }
        if (z || lVar.n(this.f1931b)) {
            if (AbstractC0325j.m13169q0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f1931b);
            }
            this.f1931b.U();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m13127h() {
        Fragment fragment = this.f1931b;
        if (fragment.n && fragment.o && !fragment.q) {
            if (AbstractC0325j.m13169q0(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f1931b);
            }
            Fragment fragment2 = this.f1931b;
            fragment2.T0(fragment2.X0(fragment2.c), (ViewGroup) null, this.f1931b.c);
            View view = this.f1931b.H;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f1931b;
                if (fragment3.z) {
                    fragment3.H.setVisibility(8);
                }
                Fragment fragment4 = this.f1931b;
                fragment4.L0(fragment4.H, fragment4.c);
                C0323i iVar = this.f1930a;
                Fragment fragment5 = this.f1931b;
                iVar.m13255m(fragment5, fragment5.H, fragment5.c, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public Fragment m13126i() {
        return this.f1931b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m13125j() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f1931b);
        }
        this.f1931b.c1();
        this.f1930a.m13262f(this.f1931b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m13124k(ClassLoader classLoader) {
        Bundle bundle = this.f1931b.c;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            Fragment fragment = this.f1931b;
            fragment.d = fragment.c.getSparseParcelableArray("android:view_state");
            Fragment fragment2 = this.f1931b;
            fragment2.i = fragment2.c.getString("android:target_state");
            Fragment fragment3 = this.f1931b;
            if (fragment3.i != null) {
                fragment3.j = fragment3.c.getInt("android:target_req_state", 0);
            }
            Fragment fragment4 = this.f1931b;
            Boolean bool = fragment4.e;
            if (bool != null) {
                fragment4.J = bool.booleanValue();
                this.f1931b.e = null;
            } else {
                fragment4.J = fragment4.c.getBoolean("android:user_visible_hint", true);
            }
            Fragment fragment5 = this.f1931b;
            if (!fragment5.J) {
                fragment5.I = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m13123l() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this.f1931b);
        }
        Fragment fragment = this.f1931b;
        if (fragment.H != null) {
            fragment.o1(fragment.c);
        }
        this.f1931b.c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m13122m() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f1931b);
        }
        this.f1931b.g1();
        this.f1930a.m13259i(this.f1931b, false);
        Fragment fragment = this.f1931b;
        fragment.c = null;
        fragment.d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public FragmentState m13120o() {
        FragmentState fragmentState = new FragmentState(this.f1931b);
        Fragment fragment = this.f1931b;
        if (fragment.b <= -1 || fragmentState.f1853n != null) {
            fragmentState.f1853n = fragment.c;
        } else {
            Bundle n = m13121n();
            fragmentState.f1853n = n;
            if (this.f1931b.i != null) {
                if (n == null) {
                    fragmentState.f1853n = new Bundle();
                }
                fragmentState.f1853n.putString("android:target_state", this.f1931b.i);
                int i = this.f1931b.j;
                if (i != 0) {
                    fragmentState.f1853n.putInt("android:target_req_state", i);
                }
            }
        }
        return fragmentState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m13119p() {
        if (this.f1931b.H != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f1931b.H.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                this.f1931b.d = sparseArray;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m13118q(int i) {
        this.f1932c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m13117r() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f1931b);
        }
        this.f1931b.i1();
        this.f1930a.m13257k(this.f1931b, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m13116s() {
        if (AbstractC0325j.m13169q0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f1931b);
        }
        this.f1931b.j1();
        this.f1930a.m13256l(this.f1931b, false);
    }
}
