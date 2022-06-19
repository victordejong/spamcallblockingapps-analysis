package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.AbstractC0081c;
import androidx.activity.AbstractC0082d;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.p025g.C0519a;
import androidx.core.p025g.C0520b;
import androidx.core.p026h.View$OnAttachStateChangeListenerC0592r;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0889v;
import androidx.lifecycle.C0888u;
import androidx.p013b.C0375b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public final class LayoutInflater$Factory2C0673j extends AbstractC0670i implements LayoutInflater.Factory2 {

    /* renamed from: B */
    ArrayList<C0687g> f2380B;

    /* renamed from: F */
    private OnBackPressedDispatcher f2382F;

    /* renamed from: I */
    private C0690l f2385I;

    /* renamed from: c */
    ArrayList<AbstractC0685e> f2386c;

    /* renamed from: d */
    boolean f2387d;

    /* renamed from: h */
    ArrayList<C0659a> f2391h;

    /* renamed from: i */
    ArrayList<Fragment> f2392i;

    /* renamed from: j */
    ArrayList<C0659a> f2393j;

    /* renamed from: k */
    ArrayList<Integer> f2394k;

    /* renamed from: l */
    ArrayList<AbstractC0670i.AbstractC0672b> f2395l;

    /* renamed from: n */
    AbstractC0669h f2397n;

    /* renamed from: o */
    AbstractC0666e f2398o;

    /* renamed from: p */
    Fragment f2399p;

    /* renamed from: q */
    Fragment f2400q;

    /* renamed from: r */
    boolean f2401r;

    /* renamed from: s */
    boolean f2402s;

    /* renamed from: t */
    boolean f2403t;

    /* renamed from: u */
    boolean f2404u;

    /* renamed from: v */
    boolean f2405v;

    /* renamed from: w */
    ArrayList<C0659a> f2406w;

    /* renamed from: x */
    ArrayList<Boolean> f2407x;

    /* renamed from: y */
    ArrayList<Fragment> f2408y;

    /* renamed from: b */
    static boolean f2378b = false;

    /* renamed from: D */
    static final Interpolator f2376D = new DecelerateInterpolator(2.5f);

    /* renamed from: E */
    static final Interpolator f2377E = new DecelerateInterpolator(1.5f);

    /* renamed from: e */
    int f2388e = 0;

    /* renamed from: f */
    final ArrayList<Fragment> f2389f = new ArrayList<>();

    /* renamed from: g */
    final HashMap<String, Fragment> f2390g = new HashMap<>();

    /* renamed from: G */
    private final AbstractC0081c f2383G = new AbstractC0081c(false) { // from class: androidx.fragment.app.j.1
        @Override // androidx.activity.AbstractC0081c
        /* renamed from: c */
        public void mo19690c() {
            LayoutInflater$Factory2C0673j.this.m19729g();
        }
    };

    /* renamed from: H */
    private final CopyOnWriteArrayList<C0683c> f2384H = new CopyOnWriteArrayList<>();

    /* renamed from: m */
    int f2396m = 0;

    /* renamed from: z */
    Bundle f2409z = null;

    /* renamed from: A */
    SparseArray<Parcelable> f2379A = null;

    /* renamed from: C */
    Runnable f2381C = new Runnable() { // from class: androidx.fragment.app.j.2
        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C0673j.this.m19719k();
        }
    };

    /* renamed from: androidx.fragment.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$a.class */
    public static class C0681a {

        /* renamed from: a */
        public final Animation f2425a;

        /* renamed from: b */
        public final Animator f2426b;

        C0681a(Animator animator) {
            this.f2425a = null;
            this.f2426b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        C0681a(Animation animation) {
            this.f2425a = animation;
            this.f2426b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    /* renamed from: androidx.fragment.app.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$b.class */
    public static class RunnableC0682b extends AnimationSet implements Runnable {

        /* renamed from: a */
        private final ViewGroup f2427a;

        /* renamed from: b */
        private final View f2428b;

        /* renamed from: c */
        private boolean f2429c;

        /* renamed from: d */
        private boolean f2430d;

        /* renamed from: e */
        private boolean f2431e = true;

        RunnableC0682b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2427a = viewGroup;
            this.f2428b = view;
            addAnimation(animation);
            this.f2427a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            boolean z;
            this.f2431e = true;
            if (this.f2429c) {
                z = !this.f2430d;
            } else {
                z = true;
                if (!super.getTransformation(j, transformation)) {
                    this.f2429c = true;
                    View$OnAttachStateChangeListenerC0592r.m20374a(this.f2427a, this);
                    z = true;
                }
            }
            return z;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            boolean z;
            this.f2431e = true;
            if (this.f2429c) {
                z = !this.f2430d;
            } else {
                z = true;
                if (!super.getTransformation(j, transformation, f)) {
                    this.f2429c = true;
                    View$OnAttachStateChangeListenerC0592r.m20374a(this.f2427a, this);
                    z = true;
                }
            }
            return z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2429c || !this.f2431e) {
                this.f2427a.endViewTransition(this.f2428b);
                this.f2430d = true;
                return;
            }
            this.f2431e = false;
            this.f2427a.post(this);
        }
    }

    /* renamed from: androidx.fragment.app.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$c.class */
    public static final class C0683c {

        /* renamed from: a */
        final AbstractC0670i.AbstractC0671a f2432a;

        /* renamed from: b */
        final boolean f2433b;

        C0683c(AbstractC0670i.AbstractC0671a abstractC0671a, boolean z) {
            this.f2432a = abstractC0671a;
            this.f2433b = z;
        }
    }

    /* renamed from: androidx.fragment.app.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$d.class */
    public static class C0684d {

        /* renamed from: a */
        public static final int[] f2434a = {16842755, 16842960, 16842961};
    }

    /* renamed from: androidx.fragment.app.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$e.class */
    public interface AbstractC0685e {
        /* renamed from: a */
        boolean mo19688a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.j$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$f.class */
    private class C0686f implements AbstractC0685e {

        /* renamed from: a */
        final String f2435a;

        /* renamed from: b */
        final int f2436b;

        /* renamed from: c */
        final int f2437c;

        C0686f(String str, int i, int i2) {
            LayoutInflater$Factory2C0673j.this = r4;
            this.f2435a = str;
            this.f2436b = i;
            this.f2437c = i2;
        }

        @Override // androidx.fragment.app.LayoutInflater$Factory2C0673j.AbstractC0685e
        /* renamed from: a */
        public boolean mo19688a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2) {
            return (LayoutInflater$Factory2C0673j.this.f2400q == null || this.f2436b >= 0 || this.f2435a != null || !LayoutInflater$Factory2C0673j.this.f2400q.m19916x().mo19764b()) ? LayoutInflater$Factory2C0673j.this.m19766a(arrayList, arrayList2, this.f2435a, this.f2436b, this.f2437c) : false;
        }
    }

    /* renamed from: androidx.fragment.app.j$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/j$g.class */
    public static class C0687g implements Fragment.AbstractC0658b {

        /* renamed from: a */
        final boolean f2439a;

        /* renamed from: b */
        final C0659a f2440b;

        /* renamed from: c */
        private int f2441c;

        C0687g(C0659a c0659a, boolean z) {
            this.f2439a = z;
            this.f2440b = c0659a;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0658b
        /* renamed from: a */
        public void mo19687a() {
            this.f2441c--;
            if (this.f2441c != 0) {
                return;
            }
            this.f2440b.f2326a.m19721j();
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0658b
        /* renamed from: b */
        public void mo19686b() {
            this.f2441c++;
        }

        /* renamed from: c */
        public boolean m19685c() {
            return this.f2441c == 0;
        }

        /* renamed from: d */
        public void m19684d() {
            boolean z = false;
            boolean z2 = this.f2441c > 0;
            LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j = this.f2440b.f2326a;
            int size = layoutInflater$Factory2C0673j.f2389f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = layoutInflater$Factory2C0673j.f2389f.get(i);
                fragment.m19981a((Fragment.AbstractC0658b) null);
                if (z2 && fragment.m19961aq()) {
                    fragment.m20004V();
                }
            }
            LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j2 = this.f2440b.f2326a;
            C0659a c0659a = this.f2440b;
            boolean z3 = this.f2439a;
            if (!z2) {
                z = true;
            }
            layoutInflater$Factory2C0673j2.m19778a(c0659a, z3, z, true);
        }

        /* renamed from: e */
        public void m19683e() {
            this.f2440b.f2326a.m19778a(this.f2440b, this.f2439a, false, false);
        }
    }

    /* renamed from: C */
    private void m19809C() {
        boolean z = true;
        if (this.f2386c != null && !this.f2386c.isEmpty()) {
            this.f2383G.m22281a(true);
            return;
        }
        AbstractC0081c abstractC0081c = this.f2383G;
        if (m19726h() <= 0 || !m19788a(this.f2399p)) {
            z = false;
        }
        abstractC0081c.m22281a(z);
    }

    /* renamed from: D */
    private void m19808D() {
        if (mo19732f()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    /* renamed from: E */
    private void m19807E() {
        this.f2387d = false;
        this.f2407x.clear();
        this.f2406w.clear();
    }

    /* renamed from: F */
    private void m19806F() {
        if (this.f2380B != null) {
            while (!this.f2380B.isEmpty()) {
                this.f2380B.remove(0).m19684d();
            }
        }
    }

    /* renamed from: G */
    private void m19805G() {
        for (Fragment fragment : this.f2390g.values()) {
            if (fragment != null) {
                if (fragment.m19964an() != null) {
                    int m19962ap = fragment.m19962ap();
                    View m19964an = fragment.m19964an();
                    Animation animation = m19964an.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        m19964an.clearAnimation();
                    }
                    fragment.m19982a((View) null);
                    m19787a(fragment, m19962ap, 0, 0, false);
                } else if (fragment.m19963ao() != null) {
                    fragment.m19963ao().end();
                }
            }
        }
    }

    /* renamed from: H */
    private void m19804H() {
        this.f2390g.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: a */
    private int m19767a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C0375b<Fragment> c0375b) {
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            C0659a c0659a = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            if (c0659a.m19900g() && !c0659a.m19908a(arrayList, i4 + 1, i2)) {
                if (this.f2380B == null) {
                    this.f2380B = new ArrayList<>();
                }
                C0687g c0687g = new C0687g(c0659a, booleanValue);
                this.f2380B.add(c0687g);
                c0659a.m19911a(c0687g);
                if (booleanValue) {
                    c0659a.m19901f();
                } else {
                    c0659a.m19902b(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, c0659a);
                }
                m19759b(c0375b);
            }
        }
        return i3;
    }

    /* renamed from: a */
    static C0681a m19802a(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f2377E);
        alphaAnimation.setDuration(220L);
        return new C0681a(alphaAnimation);
    }

    /* renamed from: a */
    static C0681a m19801a(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f2376D);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(f2377E);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new C0681a(animationSet);
    }

    /* renamed from: a */
    private void m19789a(C0375b<Fragment> c0375b) {
        int size = c0375b.size();
        for (int i = 0; i < size; i++) {
            Fragment m21142b = c0375b.m21142b(i);
            if (!m21142b.f2296t) {
                View m20015H = m21142b.m20015H();
                m21142b.f2276W = m20015H.getAlpha();
                m20015H.setAlpha(0.0f);
            }
        }
    }

    /* renamed from: a */
    private void m19782a(final Fragment fragment, C0681a c0681a, int i) {
        final View view = fragment.f2268O;
        final ViewGroup viewGroup = fragment.f2267N;
        viewGroup.startViewTransition(view);
        fragment.m19948d(i);
        if (c0681a.f2425a != null) {
            RunnableC0682b runnableC0682b = new RunnableC0682b(c0681a.f2425a, viewGroup, view);
            fragment.m19982a(fragment.f2268O);
            runnableC0682b.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.j.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.j.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.m19964an() != null) {
                                fragment.m19982a((View) null);
                                LayoutInflater$Factory2C0673j.this.m19787a(fragment, fragment.m19962ap(), 0, 0, false);
                            }
                        }
                    });
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            fragment.f2268O.startAnimation(runnableC0682b);
            return;
        }
        Animator animator = c0681a.f2426b;
        fragment.m19994a(c0681a.f2426b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.j.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator m19963ao = fragment.m19963ao();
                fragment.m19994a((Animator) null);
                if (m19963ao == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                LayoutInflater$Factory2C0673j.this.m19787a(fragment, fragment.m19962ap(), 0, 0, false);
            }
        });
        animator.setTarget(fragment.f2268O);
        animator.start();
    }

    /* renamed from: a */
    private void m19773a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0520b("FragmentManager"));
        if (this.f2397n != null) {
            try {
                this.f2397n.mo19836a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                mo19770a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        if (r0.f2440b.m19908a(r6, 0, r6.size()) != false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m19769a(java.util.ArrayList<androidx.fragment.app.C0659a> r6, java.util.ArrayList<java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0673j.m19769a(java.util.ArrayList, java.util.ArrayList):void");
    }

    /* renamed from: a */
    private void m19768a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f2488t;
        if (this.f2408y == null) {
            this.f2408y = new ArrayList<>();
        } else {
            this.f2408y.clear();
        }
        this.f2408y.addAll(this.f2389f);
        Fragment m19691z = m19691z();
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            C0659a c0659a = arrayList.get(i4);
            m19691z = !arrayList2.get(i4).booleanValue() ? c0659a.m19907a(this.f2408y, m19691z) : c0659a.m19903b(this.f2408y, m19691z);
            z2 = z2 || c0659a.f2479k;
        }
        this.f2408y.clear();
        if (!z) {
            C0697p.m19635a(this, arrayList, arrayList2, i, i2, false);
        }
        m19750b(arrayList, arrayList2, i, i2);
        if (z) {
            C0375b<Fragment> c0375b = new C0375b<>();
            m19759b(c0375b);
            i3 = m19767a(arrayList, arrayList2, i, i2, c0375b);
            m19789a(c0375b);
        } else {
            i3 = i2;
        }
        int i5 = i;
        if (i3 != i) {
            i5 = i;
            if (z) {
                C0697p.m19635a(this, arrayList, arrayList2, i, i3, true);
                m19797a(this.f2396m, true);
                i5 = i;
            }
        }
        while (i5 < i2) {
            C0659a c0659a2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && c0659a2.f2328c >= 0) {
                m19747c(c0659a2.f2328c);
                c0659a2.f2328c = -1;
            }
            c0659a2.m19913a();
            i5++;
        }
        if (z2) {
            m19715m();
        }
    }

    /* renamed from: a */
    private boolean m19771a(String str, int i, int i2) {
        boolean m19766a;
        m19719k();
        m19742c(true);
        if (this.f2400q == null || i >= 0 || str != null || !this.f2400q.m19916x().mo19764b()) {
            m19766a = m19766a(this.f2406w, this.f2407x, str, i, i2);
            if (m19766a) {
                this.f2387d = true;
                try {
                    m19751b(this.f2406w, this.f2407x);
                } finally {
                    m19807E();
                }
            }
            m19809C();
            m19717l();
            m19804H();
        } else {
            m19766a = true;
        }
        return m19766a;
    }

    /* renamed from: b */
    public static int m19762b(int i, boolean z) {
        int i2;
        switch (i) {
            case 4097:
                if (!z) {
                    i2 = 2;
                    break;
                } else {
                    i2 = 1;
                    break;
                }
            case 4099:
                if (!z) {
                    i2 = 6;
                    break;
                } else {
                    i2 = 5;
                    break;
                }
            case 8194:
                if (!z) {
                    i2 = 4;
                    break;
                } else {
                    i2 = 3;
                    break;
                }
            default:
                i2 = -1;
                break;
        }
        return i2;
    }

    /* renamed from: b */
    private void m19759b(C0375b<Fragment> c0375b) {
        if (this.f2396m < 1) {
            return;
        }
        int min = Math.min(this.f2396m, 3);
        int size = this.f2389f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f2389f.get(i);
            if (fragment.f2287k < min) {
                m19787a(fragment, min, fragment.m19969ai(), fragment.m19968aj(), false);
                if (fragment.f2268O != null && !fragment.f2261H && fragment.f2274U) {
                    c0375b.add(fragment);
                }
            }
        }
    }

    /* renamed from: b */
    private void m19751b(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m19769a(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).f2488t) {
                if (i3 != i2) {
                    m19768a(arrayList, arrayList2, i3, i2);
                }
                int i4 = i2 + 1;
                i3 = i4;
                if (arrayList2.get(i2).booleanValue()) {
                    while (true) {
                        i3 = i4;
                        if (i4 >= size) {
                            break;
                        }
                        i3 = i4;
                        if (!arrayList2.get(i4).booleanValue()) {
                            break;
                        }
                        i3 = i4;
                        if (arrayList.get(i4).f2488t) {
                            break;
                        }
                        i4++;
                    }
                }
                m19768a(arrayList, arrayList2, i2, i3);
                i = i3 - 1;
            } else {
                i = i2;
            }
            i3 = i3;
            i2 = i + 1;
        }
        if (i3 == size) {
            return;
        }
        m19768a(arrayList, arrayList2, i3, size);
    }

    /* renamed from: b */
    private static void m19750b(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C0659a c0659a = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                c0659a.m19912a(-1);
                c0659a.m19902b(i == i2 - 1);
            } else {
                c0659a.m19912a(1);
                c0659a.m19901f();
            }
            i++;
        }
    }

    /* renamed from: c */
    private void m19742c(boolean z) {
        if (this.f2387d) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f2397n == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        if (Looper.myLooper() != this.f2397n.m19827m().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            m19808D();
        }
        if (this.f2406w == null) {
            this.f2406w = new ArrayList<>();
            this.f2407x = new ArrayList<>();
        }
        this.f2387d = true;
        try {
            m19769a((ArrayList<C0659a>) null, (ArrayList<Boolean>) null);
        } finally {
            this.f2387d = false;
        }
    }

    /* renamed from: c */
    private boolean m19743c(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2) {
        boolean z = false;
        synchronized (this) {
            if (this.f2386c != null && this.f2386c.size() != 0) {
                int size = this.f2386c.size();
                z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f2386c.get(i).mo19688a(arrayList, arrayList2);
                }
                this.f2386c.clear();
                this.f2397n.m19827m().removeCallbacks(this.f2381C);
            }
        }
        return z;
    }

    /* renamed from: d */
    public static int m19740d(int i) {
        int i2;
        switch (i) {
            case 4097:
                i2 = 8194;
                break;
            case 4099:
                i2 = 4099;
                break;
            case 8194:
                i2 = 4097;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private void m19735e(int i) {
        try {
            this.f2387d = true;
            m19797a(i, false);
            this.f2387d = false;
            m19719k();
        } catch (Throwable th) {
            this.f2387d = false;
            throw th;
        }
    }

    /* renamed from: u */
    private Fragment m19698u(Fragment fragment) {
        Fragment fragment2;
        ViewGroup viewGroup = fragment.f2267N;
        View view = fragment.f2268O;
        if (viewGroup != null && view != null) {
            int indexOf = this.f2389f.indexOf(fragment) - 1;
            while (true) {
                if (indexOf < 0) {
                    fragment2 = null;
                    break;
                }
                Fragment fragment3 = this.f2389f.get(indexOf);
                if (fragment3.f2267N == viewGroup) {
                    fragment2 = fragment3;
                    if (fragment3.f2268O != null) {
                        break;
                    }
                }
                indexOf--;
            }
        } else {
            fragment2 = null;
        }
        return fragment2;
    }

    /* renamed from: v */
    private void m19696v(Fragment fragment) {
        if (fragment == null || this.f2390g.get(fragment.f2291o) != fragment) {
            return;
        }
        fragment.m19976ab();
    }

    /* renamed from: w */
    private boolean m19694w(Fragment fragment) {
        return (fragment.f2265L && fragment.f2266M) || fragment.f2256C.m19811A();
    }

    /* renamed from: A */
    boolean m19811A() {
        boolean z;
        Iterator<Fragment> it = this.f2390g.values().iterator();
        boolean z2 = false;
        while (true) {
            z = false;
            if (it.hasNext()) {
                Fragment next = it.next();
                if (next != null) {
                    z2 = m19694w(next);
                }
                if (z2) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        return z;
    }

    /* renamed from: B */
    public LayoutInflater.Factory2 m19810B() {
        return this;
    }

    /* renamed from: a */
    public int m19779a(C0659a c0659a) {
        int i;
        synchronized (this) {
            if (this.f2394k == null || this.f2394k.size() <= 0) {
                if (this.f2393j == null) {
                    this.f2393j = new ArrayList<>();
                }
                i = this.f2393j.size();
                if (f2378b) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + c0659a);
                }
                this.f2393j.add(c0659a);
            } else {
                i = this.f2394k.remove(this.f2394k.size() - 1).intValue();
                if (f2378b) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + c0659a);
                }
                this.f2393j.set(i, c0659a);
            }
        }
        return i;
    }

    /* renamed from: a */
    public Fragment m19795a(Bundle bundle, String str) {
        Fragment fragment;
        String string = bundle.getString(str);
        if (string == null) {
            fragment = null;
        } else {
            Fragment fragment2 = this.f2390g.get(string);
            fragment = fragment2;
            if (fragment2 == null) {
                m19773a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
                fragment = fragment2;
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public Fragment mo19772a(String str) {
        Fragment fragment;
        if (str != null) {
            for (int size = this.f2389f.size() - 1; size >= 0; size--) {
                Fragment fragment2 = this.f2389f.get(size);
                if (fragment2 != null && str.equals(fragment2.f2260G)) {
                    fragment = fragment2;
                    break;
                }
            }
        }
        if (str != null) {
            for (Fragment fragment3 : this.f2390g.values()) {
                if (fragment3 != null && str.equals(fragment3.f2260G)) {
                    fragment = fragment3;
                    break;
                }
            }
        }
        fragment = null;
        return fragment;
    }

    /* renamed from: a */
    C0681a m19786a(Fragment fragment, int i, boolean z, int i2) {
        C0681a c0681a;
        boolean z2;
        int m19969ai = fragment.m19969ai();
        fragment.m19953c(0);
        if (fragment.f2267N == null || fragment.f2267N.getLayoutTransition() == null) {
            Animation m19996a = fragment.m19996a(i, z, m19969ai);
            if (m19996a == null) {
                Animator m19958b = fragment.m19958b(i, z, m19969ai);
                if (m19958b == null) {
                    if (m19969ai != 0) {
                        boolean equals = "anim".equals(this.f2397n.m19828l().getResources().getResourceTypeName(m19969ai));
                        if (equals) {
                            try {
                                Animation loadAnimation = AnimationUtils.loadAnimation(this.f2397n.m19828l(), m19969ai);
                                if (loadAnimation != null) {
                                    c0681a = new C0681a(loadAnimation);
                                } else {
                                    z2 = true;
                                }
                            } catch (Resources.NotFoundException e) {
                                throw e;
                            } catch (RuntimeException e2) {
                                z2 = false;
                            }
                        } else {
                            z2 = false;
                        }
                        if (!z2) {
                            try {
                                Animator loadAnimator = AnimatorInflater.loadAnimator(this.f2397n.m19828l(), m19969ai);
                                if (loadAnimator != null) {
                                    c0681a = new C0681a(loadAnimator);
                                }
                            } catch (RuntimeException e3) {
                                if (equals) {
                                    throw e3;
                                }
                                Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f2397n.m19828l(), m19969ai);
                                if (loadAnimation2 != null) {
                                    c0681a = new C0681a(loadAnimation2);
                                }
                            }
                        }
                    }
                    c0681a = null;
                    if (i != 0) {
                        int m19762b = m19762b(i, z);
                        c0681a = null;
                        if (m19762b >= 0) {
                            switch (m19762b) {
                                case 1:
                                    c0681a = m19801a(1.125f, 1.0f, 0.0f, 1.0f);
                                    break;
                                case 2:
                                    c0681a = m19801a(1.0f, 0.975f, 1.0f, 0.0f);
                                    break;
                                case 3:
                                    c0681a = m19801a(0.975f, 1.0f, 0.0f, 1.0f);
                                    break;
                                case 4:
                                    c0681a = m19801a(1.0f, 1.075f, 1.0f, 0.0f);
                                    break;
                                case 5:
                                    c0681a = m19802a(0.0f, 1.0f);
                                    break;
                                case 6:
                                    c0681a = m19802a(1.0f, 0.0f);
                                    break;
                                default:
                                    int i3 = i2;
                                    if (i2 == 0) {
                                        i3 = i2;
                                        if (this.f2397n.mo19832h()) {
                                            i3 = this.f2397n.mo19831i();
                                        }
                                    }
                                    c0681a = null;
                                    if (i3 == 0) {
                                        c0681a = null;
                                        break;
                                    }
                                    break;
                            }
                        }
                    }
                } else {
                    c0681a = new C0681a(m19958b);
                }
            } else {
                c0681a = new C0681a(m19996a);
            }
        } else {
            c0681a = null;
        }
        return c0681a;
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public AbstractC0695o mo19803a() {
        return new C0659a(this);
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public void mo19799a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        m19774a((AbstractC0685e) new C0686f(null, i, i2), false);
    }

    /* renamed from: a */
    public void m19798a(int i, C0659a c0659a) {
        synchronized (this) {
            if (this.f2393j == null) {
                this.f2393j = new ArrayList<>();
            }
            int size = this.f2393j.size();
            if (i < size) {
                if (f2378b) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + c0659a);
                }
                this.f2393j.set(i, c0659a);
            } else {
                for (int i2 = size; i2 < i; i2++) {
                    this.f2393j.add(null);
                    if (this.f2394k == null) {
                        this.f2394k = new ArrayList<>();
                    }
                    if (f2378b) {
                        Log.v("FragmentManager", "Adding available back stack index " + i2);
                    }
                    this.f2394k.add(Integer.valueOf(i2));
                }
                if (f2378b) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + c0659a);
                }
                this.f2393j.add(c0659a);
            }
        }
    }

    /* renamed from: a */
    public void m19797a(int i, boolean z) {
        if (this.f2397n != null || i == 0) {
            if (!z && i == this.f2396m) {
                return;
            }
            this.f2396m = i;
            int size = this.f2389f.size();
            for (int i2 = 0; i2 < size; i2++) {
                m19720j(this.f2389f.get(i2));
            }
            for (Fragment fragment : this.f2390g.values()) {
                if (fragment != null && (fragment.f2297u || fragment.f2262I)) {
                    if (!fragment.f2274U) {
                        m19720j(fragment);
                    }
                }
            }
            m19723i();
            if (!this.f2401r || this.f2397n == null || this.f2396m != 4) {
                return;
            }
            this.f2397n.mo19833g();
            this.f2401r = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* renamed from: a */
    public void m19796a(Configuration configuration) {
        for (int i = 0; i < this.f2389f.size(); i++) {
            Fragment fragment = this.f2389f.get(i);
            if (fragment != null) {
                fragment.m19986a(configuration);
            }
        }
    }

    /* renamed from: a */
    public void m19794a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.f2254A != this) {
            m19773a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.f2291o);
    }

    /* renamed from: a */
    public void m19793a(Parcelable parcelable) {
        C0693n c0693n;
        if (parcelable == null) {
            return;
        }
        C0688k c0688k = (C0688k) parcelable;
        if (c0688k.f2442a == null) {
            return;
        }
        for (Fragment fragment : this.f2385I.m19676c()) {
            if (f2378b) {
                Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
            }
            Iterator<C0693n> it = c0688k.f2442a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c0693n = null;
                    break;
                }
                c0693n = it.next();
                if (c0693n.f2459b.equals(fragment.f2291o)) {
                    break;
                }
            }
            if (c0693n == null) {
                if (f2378b) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + c0688k.f2442a);
                }
                m19787a(fragment, 1, 0, 0, false);
                fragment.f2297u = true;
                m19787a(fragment, 0, 0, 0, false);
            } else {
                c0693n.f2471n = fragment;
                fragment.f2289m = null;
                fragment.f2302z = 0;
                fragment.f2299w = false;
                fragment.f2296t = false;
                fragment.f2294r = fragment.f2293q != null ? fragment.f2293q.f2291o : null;
                fragment.f2293q = null;
                if (c0693n.f2470m != null) {
                    c0693n.f2470m.setClassLoader(this.f2397n.m19828l().getClassLoader());
                    fragment.f2289m = c0693n.f2470m.getSparseParcelableArray("android:view_state");
                    fragment.f2288l = c0693n.f2470m;
                }
            }
        }
        this.f2390g.clear();
        Iterator<C0693n> it2 = c0688k.f2442a.iterator();
        while (it2.hasNext()) {
            C0693n next = it2.next();
            if (next != null) {
                Fragment m19669a = next.m19669a(this.f2397n.m19828l().getClassLoader(), mo19736e());
                m19669a.f2254A = this;
                if (f2378b) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m19669a.f2291o + "): " + m19669a);
                }
                this.f2390g.put(m19669a.f2291o, m19669a);
                next.f2471n = null;
            }
        }
        this.f2389f.clear();
        if (c0688k.f2443b != null) {
            Iterator<String> it3 = c0688k.f2443b.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                Fragment fragment2 = this.f2390g.get(next2);
                if (fragment2 == null) {
                    m19773a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                }
                fragment2.f2296t = true;
                if (f2378b) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + next2 + "): " + fragment2);
                }
                if (this.f2389f.contains(fragment2)) {
                    throw new IllegalStateException("Already added " + fragment2);
                }
                synchronized (this.f2389f) {
                    this.f2389f.add(fragment2);
                }
            }
        }
        if (c0688k.f2444c != null) {
            this.f2391h = new ArrayList<>(c0688k.f2444c.length);
            for (int i = 0; i < c0688k.f2444c.length; i++) {
                C0659a m19898a = c0688k.f2444c[i].m19898a(this);
                if (f2378b) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m19898a.f2328c + "): " + m19898a);
                    PrintWriter printWriter = new PrintWriter(new C0520b("FragmentManager"));
                    m19898a.m19909a("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2391h.add(m19898a);
                if (m19898a.f2328c >= 0) {
                    m19798a(m19898a.f2328c, m19898a);
                }
            }
        } else {
            this.f2391h = null;
        }
        if (c0688k.f2445d != null) {
            this.f2400q = this.f2390g.get(c0688k.f2445d);
            m19696v(this.f2400q);
        }
        this.f2388e = c0688k.f2446e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r8.f2262I != false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19787a(androidx.fragment.app.Fragment r8, int r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 2204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0673j.m19787a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    /* renamed from: a */
    void m19785a(Fragment fragment, Context context, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19785a(fragment, context, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19824a(this, fragment, context);
            }
        }
    }

    /* renamed from: a */
    void m19784a(Fragment fragment, Bundle bundle, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19784a(fragment, bundle, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19823a(this, fragment, bundle);
            }
        }
    }

    /* renamed from: a */
    void m19783a(Fragment fragment, View view, Bundle bundle, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19783a(fragment, view, bundle, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.mo17986a(this, fragment, view, bundle);
            }
        }
    }

    /* renamed from: a */
    public void m19781a(Fragment fragment, AbstractC0864e.EnumC0866b enumC0866b) {
        if (this.f2390g.get(fragment.f2291o) == fragment && (fragment.f2255B == null || fragment.m19918v() == this)) {
            fragment.f2279Z = enumC0866b;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: a */
    public void m19780a(Fragment fragment, boolean z) {
        if (f2378b) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m19718k(fragment);
        if (!fragment.f2262I) {
            if (this.f2389f.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            synchronized (this.f2389f) {
                this.f2389f.add(fragment);
            }
            fragment.f2296t = true;
            fragment.f2297u = false;
            if (fragment.f2268O == null) {
                fragment.f2275V = false;
            }
            if (m19694w(fragment)) {
                this.f2401r = true;
            }
            if (!z) {
                return;
            }
            m19728g(fragment);
        }
    }

    /* renamed from: a */
    void m19778a(C0659a c0659a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0659a.m19902b(z3);
        } else {
            c0659a.m19901f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0659a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0697p.m19635a(this, (ArrayList<C0659a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            m19797a(this.f2396m, true);
        }
        for (Fragment fragment : this.f2390g.values()) {
            if (fragment != null && fragment.f2268O != null && fragment.f2274U && c0659a.m19905b(fragment.f2259F)) {
                if (fragment.f2276W > 0.0f) {
                    fragment.f2268O.setAlpha(fragment.f2276W);
                }
                if (z3) {
                    fragment.f2276W = 0.0f;
                } else {
                    fragment.f2276W = -1.0f;
                    fragment.f2274U = false;
                }
            }
        }
    }

    /* renamed from: a */
    public void m19777a(AbstractC0669h abstractC0669h, AbstractC0666e abstractC0666e, Fragment fragment) {
        if (this.f2397n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f2397n = abstractC0669h;
        this.f2398o = abstractC0666e;
        this.f2399p = fragment;
        if (this.f2399p != null) {
            m19809C();
        }
        if (abstractC0669h instanceof AbstractC0082d) {
            AbstractC0082d abstractC0082d = (AbstractC0082d) abstractC0669h;
            this.f2382F = abstractC0082d.mo19872d();
            AbstractC0082d abstractC0082d2 = abstractC0082d;
            if (fragment != null) {
                abstractC0082d2 = fragment;
            }
            this.f2382F.m22287a(abstractC0082d2, this.f2383G);
        }
        if (fragment != null) {
            this.f2385I = fragment.f2254A.m19746c(fragment);
        } else if (abstractC0669h instanceof AbstractC0889v) {
            this.f2385I = C0690l.m19679a(((AbstractC0889v) abstractC0669h).mo19167c());
        } else {
            this.f2385I = new C0690l(false);
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public void mo19776a(AbstractC0670i.AbstractC0671a abstractC0671a) {
        synchronized (this.f2384H) {
            int size = this.f2384H.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (this.f2384H.get(i).f2432a == abstractC0671a) {
                    this.f2384H.remove(i);
                    break;
                } else {
                    i++;
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public void mo19775a(AbstractC0670i.AbstractC0671a abstractC0671a, boolean z) {
        this.f2384H.add(new C0683c(abstractC0671a, z));
    }

    /* renamed from: a */
    public void m19774a(AbstractC0685e abstractC0685e, boolean z) {
        if (!z) {
            m19808D();
        }
        synchronized (this) {
            if (this.f2404u || this.f2397n == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            if (this.f2386c == null) {
                this.f2386c = new ArrayList<>();
            }
            this.f2386c.add(abstractC0685e);
            m19721j();
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: a */
    public void mo19770a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f2390g.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f2390g.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.mo14333a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f2389f.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f2389f.get(i).toString());
            }
        }
        if (this.f2392i != null && (size4 = this.f2392i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f2392i.get(i2).toString());
            }
        }
        if (this.f2391h != null && (size3 = this.f2391h.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C0659a c0659a = this.f2391h.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0659a.toString());
                c0659a.m19910a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.f2393j != null && (size2 = this.f2393j.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i4 = 0; i4 < size2; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((C0659a) this.f2393j.get(i4));
                }
            }
            if (this.f2394k != null && this.f2394k.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f2394k.toArray()));
            }
        }
        if (this.f2386c != null && (size = this.f2386c.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println((AbstractC0685e) this.f2386c.get(i5));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2397n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2398o);
        if (this.f2399p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2399p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2396m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f2402s);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2403t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f2404u);
        if (this.f2401r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f2401r);
        }
    }

    /* renamed from: a */
    public void m19765a(boolean z) {
        for (int size = this.f2389f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2389f.get(size);
            if (fragment != null) {
                fragment.m19936i(z);
            }
        }
    }

    /* renamed from: a */
    public boolean m19800a(int i) {
        return this.f2396m >= i;
    }

    /* renamed from: a */
    public boolean m19792a(Menu menu) {
        boolean z = false;
        if (this.f2396m >= 1) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i >= this.f2389f.size()) {
                    break;
                }
                Fragment fragment = this.f2389f.get(i);
                boolean z3 = z;
                if (fragment != null) {
                    z3 = z;
                    if (fragment.m19952c(menu)) {
                        z3 = true;
                    }
                }
                i++;
                z2 = z3;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m19791a(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.f2396m >= 1) {
            ArrayList<Fragment> arrayList = null;
            z = false;
            for (int i = 0; i < this.f2389f.size(); i++) {
                Fragment fragment = this.f2389f.get(i);
                if (fragment != null && fragment.m19955b(menu, menuInflater)) {
                    ArrayList<Fragment> arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add(fragment);
                    z = true;
                    arrayList = arrayList2;
                }
            }
            if (this.f2392i != null) {
                for (int i2 = 0; i2 < this.f2392i.size(); i2++) {
                    Fragment fragment2 = this.f2392i.get(i2);
                    if (arrayList == null || !arrayList.contains(fragment2)) {
                        fragment2.m20013M();
                    }
                }
            }
            this.f2392i = arrayList;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m19790a(MenuItem menuItem) {
        boolean z;
        if (this.f2396m >= 1) {
            int i = 0;
            while (true) {
                z = false;
                if (i < this.f2389f.size()) {
                    Fragment fragment = this.f2389f.get(i);
                    if (fragment != null && fragment.m19951c(menuItem)) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m19788a(Fragment fragment) {
        boolean z = true;
        if (fragment != null) {
            LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j = fragment.f2254A;
            if (fragment != layoutInflater$Factory2C0673j.m19691z() || !m19788a(layoutInflater$Factory2C0673j.f2399p)) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    boolean m19766a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        boolean z;
        if (this.f2391h == null) {
            z = false;
        } else if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.f2391h.size() - 1;
            if (size < 0) {
                z = false;
            } else {
                arrayList.add(this.f2391h.remove(size));
                arrayList2.add(true);
                z = true;
            }
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = this.f2391h.size() - 1;
                while (size2 >= 0) {
                    C0659a c0659a = this.f2391h.get(size2);
                    if ((str != null && str.equals(c0659a.m19899h())) || (i >= 0 && i == c0659a.f2328c)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    z = false;
                } else {
                    i3 = size2;
                    if ((i2 & 1) != 0) {
                        int i4 = size2 - 1;
                        while (true) {
                            i3 = i4;
                            if (i4 < 0) {
                                break;
                            }
                            C0659a c0659a2 = this.f2391h.get(i4);
                            if (str == null || !str.equals(c0659a2.m19899h())) {
                                i3 = i4;
                                if (i < 0) {
                                    break;
                                }
                                i3 = i4;
                                if (i != c0659a2.f2328c) {
                                    break;
                                }
                            }
                            i4--;
                        }
                    }
                }
            }
            if (i3 == this.f2391h.size() - 1) {
                z = false;
            } else {
                for (int size3 = this.f2391h.size() - 1; size3 > i3; size3--) {
                    arrayList.add(this.f2391h.remove(size3));
                    arrayList2.add(true);
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public Fragment m19763b(int i) {
        Fragment fragment;
        int size = this.f2389f.size() - 1;
        while (true) {
            if (size < 0) {
                Iterator<Fragment> it = this.f2390g.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        fragment = null;
                        break;
                    }
                    fragment = it.next();
                    if (fragment != null && fragment.f2258E == i) {
                        break;
                    }
                }
            } else {
                fragment = this.f2389f.get(size);
                if (fragment != null && fragment.f2258E == i) {
                    break;
                }
                size--;
            }
        }
        return fragment;
    }

    /* renamed from: b */
    public Fragment m19752b(String str) {
        Fragment fragment;
        Fragment m19979a;
        Iterator<Fragment> it = this.f2390g.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                fragment = null;
                break;
            }
            Fragment next = it.next();
            if (next != null && (m19979a = next.m19979a(str)) != null) {
                fragment = m19979a;
                break;
            }
        }
        return fragment;
    }

    /* renamed from: b */
    public C0888u m19758b(Fragment fragment) {
        return this.f2385I.m19673e(fragment);
    }

    /* renamed from: b */
    public void m19761b(Menu menu) {
        if (this.f2396m < 1) {
            return;
        }
        for (int i = 0; i < this.f2389f.size(); i++) {
            Fragment fragment = this.f2389f.get(i);
            if (fragment != null) {
                fragment.m19947d(menu);
            }
        }
    }

    /* renamed from: b */
    void m19757b(Fragment fragment, Context context, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19757b(fragment, context, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19821b(this, fragment, context);
            }
        }
    }

    /* renamed from: b */
    void m19756b(Fragment fragment, Bundle bundle, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19756b(fragment, bundle, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19820b(this, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    void m19755b(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19755b(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19825a(this, fragment);
            }
        }
    }

    /* renamed from: b */
    public void m19754b(C0659a c0659a) {
        if (this.f2391h == null) {
            this.f2391h = new ArrayList<>();
        }
        this.f2391h.add(c0659a);
    }

    /* renamed from: b */
    public void m19753b(AbstractC0685e abstractC0685e, boolean z) {
        if (!z || (this.f2397n != null && !this.f2404u)) {
            m19742c(z);
            if (abstractC0685e.mo19688a(this.f2406w, this.f2407x)) {
                this.f2387d = true;
                try {
                    m19751b(this.f2406w, this.f2407x);
                } finally {
                    m19807E();
                }
            }
            m19809C();
            m19717l();
            m19804H();
        }
    }

    /* renamed from: b */
    public void m19749b(boolean z) {
        for (int size = this.f2389f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2389f.get(size);
            if (fragment != null) {
                fragment.m19934j(z);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: b */
    public boolean mo19764b() {
        m19808D();
        return m19771a((String) null, -1, 0);
    }

    /* renamed from: b */
    public boolean m19760b(MenuItem menuItem) {
        boolean z;
        if (this.f2396m >= 1) {
            int i = 0;
            while (true) {
                z = false;
                if (i < this.f2389f.size()) {
                    Fragment fragment = this.f2389f.get(i);
                    if (fragment != null && fragment.m19946d(menuItem)) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    C0690l m19746c(Fragment fragment) {
        return this.f2385I.m19674d(fragment);
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: c */
    public List<Fragment> mo19748c() {
        List<Fragment> list;
        if (this.f2389f.isEmpty()) {
            list = Collections.emptyList();
        } else {
            synchronized (this.f2389f) {
                list = (List) this.f2389f.clone();
            }
        }
        return list;
    }

    /* renamed from: c */
    public void m19747c(int i) {
        synchronized (this) {
            this.f2393j.set(i, null);
            if (this.f2394k == null) {
                this.f2394k = new ArrayList<>();
            }
            if (f2378b) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.f2394k.add(Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    void m19745c(Fragment fragment, Bundle bundle, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19745c(fragment, bundle, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19818c(this, fragment, bundle);
            }
        }
    }

    /* renamed from: c */
    void m19744c(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19744c(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19822b(this, fragment);
            }
        }
    }

    /* renamed from: d */
    public void m19739d(Fragment fragment) {
        if (mo19732f()) {
            if (!f2378b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
        } else if (!this.f2385I.m19680a(fragment) || !f2378b) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* renamed from: d */
    void m19738d(Fragment fragment, Bundle bundle, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19738d(fragment, bundle, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19816d(this, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    void m19737d(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19737d(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19819c(this, fragment);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: d */
    public boolean mo19741d() {
        return this.f2404u;
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: e */
    public C0668g mo19736e() {
        C0668g mo19736e;
        if (super.mo19736e() == f2374a) {
            if (this.f2399p != null) {
                mo19736e = this.f2399p.f2254A.mo19736e();
                return mo19736e;
            }
            m19826a(new C0668g() { // from class: androidx.fragment.app.j.6
                @Override // androidx.fragment.app.C0668g
                /* renamed from: c */
                public Fragment mo19689c(ClassLoader classLoader, String str) {
                    return LayoutInflater$Factory2C0673j.this.f2397n.m19870a(LayoutInflater$Factory2C0673j.this.f2397n.m19828l(), str, (Bundle) null);
                }
            });
        }
        mo19736e = super.mo19736e();
        return mo19736e;
    }

    /* renamed from: e */
    public void m19734e(Fragment fragment) {
        if (mo19732f()) {
            if (!f2378b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
        } else if (!this.f2385I.m19675c(fragment) || !f2378b) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* renamed from: e */
    void m19733e(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19733e(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19817d(this, fragment);
            }
        }
    }

    /* renamed from: f */
    public void m19731f(Fragment fragment) {
        if (fragment.f2270Q) {
            if (this.f2387d) {
                this.f2405v = true;
                return;
            }
            fragment.f2270Q = false;
            m19787a(fragment, this.f2396m, 0, 0, false);
        }
    }

    /* renamed from: f */
    void m19730f(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19730f(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19815e(this, fragment);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0670i
    /* renamed from: f */
    public boolean mo19732f() {
        return this.f2402s || this.f2403t;
    }

    /* renamed from: g */
    void m19729g() {
        m19719k();
        if (this.f2383G.m22283a()) {
            mo19764b();
        } else {
            this.f2382F.m22289a();
        }
    }

    /* renamed from: g */
    void m19728g(Fragment fragment) {
        m19787a(fragment, this.f2396m, 0, 0, false);
    }

    /* renamed from: g */
    void m19727g(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19727g(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19814f(this, fragment);
            }
        }
    }

    /* renamed from: h */
    public int m19726h() {
        return this.f2391h != null ? this.f2391h.size() : 0;
    }

    /* renamed from: h */
    void m19725h(Fragment fragment) {
        if (!fragment.f2298v || fragment.f2301y) {
            return;
        }
        fragment.m19957b(fragment.m19939h(fragment.f2288l), (ViewGroup) null, fragment.f2288l);
        if (fragment.f2268O == null) {
            fragment.f2269P = null;
            return;
        }
        fragment.f2269P = fragment.f2268O;
        fragment.f2268O.setSaveFromParentEnabled(false);
        if (fragment.f2261H) {
            fragment.f2268O.setVisibility(8);
        }
        fragment.mo849a(fragment.f2268O, fragment.f2288l);
        m19783a(fragment, fragment.f2268O, fragment.f2288l, false);
    }

    /* renamed from: h */
    void m19724h(Fragment fragment, boolean z) {
        if (this.f2399p != null) {
            AbstractC0670i m19918v = this.f2399p.m19918v();
            if (m19918v instanceof LayoutInflater$Factory2C0673j) {
                ((LayoutInflater$Factory2C0673j) m19918v).m19724h(fragment, true);
            }
        }
        Iterator<C0683c> it = this.f2384H.iterator();
        while (it.hasNext()) {
            C0683c next = it.next();
            if (!z || next.f2433b) {
                next.f2432a.m19813g(this, fragment);
            }
        }
    }

    /* renamed from: i */
    void m19723i() {
        for (Fragment fragment : this.f2390g.values()) {
            if (fragment != null) {
                m19731f(fragment);
            }
        }
    }

    /* renamed from: i */
    void m19722i(final Fragment fragment) {
        if (fragment.f2268O != null) {
            C0681a m19786a = m19786a(fragment, fragment.m19968aj(), !fragment.f2261H, fragment.m19967ak());
            if (m19786a == null || m19786a.f2426b == null) {
                if (m19786a != null) {
                    fragment.f2268O.startAnimation(m19786a.f2425a);
                    m19786a.f2425a.start();
                }
                fragment.f2268O.setVisibility((!fragment.f2261H || fragment.m19960ar()) ? 0 : 8);
                if (fragment.m19960ar()) {
                    fragment.m19932k(false);
                }
            } else {
                m19786a.f2426b.setTarget(fragment.f2268O);
                if (!fragment.f2261H) {
                    fragment.f2268O.setVisibility(0);
                } else if (fragment.m19960ar()) {
                    fragment.m19932k(false);
                } else {
                    final ViewGroup viewGroup = fragment.f2267N;
                    final View view = fragment.f2268O;
                    viewGroup.startViewTransition(view);
                    m19786a.f2426b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.j.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            viewGroup.endViewTransition(view);
                            animator.removeListener(this);
                            if (fragment.f2268O == null || !fragment.f2261H) {
                                return;
                            }
                            fragment.f2268O.setVisibility(8);
                        }
                    });
                }
                m19786a.f2426b.start();
            }
        }
        if (fragment.f2296t && m19694w(fragment)) {
            this.f2401r = true;
        }
        fragment.f2275V = false;
        fragment.mo940b(fragment.f2261H);
    }

    /* renamed from: j */
    void m19721j() {
        boolean z = true;
        synchronized (this) {
            boolean z2 = this.f2380B != null && !this.f2380B.isEmpty();
            if (this.f2386c == null || this.f2386c.size() != 1) {
                z = false;
            }
            if (z2 || z) {
                this.f2397n.m19827m().removeCallbacks(this.f2381C);
                this.f2397n.m19827m().post(this.f2381C);
                m19809C();
            }
        }
    }

    /* renamed from: j */
    public void m19720j(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        if (!this.f2390g.containsKey(fragment.f2291o)) {
            if (!f2378b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f2396m + "since it is not added to " + this);
            return;
        }
        int i = this.f2396m;
        int i2 = i;
        if (fragment.f2297u) {
            i2 = fragment.m19931l() ? Math.min(i, 1) : Math.min(i, 0);
        }
        m19787a(fragment, i2, fragment.m19968aj(), fragment.m19967ak(), false);
        if (fragment.f2268O != null) {
            Fragment m19698u = m19698u(fragment);
            if (m19698u != null) {
                View view = m19698u.f2268O;
                ViewGroup viewGroup = fragment.f2267N;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.f2268O);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.f2268O, indexOfChild);
                }
            }
            if (fragment.f2274U && fragment.f2267N != null) {
                if (fragment.f2276W > 0.0f) {
                    fragment.f2268O.setAlpha(fragment.f2276W);
                }
                fragment.f2276W = 0.0f;
                fragment.f2274U = false;
                C0681a m19786a = m19786a(fragment, fragment.m19968aj(), true, fragment.m19967ak());
                if (m19786a != null) {
                    if (m19786a.f2425a != null) {
                        fragment.f2268O.startAnimation(m19786a.f2425a);
                    } else {
                        m19786a.f2426b.setTarget(fragment.f2268O);
                        m19786a.f2426b.start();
                    }
                }
            }
        }
        if (!fragment.f2275V) {
            return;
        }
        m19722i(fragment);
    }

    /* renamed from: k */
    public void m19718k(Fragment fragment) {
        if (this.f2390g.get(fragment.f2291o) != null) {
            return;
        }
        this.f2390g.put(fragment.f2291o, fragment);
        if (fragment.f2264K) {
            if (fragment.f2263J) {
                m19739d(fragment);
            } else {
                m19734e(fragment);
            }
            fragment.f2264K = false;
        }
        if (!f2378b) {
            return;
        }
        Log.v("FragmentManager", "Added fragment to active set " + fragment);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public boolean m19719k() {
        m19742c(true);
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (!m19743c(this.f2406w, this.f2407x)) {
                m19809C();
                m19717l();
                m19804H();
                return z2;
            }
            this.f2387d = true;
            try {
                m19751b(this.f2406w, this.f2407x);
                m19807E();
                z = true;
            } catch (Throwable th) {
                m19807E();
                throw th;
            }
        }
    }

    /* renamed from: l */
    void m19717l() {
        if (this.f2405v) {
            this.f2405v = false;
            m19723i();
        }
    }

    /* renamed from: l */
    void m19716l(Fragment fragment) {
        if (this.f2390g.get(fragment.f2291o) == null) {
            return;
        }
        if (f2378b) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
        for (Fragment fragment2 : this.f2390g.values()) {
            if (fragment2 != null && fragment.f2291o.equals(fragment2.f2294r)) {
                fragment2.f2293q = fragment;
                fragment2.f2294r = null;
            }
        }
        this.f2390g.put(fragment.f2291o, null);
        m19734e(fragment);
        if (fragment.f2294r != null) {
            fragment.f2293q = this.f2390g.get(fragment.f2294r);
        }
        fragment.m20014L();
    }

    /* renamed from: m */
    void m19715m() {
        if (this.f2395l != null) {
            for (int i = 0; i < this.f2395l.size(); i++) {
                this.f2395l.get(i).m19812a();
            }
        }
    }

    /* renamed from: m */
    public void m19714m(Fragment fragment) {
        if (f2378b) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f2302z);
        }
        boolean z = !fragment.m19931l();
        if (!fragment.f2262I || z) {
            synchronized (this.f2389f) {
                this.f2389f.remove(fragment);
            }
            if (m19694w(fragment)) {
                this.f2401r = true;
            }
            fragment.f2296t = false;
            fragment.f2297u = true;
        }
    }

    /* renamed from: n */
    public Parcelable m19713n() {
        ArrayList<String> arrayList;
        C0688k c0688k;
        m19806F();
        m19805G();
        m19719k();
        this.f2402s = true;
        if (this.f2390g.isEmpty()) {
            c0688k = null;
        } else {
            ArrayList<C0693n> arrayList2 = new ArrayList<>(this.f2390g.size());
            boolean z = false;
            for (Fragment fragment : this.f2390g.values()) {
                if (fragment != null) {
                    if (fragment.f2254A != this) {
                        m19773a(new IllegalStateException("Failure saving state: active " + fragment + " was removed from the FragmentManager"));
                    }
                    C0693n c0693n = new C0693n(fragment);
                    arrayList2.add(c0693n);
                    if (fragment.f2287k <= 0 || c0693n.f2470m != null) {
                        c0693n.f2470m = fragment.f2288l;
                    } else {
                        c0693n.f2470m = m19702s(fragment);
                        if (fragment.f2294r != null) {
                            Fragment fragment2 = this.f2390g.get(fragment.f2294r);
                            if (fragment2 == null) {
                                m19773a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.f2294r));
                            }
                            if (c0693n.f2470m == null) {
                                c0693n.f2470m = new Bundle();
                            }
                            m19794a(c0693n.f2470m, "android:target_state", fragment2);
                            if (fragment.f2295s != 0) {
                                c0693n.f2470m.putInt("android:target_req_state", fragment.f2295s);
                            }
                        }
                    }
                    if (f2378b) {
                        Log.v("FragmentManager", "Saved state of " + fragment + ": " + c0693n.f2470m);
                    }
                    z = true;
                }
            }
            if (!z) {
                c0688k = null;
                if (f2378b) {
                    Log.v("FragmentManager", "saveAllState: no fragments!");
                    c0688k = null;
                }
            } else {
                int size = this.f2389f.size();
                if (size > 0) {
                    ArrayList<String> arrayList3 = new ArrayList<>(size);
                    Iterator<Fragment> it = this.f2389f.iterator();
                    while (true) {
                        arrayList = arrayList3;
                        if (!it.hasNext()) {
                            break;
                        }
                        Fragment next = it.next();
                        arrayList3.add(next.f2291o);
                        if (next.f2254A != this) {
                            m19773a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                        }
                        if (f2378b) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + next.f2291o + "): " + next);
                        }
                    }
                } else {
                    arrayList = null;
                }
                C0660b[] c0660bArr = null;
                if (this.f2391h != null) {
                    int size2 = this.f2391h.size();
                    c0660bArr = null;
                    if (size2 > 0) {
                        C0660b[] c0660bArr2 = new C0660b[size2];
                        int i = 0;
                        while (true) {
                            c0660bArr = c0660bArr2;
                            if (i >= size2) {
                                break;
                            }
                            c0660bArr2[i] = new C0660b(this.f2391h.get(i));
                            if (f2378b) {
                                Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f2391h.get(i));
                            }
                            i++;
                        }
                    }
                }
                C0688k c0688k2 = new C0688k();
                c0688k2.f2442a = arrayList2;
                c0688k2.f2443b = arrayList;
                c0688k2.f2444c = c0660bArr;
                if (this.f2400q != null) {
                    c0688k2.f2445d = this.f2400q.f2291o;
                }
                c0688k2.f2446e = this.f2388e;
                c0688k = c0688k2;
            }
        }
        return c0688k;
    }

    /* renamed from: n */
    public void m19712n(Fragment fragment) {
        boolean z = true;
        if (f2378b) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.f2261H) {
            fragment.f2261H = true;
            if (fragment.f2275V) {
                z = false;
            }
            fragment.f2275V = z;
        }
    }

    /* renamed from: o */
    public void m19711o() {
        this.f2402s = false;
        this.f2403t = false;
        int size = this.f2389f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f2389f.get(i);
            if (fragment != null) {
                fragment.m19977aa();
            }
        }
    }

    /* renamed from: o */
    public void m19710o(Fragment fragment) {
        boolean z = false;
        if (f2378b) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.f2261H) {
            fragment.f2261H = false;
            if (!fragment.f2275V) {
                z = true;
            }
            fragment.f2275V = z;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View view2;
        if (!"fragment".equals(str)) {
            view2 = null;
        } else {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0684d.f2434a);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue == null || !C0668g.m19844a(context.getClassLoader(), attributeValue)) {
                view2 = null;
            } else {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                Fragment m19763b = resourceId != -1 ? m19763b(resourceId) : null;
                Fragment fragment = m19763b;
                if (m19763b == null) {
                    fragment = m19763b;
                    if (string != null) {
                        fragment = mo19772a(string);
                    }
                }
                Fragment fragment2 = fragment;
                if (fragment == null) {
                    fragment2 = fragment;
                    if (id != -1) {
                        fragment2 = m19763b(id);
                    }
                }
                if (f2378b) {
                    Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + fragment2);
                }
                if (fragment2 == null) {
                    fragment2 = mo19736e().mo19689c(context.getClassLoader(), attributeValue);
                    fragment2.f2298v = true;
                    fragment2.f2258E = resourceId != 0 ? resourceId : id;
                    fragment2.f2259F = id;
                    fragment2.f2260G = string;
                    fragment2.f2299w = true;
                    fragment2.f2254A = this;
                    fragment2.f2255B = this.f2397n;
                    fragment2.m19991a(this.f2397n.m19828l(), attributeSet, fragment2.f2288l);
                    m19780a(fragment2, true);
                } else if (fragment2.f2299w) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                } else {
                    fragment2.f2299w = true;
                    fragment2.f2255B = this.f2397n;
                    fragment2.m19991a(this.f2397n.m19828l(), attributeSet, fragment2.f2288l);
                }
                if (this.f2396m >= 1 || !fragment2.f2298v) {
                    m19728g(fragment2);
                } else {
                    m19787a(fragment2, 1, 0, 0, false);
                }
                if (fragment2.f2268O == null) {
                    throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
                }
                if (resourceId != 0) {
                    fragment2.f2268O.setId(resourceId);
                }
                if (fragment2.f2268O.getTag() == null) {
                    fragment2.f2268O.setTag(string);
                }
                view2 = fragment2.f2268O;
            }
        }
        return view2;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public void m19709p() {
        this.f2402s = false;
        this.f2403t = false;
        m19735e(1);
    }

    /* renamed from: p */
    public void m19708p(Fragment fragment) {
        if (f2378b) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.f2262I) {
            fragment.f2262I = true;
            if (!fragment.f2296t) {
                return;
            }
            if (f2378b) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            synchronized (this.f2389f) {
                this.f2389f.remove(fragment);
            }
            if (m19694w(fragment)) {
                this.f2401r = true;
            }
            fragment.f2296t = false;
        }
    }

    /* renamed from: q */
    public void m19707q() {
        this.f2402s = false;
        this.f2403t = false;
        m19735e(2);
    }

    /* renamed from: q */
    public void m19706q(Fragment fragment) {
        if (f2378b) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.f2262I) {
            fragment.f2262I = false;
            if (fragment.f2296t) {
                return;
            }
            if (this.f2389f.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            if (f2378b) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            synchronized (this.f2389f) {
                this.f2389f.add(fragment);
            }
            fragment.f2296t = true;
            if (!m19694w(fragment)) {
                return;
            }
            this.f2401r = true;
        }
    }

    /* renamed from: r */
    public void m19705r() {
        this.f2402s = false;
        this.f2403t = false;
        m19735e(3);
    }

    /* renamed from: r */
    void m19704r(Fragment fragment) {
        if (fragment.f2269P == null) {
            return;
        }
        if (this.f2379A == null) {
            this.f2379A = new SparseArray<>();
        } else {
            this.f2379A.clear();
        }
        fragment.f2269P.saveHierarchyState(this.f2379A);
        if (this.f2379A.size() <= 0) {
            return;
        }
        fragment.f2289m = this.f2379A;
        this.f2379A = null;
    }

    /* renamed from: s */
    Bundle m19702s(Fragment fragment) {
        Bundle bundle;
        if (this.f2409z == null) {
            this.f2409z = new Bundle();
        }
        fragment.m19926n(this.f2409z);
        m19738d(fragment, this.f2409z, false);
        if (!this.f2409z.isEmpty()) {
            bundle = this.f2409z;
            this.f2409z = null;
        } else {
            bundle = null;
        }
        if (fragment.f2268O != null) {
            m19704r(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.f2289m != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.f2289m);
        }
        Bundle bundle3 = bundle2;
        if (!fragment.f2271R) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android:user_visible_hint", fragment.f2271R);
        }
        return bundle3;
    }

    /* renamed from: s */
    public void m19703s() {
        this.f2402s = false;
        this.f2403t = false;
        m19735e(4);
    }

    /* renamed from: t */
    public void m19701t() {
        m19735e(3);
    }

    /* renamed from: t */
    public void m19700t(Fragment fragment) {
        if (fragment == null || (this.f2390g.get(fragment.f2291o) == fragment && (fragment.f2255B == null || fragment.m19918v() == this))) {
            Fragment fragment2 = this.f2400q;
            this.f2400q = fragment;
            m19696v(fragment2);
            m19696v(this.f2400q);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.f2399p != null) {
            C0519a.m20650a(this.f2399p, sb);
        } else {
            C0519a.m20650a(this.f2397n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m19699u() {
        this.f2403t = true;
        m19735e(2);
    }

    /* renamed from: v */
    public void m19697v() {
        m19735e(1);
    }

    /* renamed from: w */
    public void m19695w() {
        this.f2404u = true;
        m19719k();
        m19735e(0);
        this.f2397n = null;
        this.f2398o = null;
        this.f2399p = null;
        if (this.f2382F != null) {
            this.f2383G.m22280b();
            this.f2382F = null;
        }
    }

    /* renamed from: x */
    public void m19693x() {
        for (int i = 0; i < this.f2389f.size(); i++) {
            Fragment fragment = this.f2389f.get(i);
            if (fragment != null) {
                fragment.m19975ac();
            }
        }
    }

    /* renamed from: y */
    public void m19692y() {
        m19809C();
        m19696v(this.f2400q);
    }

    /* renamed from: z */
    public Fragment m19691z() {
        return this.f2400q;
    }
}
