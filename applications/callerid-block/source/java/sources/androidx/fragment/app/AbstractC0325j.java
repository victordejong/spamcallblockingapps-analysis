package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.AbstractC0068b;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.c;
import androidx.fragment.app.C0313c;
import androidx.fragment.app.C0336q;
import androidx.lifecycle.AbstractC0373v;
import androidx.lifecycle.C0372u;
import androidx.lifecycle.Lifecycle;
import d.e.b;
import d.h.i.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public abstract class AbstractC0325j {

    /* renamed from: F */
    private static boolean f1894F = false;

    /* renamed from: A */
    private ArrayList<Boolean> f1895A;

    /* renamed from: B */
    private ArrayList<Fragment> f1896B;

    /* renamed from: C */
    private ArrayList<j> f1897C;

    /* renamed from: D */
    private l f1898D;

    /* renamed from: b */
    private boolean f1901b;

    /* renamed from: d */
    ArrayList<a> f1903d;

    /* renamed from: e */
    private ArrayList<Fragment> f1904e;

    /* renamed from: g */
    private OnBackPressedDispatcher f1906g;

    /* renamed from: j */
    private ArrayList<AbstractC0329g> f1909j;

    /* renamed from: o */
    g<?> f1914o;

    /* renamed from: p */
    AbstractC0319d f1915p;

    /* renamed from: q */
    private Fragment f1916q;

    /* renamed from: r */
    Fragment f1917r;

    /* renamed from: u */
    private boolean f1920u;

    /* renamed from: v */
    private boolean f1921v;

    /* renamed from: w */
    private boolean f1922w;

    /* renamed from: x */
    private boolean f1923x;

    /* renamed from: y */
    private boolean f1924y;

    /* renamed from: z */
    private ArrayList<a> f1925z;

    /* renamed from: a */
    private final ArrayList<AbstractC0330h> f1900a = new ArrayList<>();

    /* renamed from: c */
    private final C0333o f1902c = new C0333o();

    /* renamed from: f */
    private final LayoutInflater$Factory2C0322h f1905f = new LayoutInflater$Factory2C0322h(this);

    /* renamed from: h */
    private final AbstractC0068b f1907h = new a(this, false);

    /* renamed from: i */
    private final AtomicInteger f1908i = new AtomicInteger();

    /* renamed from: k */
    private ConcurrentHashMap<Fragment, HashSet<a>> f1910k = new ConcurrentHashMap<>();

    /* renamed from: l */
    private final C0336q.AbstractC0343g f1911l = new b(this);

    /* renamed from: m */
    private final C0323i f1912m = new C0323i(this);

    /* renamed from: n */
    int f1913n = -1;

    /* renamed from: s */
    private C0321f f1918s = null;

    /* renamed from: t */
    private C0321f f1919t = new c(this);

    /* renamed from: E */
    private Runnable f1899E = new RunnableC0326d();

    /* renamed from: androidx.fragment.app.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$d.class */
    class RunnableC0326d implements Runnable {
        RunnableC0326d() {
            AbstractC0325j.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0325j.this.m13221Q(true);
        }
    }

    /* renamed from: androidx.fragment.app.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$e.class */
    public class C0327e extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1927a;

        /* renamed from: b */
        final /* synthetic */ View f1928b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1929c;

        C0327e(AbstractC0325j abstractC0325j, ViewGroup viewGroup, View view, Fragment fragment) {
            this.f1927a = viewGroup;
            this.f1928b = view;
            this.f1929c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1927a.endViewTransition(this.f1928b);
            animator.removeListener(this);
            Fragment fragment = this.f1929c;
            View view = fragment.H;
            if (view == null || !fragment.z) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* renamed from: androidx.fragment.app.j$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$f.class */
    public static abstract class AbstractC0328f {
        /* renamed from: a */
        public abstract void m13150a(AbstractC0325j abstractC0325j, Fragment fragment, Bundle bundle);

        /* renamed from: b */
        public abstract void m13149b(AbstractC0325j abstractC0325j, Fragment fragment, Context context);

        /* renamed from: c */
        public abstract void m13148c(AbstractC0325j abstractC0325j, Fragment fragment, Bundle bundle);

        /* renamed from: d */
        public abstract void m13147d(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: e */
        public abstract void m13146e(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: f */
        public abstract void m13145f(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: g */
        public abstract void m13144g(AbstractC0325j abstractC0325j, Fragment fragment, Context context);

        /* renamed from: h */
        public abstract void m13143h(AbstractC0325j abstractC0325j, Fragment fragment, Bundle bundle);

        /* renamed from: i */
        public abstract void m13142i(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: j */
        public abstract void m13141j(AbstractC0325j abstractC0325j, Fragment fragment, Bundle bundle);

        /* renamed from: k */
        public abstract void m13140k(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: l */
        public abstract void m13139l(AbstractC0325j abstractC0325j, Fragment fragment);

        /* renamed from: m */
        public abstract void m13138m(AbstractC0325j abstractC0325j, Fragment fragment, View view, Bundle bundle);

        /* renamed from: n */
        public abstract void m13137n(AbstractC0325j abstractC0325j, Fragment fragment);
    }

    /* renamed from: androidx.fragment.app.j$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$g.class */
    public interface AbstractC0329g {
        /* renamed from: a */
        void m13136a();
    }

    /* renamed from: androidx.fragment.app.j$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$h.class */
    public interface AbstractC0330h {
        /* renamed from: a */
        boolean m13135a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: C */
    private void m13249C(Fragment fragment) {
        if (fragment == null || !fragment.equals(m13209W(fragment.f))) {
            return;
        }
        fragment.f1();
    }

    /* renamed from: G0 */
    private boolean m13240G0(String str, int i, int i2) {
        m13221Q(false);
        m13223P(true);
        Fragment fragment = this.f1917r;
        if (fragment == null || i >= 0 || str != null || !fragment.v().m13242F0()) {
            boolean m13238H0 = m13238H0(this.f1925z, this.f1895A, str, i, i2);
            if (m13238H0) {
                this.f1901b = true;
                try {
                    m13230L0(this.f1925z, this.f1895A);
                } finally {
                    m13178m();
                }
            }
            m13204Y0();
            m13231L();
            this.f1902c.m13114b();
            return m13238H0;
        }
        return true;
    }

    /* renamed from: I0 */
    private int m13236I0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, b<Fragment> bVar) {
        int i3 = i2 - 1;
        int i4 = i2;
        while (true) {
            int i5 = i4;
            if (i3 >= i) {
                a aVar = arrayList.get(i3);
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                int i6 = i5;
                if (aVar.A() && !aVar.y(arrayList, i3 + 1, i2)) {
                    if (this.f1897C == null) {
                        this.f1897C = new ArrayList<>();
                    }
                    j jVar = new j(aVar, booleanValue);
                    this.f1897C.add(jVar);
                    aVar.C(jVar);
                    if (booleanValue) {
                        aVar.t();
                    } else {
                        aVar.u(false);
                    }
                    i6 = i5 - 1;
                    if (i3 != i6) {
                        arrayList.remove(i3);
                        arrayList.add(i6, aVar);
                    }
                    m13202a(bVar);
                }
                i3--;
                i4 = i6;
            } else {
                return i5;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: J */
    private void m13235J(int i) {
        try {
            this.f1901b = true;
            this.f1902c.m13112d(i);
            m13151z0(i, false);
            this.f1901b = false;
            m13221Q(true);
        } catch (Throwable th) {
            this.f1901b = false;
            throw th;
        }
    }

    /* renamed from: L */
    private void m13231L() {
        if (this.f1924y) {
            this.f1924y = false;
            m13206X0();
        }
    }

    /* renamed from: L0 */
    private void m13230L0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m13211V(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= size) {
                break;
            }
            int i4 = i2;
            int i5 = i;
            if (!arrayList.get(i2).f1950o) {
                if (i != i2) {
                    m13215T(arrayList, arrayList2, i, i2);
                }
                int i6 = i2 + 1;
                i5 = i6;
                if (arrayList2.get(i2).booleanValue()) {
                    while (true) {
                        i5 = i6;
                        if (i6 >= size) {
                            break;
                        }
                        i5 = i6;
                        if (!arrayList2.get(i6).booleanValue()) {
                            break;
                        }
                        i5 = i6;
                        if (arrayList.get(i6).f1950o) {
                            break;
                        }
                        i6++;
                    }
                }
                m13215T(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m13215T(arrayList, arrayList2, i, size);
    }

    /* renamed from: N */
    private void m13227N() {
        if (!this.f1910k.isEmpty()) {
            for (Fragment fragment : this.f1910k.keySet()) {
                m13184j(fragment);
                m13250B0(fragment, fragment.O());
            }
        }
    }

    /* renamed from: N0 */
    private void m13226N0() {
        if (this.f1909j != null) {
            for (int i = 0; i < this.f1909j.size(); i++) {
                this.f1909j.get(i).m13136a();
            }
        }
    }

    /* renamed from: P */
    private void m13223P(boolean z) {
        if (!this.f1901b) {
            if (this.f1914o == null) {
                if (!this.f1923x) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f1914o.i().getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z) {
                    m13180l();
                }
                if (this.f1925z == null) {
                    this.f1925z = new ArrayList<>();
                    this.f1895A = new ArrayList<>();
                }
                this.f1901b = true;
                try {
                    m13211V(null, null);
                    return;
                } finally {
                    this.f1901b = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: P0 */
    static int m13222P0(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: S */
    private static void m13217S(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            a aVar = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                aVar.p(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                aVar.u(z);
            } else {
                aVar.p(1);
                aVar.t();
            }
            i++;
        }
    }

    /* renamed from: T */
    private void m13215T(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f1950o;
        ArrayList<Fragment> arrayList3 = this.f1896B;
        if (arrayList3 == null) {
            this.f1896B = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f1896B.addAll(this.f1902c.m13103m());
        Fragment m13181k0 = m13181k0();
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            a aVar = arrayList.get(i4);
            m13181k0 = !arrayList2.get(i4).booleanValue() ? aVar.v(this.f1896B, m13181k0) : aVar.D(this.f1896B, m13181k0);
            z2 = z2 || aVar.f1942g;
        }
        this.f1896B.clear();
        if (!z) {
            C0336q.m13079C(this, arrayList, arrayList2, i, i2, false, this.f1911l);
        }
        m13217S(arrayList, arrayList2, i, i2);
        if (z) {
            b<Fragment> bVar = new b<>();
            m13202a(bVar);
            i3 = m13236I0(arrayList, arrayList2, i, i2, bVar);
            m13155x0(bVar);
        } else {
            i3 = i2;
        }
        int i5 = i;
        if (i3 != i) {
            i5 = i;
            if (z) {
                C0336q.m13079C(this, arrayList, arrayList2, i, i3, true, this.f1911l);
                m13151z0(this.f1913n, true);
                i5 = i;
            }
        }
        while (i5 < i2) {
            a aVar2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && aVar2.s >= 0) {
                aVar2.s = -1;
            }
            aVar2.B();
            i5++;
        }
        if (z2) {
            m13226N0();
        }
    }

    /* renamed from: V */
    private void m13211V(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<j> arrayList3 = this.f1897C;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                j jVar = this.f1897C.get(i3);
                if (arrayList == null || jVar.a || (indexOf2 = arrayList.indexOf(jVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!jVar.e()) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!jVar.b.y(arrayList, 0, arrayList.size())) {
                            }
                        }
                        i2 = i + 1;
                    }
                    this.f1897C.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || jVar.a || (indexOf = arrayList.indexOf(jVar.b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        jVar.d();
                        i2 = i + 1;
                    }
                } else {
                    this.f1897C.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                }
                jVar.c();
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: V0 */
    private void m13210V0(Fragment fragment) {
        ViewGroup m13193e0 = m13193e0(fragment);
        if (m13193e0 != null) {
            int i = d.m.b.visible_removing_fragment_view_tag;
            if (m13193e0.getTag(i) == null) {
                m13193e0.setTag(i, fragment);
            }
            ((Fragment) m13193e0.getTag(i)).u1(fragment.E());
        }
    }

    /* renamed from: X0 */
    private void m13206X0() {
        for (Fragment fragment : this.f1902c.m13105k()) {
            if (fragment != null) {
                m13246D0(fragment);
            }
        }
    }

    /* renamed from: Y0 */
    private void m13204Y0() {
        synchronized (this.f1900a) {
            boolean z = true;
            if (!this.f1900a.isEmpty()) {
                this.f1907h.m15003f(true);
                return;
            }
            AbstractC0068b abstractC0068b = this.f1907h;
            if (m13197c0() <= 0 || !m13165s0(this.f1916q)) {
                z = false;
            }
            abstractC0068b.m15003f(z);
        }
    }

    /* renamed from: a */
    private void m13202a(b<Fragment> bVar) {
        int i = this.f1913n;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 3);
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment.b < min) {
                m13250B0(fragment, min);
                if (fragment.H != null && !fragment.z && fragment.L) {
                    bVar.add(fragment);
                }
            }
        }
    }

    /* renamed from: a0 */
    private void m13201a0() {
        if (this.f1897C != null) {
            while (!this.f1897C.isEmpty()) {
                this.f1897C.remove(0).d();
            }
        }
    }

    /* renamed from: b0 */
    private boolean m13199b0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f1900a) {
            try {
                if (this.f1900a.isEmpty()) {
                    return false;
                }
                int size = this.f1900a.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f1900a.get(i).m13135a(arrayList, arrayList2);
                }
                this.f1900a.clear();
                this.f1914o.i().removeCallbacks(this.f1899E);
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d0 */
    private l m13195d0(Fragment fragment) {
        return this.f1898D.h(fragment);
    }

    /* renamed from: e0 */
    private ViewGroup m13193e0(Fragment fragment) {
        if (fragment.x > 0 && this.f1915p.m13297f()) {
            View m13298e = this.f1915p.m13298e(fragment.x);
            if (!(m13298e instanceof ViewGroup)) {
                return null;
            }
            return (ViewGroup) m13298e;
        }
        return null;
    }

    /* renamed from: j */
    private void m13184j(Fragment fragment) {
        HashSet<a> hashSet = this.f1910k.get(fragment);
        if (hashSet != null) {
            Iterator<a> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            hashSet.clear();
            m13172p(fragment);
            this.f1910k.remove(fragment);
        }
    }

    /* renamed from: l */
    private void m13180l() {
        if (!m13161u0()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: l0 */
    public static Fragment m13179l0(View view) {
        Object tag = view.getTag(d.m.b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* renamed from: m */
    private void m13178m() {
        this.f1901b = false;
        this.f1895A.clear();
        this.f1925z.clear();
    }

    /* renamed from: o */
    private void m13174o(Fragment fragment) {
        Animator animator;
        if (fragment.H != null) {
            C0313c.C0317d m13301b = C0313c.m13301b(this.f1914o.h(), this.f1915p, fragment, !fragment.z);
            if (m13301b == null || (animator = m13301b.f1881b) == null) {
                if (m13301b != null) {
                    fragment.H.startAnimation(m13301b.f1880a);
                    m13301b.f1880a.start();
                }
                fragment.H.setVisibility((!fragment.z || fragment.Z()) ? 0 : 8);
                if (fragment.Z()) {
                    fragment.s1(false);
                }
            } else {
                animator.setTarget(fragment.H);
                if (!fragment.z) {
                    fragment.H.setVisibility(0);
                } else if (fragment.Z()) {
                    fragment.s1(false);
                } else {
                    ViewGroup viewGroup = fragment.G;
                    View view = fragment.H;
                    viewGroup.startViewTransition(view);
                    m13301b.f1881b.addListener(new C0327e(this, viewGroup, view, fragment));
                }
                m13301b.f1881b.start();
            }
        }
        if (fragment.l && m13167r0(fragment)) {
            this.f1920u = true;
        }
        fragment.M = false;
        fragment.w0(fragment.z);
    }

    /* renamed from: p */
    private void m13172p(Fragment fragment) {
        fragment.V0();
        this.f1912m.m13254n(fragment, false);
        fragment.G = null;
        fragment.H = null;
        fragment.S = null;
        fragment.T.i((Object) null);
        fragment.o = false;
    }

    /* renamed from: q0 */
    public static boolean m13169q0(int i) {
        return f1894F || Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: r0 */
    private boolean m13167r0(Fragment fragment) {
        return (fragment.D && fragment.E) || fragment.u.m13182k();
    }

    /* renamed from: w0 */
    private void m13157w0(C0331n c0331n) {
        Fragment m13126i = c0331n.m13126i();
        if (!this.f1902c.m13113c(m13126i.f)) {
            return;
        }
        if (m13169q0(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + m13126i);
        }
        this.f1902c.m13101o(c0331n);
        m13228M0(m13126i);
    }

    /* renamed from: x0 */
    private void m13155x0(b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) bVar.A(i);
            if (!fragment.l) {
                View m1 = fragment.m1();
                fragment.N = m1.getAlpha();
                m1.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: A */
    public boolean m13253A(MenuItem menuItem) {
        if (this.f1913n < 1) {
            return false;
        }
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null && fragment.a1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A0 */
    public void m13252A0(Fragment fragment) {
        m13250B0(fragment, this.f1913n);
    }

    /* renamed from: B */
    public void m13251B(Menu menu) {
        if (this.f1913n < 1) {
            return;
        }
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.b1(menu);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01df  */
    /* renamed from: B0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13250B0(androidx.fragment.app.Fragment r6, int r7) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.AbstractC0325j.m13250B0(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: C0 */
    public void m13248C0() {
        this.f1921v = false;
        this.f1922w = false;
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.f0();
            }
        }
    }

    /* renamed from: D */
    public void m13247D() {
        m13235J(3);
    }

    /* renamed from: D0 */
    void m13246D0(Fragment fragment) {
        if (fragment.I) {
            if (this.f1901b) {
                this.f1924y = true;
                return;
            }
            fragment.I = false;
            m13250B0(fragment, this.f1913n);
        }
    }

    /* renamed from: E */
    public void m13245E(boolean z) {
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.d1(z);
            }
        }
    }

    /* renamed from: E0 */
    public void m13244E0(int i, int i2) {
        if (i >= 0) {
            m13225O(new i(this, (String) null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: F */
    public boolean m13243F(Menu menu) {
        boolean z = false;
        if (this.f1913n < 1) {
            return false;
        }
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null && fragment.e1(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: F0 */
    public boolean m13242F0() {
        return m13240G0(null, -1, 0);
    }

    /* renamed from: G */
    void m13241G() {
        m13204Y0();
        m13249C(this.f1917r);
    }

    /* renamed from: H */
    public void m13239H() {
        this.f1921v = false;
        this.f1922w = false;
        m13235J(4);
    }

    /* renamed from: H0 */
    boolean m13238H0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<a> arrayList3 = this.f1903d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1903d.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                a aVar = this.f1903d.get(size2);
                if ((str != null && str.equals(aVar.w())) || (i >= 0 && i == aVar.s)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            int i4 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i5 = size2 - 1;
                    i4 = i5;
                    if (i5 < 0) {
                        break;
                    }
                    a aVar2 = this.f1903d.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(aVar2.w())) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != aVar2.s) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        } else {
            i3 = -1;
        }
        if (i3 == this.f1903d.size() - 1) {
            return false;
        }
        for (int size3 = this.f1903d.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f1903d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* renamed from: I */
    public void m13237I() {
        this.f1921v = false;
        this.f1922w = false;
        m13235J(3);
    }

    /* renamed from: J0 */
    void m13234J0(Fragment fragment, a aVar) {
        HashSet<a> hashSet = this.f1910k.get(fragment);
        if (hashSet == null || !hashSet.remove(aVar) || !hashSet.isEmpty()) {
            return;
        }
        this.f1910k.remove(fragment);
        if (fragment.b >= 3) {
            return;
        }
        m13172p(fragment);
        m13250B0(fragment, fragment.O());
    }

    /* renamed from: K */
    public void m13233K() {
        this.f1922w = true;
        m13235J(2);
    }

    /* renamed from: K0 */
    void m13232K0(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.r);
        }
        boolean a0 = fragment.a0();
        if (!fragment.A || (!a0)) {
            this.f1902c.m13100p(fragment);
            if (m13167r0(fragment)) {
                this.f1920u = true;
            }
            fragment.m = true;
            m13210V0(fragment);
        }
    }

    /* renamed from: M */
    public void m13229M(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f1902c.m13111e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f1904e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f1904e.get(i).toString());
            }
        }
        ArrayList<a> arrayList2 = this.f1903d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.f1903d.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.r(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1908i.get());
        synchronized (this.f1900a) {
            try {
                int size3 = this.f1900a.size();
                if (size3 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i3 = 0; i3 < size3; i3++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i3);
                        printWriter.print(": ");
                        printWriter.println(this.f1900a.get(i3));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1914o);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1915p);
        if (this.f1916q != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1916q);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1913n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1921v);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1922w);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1923x);
        if (this.f1920u) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1920u);
        }
    }

    /* renamed from: M0 */
    void m13228M0(Fragment fragment) {
        if (m13161u0()) {
            if (!m13169q0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
        } else if (!this.f1898D.m(fragment) || !m13169q0(2)) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* renamed from: O */
    void m13225O(AbstractC0330h abstractC0330h, boolean z) {
        if (!z) {
            if (this.f1914o == null) {
                if (!this.f1923x) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m13180l();
        }
        synchronized (this.f1900a) {
            if (this.f1914o == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f1900a.add(abstractC0330h);
            m13218R0();
        }
    }

    /* renamed from: O0 */
    public void m13224O0(Parcelable parcelable) {
        C0331n c0331n;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f1836b == null) {
            return;
        }
        this.f1902c.m13099q();
        Iterator<FragmentState> it = fragmentManagerState.f1836b.iterator();
        while (it.hasNext()) {
            FragmentState next = it.next();
            if (next != null) {
                Fragment g = this.f1898D.g(next.f1842c);
                if (g != null) {
                    if (m13169q0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + g);
                    }
                    c0331n = new C0331n(this.f1912m, g, next);
                } else {
                    c0331n = new C0331n(this.f1912m, this.f1914o.h().getClassLoader(), m13191f0(), next);
                }
                Fragment m13126i = c0331n.m13126i();
                m13126i.s = this;
                if (m13169q0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m13126i.f + "): " + m13126i);
                }
                c0331n.m13124k(this.f1914o.h().getClassLoader());
                this.f1902c.m13102n(c0331n);
                c0331n.m13118q(this.f1913n);
            }
        }
        for (Fragment fragment : this.f1898D.j()) {
            if (!this.f1902c.m13113c(fragment.f)) {
                if (m13169q0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f1836b);
                }
                m13250B0(fragment, 1);
                fragment.m = true;
                m13250B0(fragment, -1);
            }
        }
        this.f1902c.m13098r(fragmentManagerState.f1837c);
        if (fragmentManagerState.f1838d != null) {
            this.f1903d = new ArrayList<>(fragmentManagerState.f1838d.length);
            int i = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f1838d;
                if (i >= backStackStateArr.length) {
                    break;
                }
                a m13322a = backStackStateArr[i].m13322a(this);
                if (m13169q0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m13322a.s + "): " + m13322a);
                    PrintWriter printWriter = new PrintWriter((Writer) new d.h.l.b("FragmentManager"));
                    m13322a.s("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1903d.add(m13322a);
                i++;
            }
        } else {
            this.f1903d = null;
        }
        this.f1908i.set(fragmentManagerState.f1839e);
        String str = fragmentManagerState.f1840f;
        if (str == null) {
            return;
        }
        Fragment m13209W = m13209W(str);
        this.f1917r = m13209W;
        m13249C(m13209W);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: Q */
    public boolean m13221Q(boolean z) {
        m13223P(z);
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (!m13199b0(this.f1925z, this.f1895A)) {
                m13204Y0();
                m13231L();
                this.f1902c.m13114b();
                return z3;
            }
            this.f1901b = true;
            try {
                m13230L0(this.f1925z, this.f1895A);
                m13178m();
                z2 = true;
            } catch (Throwable th) {
                m13178m();
                throw th;
            }
        }
    }

    /* renamed from: Q0 */
    public Parcelable m13220Q0() {
        m13201a0();
        m13227N();
        m13221Q(true);
        this.f1921v = true;
        ArrayList<FragmentState> m13097s = this.f1902c.m13097s();
        if (m13097s.isEmpty()) {
            if (!m13169q0(2)) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        ArrayList<String> m13096t = this.f1902c.m13096t();
        ArrayList<a> arrayList = this.f1903d;
        BackStackState[] backStackStateArr = null;
        if (arrayList != null) {
            int size = arrayList.size();
            backStackStateArr = null;
            if (size > 0) {
                BackStackState[] backStackStateArr2 = new BackStackState[size];
                int i = 0;
                while (true) {
                    backStackStateArr = backStackStateArr2;
                    if (i >= size) {
                        break;
                    }
                    backStackStateArr2[i] = new BackStackState(this.f1903d.get(i));
                    if (m13169q0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f1903d.get(i));
                    }
                    i++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f1836b = m13097s;
        fragmentManagerState.f1837c = m13096t;
        fragmentManagerState.f1838d = backStackStateArr;
        fragmentManagerState.f1839e = this.f1908i.get();
        Fragment fragment = this.f1917r;
        if (fragment != null) {
            fragmentManagerState.f1840f = fragment.f;
        }
        return fragmentManagerState;
    }

    /* renamed from: R */
    void m13219R(AbstractC0330h abstractC0330h, boolean z) {
        if (!z || (this.f1914o != null && !this.f1923x)) {
            m13223P(z);
            if (abstractC0330h.m13135a(this.f1925z, this.f1895A)) {
                this.f1901b = true;
                try {
                    m13230L0(this.f1925z, this.f1895A);
                } finally {
                    m13178m();
                }
            }
            m13204Y0();
            m13231L();
            this.f1902c.m13114b();
        }
    }

    /* renamed from: R0 */
    void m13218R0() {
        synchronized (this.f1900a) {
            ArrayList<j> arrayList = this.f1897C;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f1900a.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f1914o.i().removeCallbacks(this.f1899E);
                this.f1914o.i().post(this.f1899E);
                m13204Y0();
            }
        }
    }

    /* renamed from: S0 */
    void m13216S0(Fragment fragment, boolean z) {
        ViewGroup m13193e0 = m13193e0(fragment);
        if (m13193e0 == null || !(m13193e0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m13193e0).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: T0 */
    void m13214T0(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(m13209W(fragment.f)) && (fragment.t == null || fragment.s == this)) {
            fragment.Q = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: U */
    public boolean m13213U() {
        boolean m13221Q = m13221Q(true);
        m13201a0();
        return m13221Q;
    }

    /* renamed from: U0 */
    void m13212U0(Fragment fragment) {
        if (fragment == null || (fragment.equals(m13209W(fragment.f)) && (fragment.t == null || fragment.s == this))) {
            Fragment fragment2 = this.f1917r;
            this.f1917r = fragment;
            m13249C(fragment2);
            m13249C(this.f1917r);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: W */
    public Fragment m13209W(String str) {
        return this.f1902c.m13110f(str);
    }

    /* renamed from: W0 */
    void m13208W0(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.z) {
            fragment.z = false;
            fragment.M = !fragment.M;
        }
    }

    /* renamed from: X */
    public Fragment m13207X(int i) {
        return this.f1902c.m13109g(i);
    }

    /* renamed from: Y */
    public Fragment m13205Y(String str) {
        return this.f1902c.m13108h(str);
    }

    /* renamed from: Z */
    public Fragment m13203Z(String str) {
        return this.f1902c.m13107i(str);
    }

    /* renamed from: b */
    void m13200b(a aVar) {
        if (this.f1903d == null) {
            this.f1903d = new ArrayList<>();
        }
        this.f1903d.add(aVar);
    }

    /* renamed from: c */
    void m13198c(Fragment fragment, a aVar) {
        if (this.f1910k.get(fragment) == null) {
            this.f1910k.put(fragment, new HashSet<>());
        }
        this.f1910k.get(fragment).add(aVar);
    }

    /* renamed from: c0 */
    public int m13197c0() {
        ArrayList<a> arrayList = this.f1903d;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: d */
    public void m13196d(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m13159v0(fragment);
        if (!fragment.A) {
            this.f1902c.m13115a(fragment);
            fragment.m = false;
            if (fragment.H == null) {
                fragment.M = false;
            }
            if (!m13167r0(fragment)) {
                return;
            }
            this.f1920u = true;
        }
    }

    /* renamed from: e */
    void m13194e(Fragment fragment) {
        if (m13161u0()) {
            if (!m13169q0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
        } else if (!this.f1898D.e(fragment) || !m13169q0(2)) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* renamed from: f */
    int m13192f() {
        return this.f1908i.getAndIncrement();
    }

    /* renamed from: f0 */
    public C0321f m13191f0() {
        C0321f c0321f = this.f1918s;
        if (c0321f != null) {
            return c0321f;
        }
        Fragment fragment = this.f1916q;
        return fragment != null ? fragment.s.m13191f0() : this.f1919t;
    }

    /* renamed from: g */
    public void m13190g(g<?> gVar, AbstractC0319d abstractC0319d, Fragment fragment) {
        if (this.f1914o == null) {
            this.f1914o = gVar;
            this.f1915p = abstractC0319d;
            this.f1916q = fragment;
            if (fragment != null) {
                m13204Y0();
            }
            if (gVar instanceof c) {
                Fragment fragment2 = (c) gVar;
                OnBackPressedDispatcher b = fragment2.b();
                this.f1906g = b;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                b.m15011a(fragment2, this.f1907h);
            }
            this.f1898D = fragment != null ? fragment.s.m13195d0(fragment) : gVar instanceof AbstractC0373v ? l.i(((AbstractC0373v) gVar).m12954l()) : new l(false);
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: g0 */
    public List<Fragment> m13189g0() {
        return this.f1902c.m13103m();
    }

    /* renamed from: h */
    void m13188h(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.A) {
            fragment.A = false;
            if (fragment.l) {
                return;
            }
            this.f1902c.m13115a(fragment);
            if (m13169q0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (!m13167r0(fragment)) {
                return;
            }
            this.f1920u = true;
        }
    }

    /* renamed from: h0 */
    public LayoutInflater.Factory2 m13187h0() {
        return this.f1905f;
    }

    /* renamed from: i */
    public AbstractC0334p m13186i() {
        return new a(this);
    }

    /* renamed from: i0 */
    public C0323i m13185i0() {
        return this.f1912m;
    }

    /* renamed from: j0 */
    public Fragment m13183j0() {
        return this.f1916q;
    }

    /* renamed from: k */
    boolean m13182k() {
        boolean z = false;
        for (Fragment fragment : this.f1902c.m13105k()) {
            boolean z2 = z;
            if (fragment != null) {
                z2 = m13167r0(fragment);
            }
            z = z2;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k0 */
    public Fragment m13181k0() {
        return this.f1917r;
    }

    /* renamed from: m0 */
    C0372u m13177m0(Fragment fragment) {
        return this.f1898D.k(fragment);
    }

    /* renamed from: n */
    void m13176n(a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.u(z3);
        } else {
            aVar.t();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0336q.m13079C(this, arrayList, arrayList2, 0, 1, true, this.f1911l);
        }
        if (z3) {
            m13151z0(this.f1913n, true);
        }
        for (Fragment fragment : this.f1902c.m13105k()) {
            if (fragment != null && fragment.H != null && fragment.L && aVar.x(fragment.x)) {
                float f = fragment.N;
                if (f > 0.0f) {
                    fragment.H.setAlpha(f);
                }
                if (z3) {
                    fragment.N = 0.0f;
                } else {
                    fragment.N = -1.0f;
                    fragment.L = false;
                }
            }
        }
    }

    /* renamed from: n0 */
    void m13175n0() {
        m13221Q(true);
        if (this.f1907h.m15006c()) {
            m13242F0();
        } else {
            this.f1906g.m15009c();
        }
    }

    /* renamed from: o0 */
    void m13173o0(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.z) {
            fragment.z = true;
            fragment.M = true ^ fragment.M;
            m13210V0(fragment);
        }
    }

    /* renamed from: p0 */
    public boolean m13171p0() {
        return this.f1923x;
    }

    /* renamed from: q */
    void m13170q(Fragment fragment) {
        if (m13169q0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.A) {
            fragment.A = true;
            if (!fragment.l) {
                return;
            }
            if (m13169q0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f1902c.m13100p(fragment);
            if (m13167r0(fragment)) {
                this.f1920u = true;
            }
            m13210V0(fragment);
        }
    }

    /* renamed from: r */
    public void m13168r() {
        this.f1921v = false;
        this.f1922w = false;
        m13235J(2);
    }

    /* renamed from: s */
    public void m13166s(Configuration configuration) {
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.P0(configuration);
            }
        }
    }

    /* renamed from: s0 */
    boolean m13165s0(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        AbstractC0325j abstractC0325j = fragment.s;
        if (!fragment.equals(abstractC0325j.m13181k0()) || !m13165s0(abstractC0325j.f1916q)) {
            z = false;
        }
        return z;
    }

    /* renamed from: t */
    public boolean m13164t(MenuItem menuItem) {
        if (this.f1913n < 1) {
            return false;
        }
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null && fragment.Q0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: t0 */
    boolean m13163t0(int i) {
        return this.f1913n >= i;
    }

    public String toString() {
        g<?> gVar;
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f1916q;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            gVar = this.f1916q;
        } else {
            sb.append(this.f1914o.getClass().getSimpleName());
            sb.append("{");
            gVar = this.f1914o;
        }
        sb.append(Integer.toHexString(System.identityHashCode(gVar)));
        sb.append("}");
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m13162u() {
        this.f1921v = false;
        this.f1922w = false;
        m13235J(1);
    }

    /* renamed from: u0 */
    public boolean m13161u0() {
        return this.f1921v || this.f1922w;
    }

    /* renamed from: v */
    public boolean m13160v(Menu menu, MenuInflater menuInflater) {
        if (this.f1913n < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null && fragment.S0(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f1904e != null) {
            for (int i = 0; i < this.f1904e.size(); i++) {
                Fragment fragment2 = this.f1904e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.s0();
                }
            }
        }
        this.f1904e = arrayList;
        return z;
    }

    /* renamed from: v0 */
    public void m13159v0(Fragment fragment) {
        if (this.f1902c.m13113c(fragment.f)) {
            return;
        }
        C0331n c0331n = new C0331n(this.f1912m, fragment);
        c0331n.m13124k(this.f1914o.h().getClassLoader());
        this.f1902c.m13102n(c0331n);
        if (fragment.C) {
            if (fragment.B) {
                m13194e(fragment);
            } else {
                m13228M0(fragment);
            }
            fragment.C = false;
        }
        c0331n.m13118q(this.f1913n);
        if (!m13169q0(2)) {
            return;
        }
        Log.v("FragmentManager", "Added fragment to active set " + fragment);
    }

    /* renamed from: w */
    public void m13158w() {
        this.f1923x = true;
        m13221Q(true);
        m13227N();
        m13235J(-1);
        this.f1914o = null;
        this.f1915p = null;
        this.f1916q = null;
        if (this.f1906g != null) {
            this.f1907h.m15005d();
            this.f1906g = null;
        }
    }

    /* renamed from: x */
    void m13156x() {
        m13235J(1);
    }

    /* renamed from: y */
    public void m13154y() {
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.Y0();
            }
        }
    }

    /* renamed from: y0 */
    void m13153y0(Fragment fragment) {
        if (!this.f1902c.m13113c(fragment.f)) {
            if (!m13169q0(3)) {
                return;
            }
            Log.d("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f1913n + "since it is not added to " + this);
            return;
        }
        m13252A0(fragment);
        if (fragment.H != null) {
            Fragment m13106j = this.f1902c.m13106j(fragment);
            if (m13106j != null) {
                View view = m13106j.H;
                ViewGroup viewGroup = fragment.G;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.H);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.H, indexOfChild);
                }
            }
            if (fragment.L && fragment.G != null) {
                float f = fragment.N;
                if (f > 0.0f) {
                    fragment.H.setAlpha(f);
                }
                fragment.N = 0.0f;
                fragment.L = false;
                C0313c.C0317d m13301b = C0313c.m13301b(this.f1914o.h(), this.f1915p, fragment, true);
                if (m13301b != null) {
                    Animation animation = m13301b.f1880a;
                    if (animation != null) {
                        fragment.H.startAnimation(animation);
                    } else {
                        m13301b.f1881b.setTarget(fragment.H);
                        m13301b.f1881b.start();
                    }
                }
            }
        }
        if (!fragment.M) {
            return;
        }
        m13174o(fragment);
    }

    /* renamed from: z */
    public void m13152z(boolean z) {
        for (Fragment fragment : this.f1902c.m13103m()) {
            if (fragment != null) {
                fragment.Z0(z);
            }
        }
    }

    /* renamed from: z0 */
    void m13151z0(int i, boolean z) {
        g<?> gVar;
        if (this.f1914o != null || i == -1) {
            if (!z && i == this.f1913n) {
                return;
            }
            this.f1913n = i;
            for (Fragment fragment : this.f1902c.m13103m()) {
                m13153y0(fragment);
            }
            for (Fragment fragment2 : this.f1902c.m13105k()) {
                if (fragment2 != null && !fragment2.L) {
                    m13153y0(fragment2);
                }
            }
            m13206X0();
            if (!this.f1920u || (gVar = this.f1914o) == null || this.f1913n != 4) {
                return;
            }
            gVar.p();
            this.f1920u = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }
}
