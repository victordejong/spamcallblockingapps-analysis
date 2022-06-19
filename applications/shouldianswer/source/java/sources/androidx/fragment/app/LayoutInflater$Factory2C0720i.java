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
import androidx.activity.AbstractC0049c;
import androidx.activity.AbstractC0050d;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.p022f.C0495a;
import androidx.core.p022f.C0496b;
import androidx.core.p023g.View$OnAttachStateChangeListenerC0549r;
import androidx.fragment.app.AbstractC0717h;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0927y;
import androidx.lifecycle.C0926x;
import androidx.p014c.C0376b;
import com.google.android.flexbox.FlexItem;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public final class LayoutInflater$Factory2C0720i extends AbstractC0717h implements LayoutInflater.Factory2 {

    /* renamed from: D */
    static final Interpolator f2338D = new DecelerateInterpolator(2.5f);

    /* renamed from: E */
    static final Interpolator f2339E = new DecelerateInterpolator(1.5f);

    /* renamed from: b */
    static boolean f2340b = false;

    /* renamed from: B */
    ArrayList<C0734g> f2342B;

    /* renamed from: F */
    private OnBackPressedDispatcher f2344F;

    /* renamed from: I */
    private C0735j f2347I;

    /* renamed from: c */
    ArrayList<AbstractC0732e> f2348c;

    /* renamed from: d */
    boolean f2349d;

    /* renamed from: h */
    ArrayList<C0708a> f2353h;

    /* renamed from: i */
    ArrayList<Fragment> f2354i;

    /* renamed from: j */
    ArrayList<C0708a> f2355j;

    /* renamed from: k */
    ArrayList<Integer> f2356k;

    /* renamed from: l */
    ArrayList<AbstractC0717h.AbstractC0719b> f2357l;

    /* renamed from: n */
    AbstractC0716g f2359n;

    /* renamed from: o */
    AbstractC0713d f2360o;

    /* renamed from: p */
    Fragment f2361p;

    /* renamed from: q */
    Fragment f2362q;

    /* renamed from: r */
    boolean f2363r;

    /* renamed from: s */
    boolean f2364s;

    /* renamed from: t */
    boolean f2365t;

    /* renamed from: u */
    boolean f2366u;

    /* renamed from: v */
    boolean f2367v;

    /* renamed from: w */
    ArrayList<C0708a> f2368w;

    /* renamed from: x */
    ArrayList<Boolean> f2369x;

    /* renamed from: y */
    ArrayList<Fragment> f2370y;

    /* renamed from: e */
    int f2350e = 0;

    /* renamed from: f */
    final ArrayList<Fragment> f2351f = new ArrayList<>();

    /* renamed from: g */
    final HashMap<String, Fragment> f2352g = new HashMap<>();

    /* renamed from: G */
    private final AbstractC0049c f2345G = new AbstractC0049c(false) { // from class: androidx.fragment.app.i.1
        @Override // androidx.activity.AbstractC0049c
        /* renamed from: c */
        public void mo5480c() {
            LayoutInflater$Factory2C0720i.this.m5527e();
        }
    };

    /* renamed from: H */
    private final CopyOnWriteArrayList<C0730c> f2346H = new CopyOnWriteArrayList<>();

    /* renamed from: m */
    int f2358m = 0;

    /* renamed from: z */
    Bundle f2371z = null;

    /* renamed from: A */
    SparseArray<Parcelable> f2341A = null;

    /* renamed from: C */
    Runnable f2343C = new Runnable() { // from class: androidx.fragment.app.i.2
        @Override // java.lang.Runnable
        public void run() {
            LayoutInflater$Factory2C0720i.this.m5510k();
        }
    };

    /* renamed from: androidx.fragment.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$a.class */
    public static class C0728a {

        /* renamed from: a */
        public final Animation f2387a;

        /* renamed from: b */
        public final Animator f2388b;

        C0728a(Animator animator) {
            this.f2387a = null;
            this.f2388b = animator;
            if (animator != null) {
                return;
            }
            throw new IllegalStateException("Animator cannot be null");
        }

        C0728a(Animation animation) {
            this.f2387a = animation;
            this.f2388b = null;
            if (animation != null) {
                return;
            }
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    /* renamed from: androidx.fragment.app.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$b.class */
    public static class RunnableC0729b extends AnimationSet implements Runnable {

        /* renamed from: a */
        private final ViewGroup f2389a;

        /* renamed from: b */
        private final View f2390b;

        /* renamed from: c */
        private boolean f2391c;

        /* renamed from: d */
        private boolean f2392d;

        /* renamed from: e */
        private boolean f2393e = true;

        RunnableC0729b(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2389a = viewGroup;
            this.f2390b = view;
            addAnimation(animation);
            this.f2389a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f2393e = true;
            if (this.f2391c) {
                return !this.f2392d;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f2391c = true;
            View$OnAttachStateChangeListenerC0549r.m6298a(this.f2389a, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f2393e = true;
            if (this.f2391c) {
                return !this.f2392d;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f2391c = true;
            View$OnAttachStateChangeListenerC0549r.m6298a(this.f2389a, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2391c || !this.f2393e) {
                this.f2389a.endViewTransition(this.f2390b);
                this.f2392d = true;
                return;
            }
            this.f2393e = false;
            this.f2389a.post(this);
        }
    }

    /* renamed from: androidx.fragment.app.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$c.class */
    public static final class C0730c {

        /* renamed from: a */
        final AbstractC0717h.AbstractC0718a f2394a;

        /* renamed from: b */
        final boolean f2395b;
    }

    /* renamed from: androidx.fragment.app.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$d.class */
    public static class C0731d {

        /* renamed from: a */
        public static final int[] f2396a = {16842755, 16842960, 16842961};
    }

    /* renamed from: androidx.fragment.app.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$e.class */
    public interface AbstractC0732e {
        /* renamed from: a */
        boolean mo5478a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.i$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$f.class */
    private class C0733f implements AbstractC0732e {

        /* renamed from: a */
        final String f2397a;

        /* renamed from: b */
        final int f2398b;

        /* renamed from: c */
        final int f2399c;

        C0733f(String str, int i, int i2) {
            LayoutInflater$Factory2C0720i.this = r4;
            this.f2397a = str;
            this.f2398b = i;
            this.f2399c = i2;
        }

        @Override // androidx.fragment.app.LayoutInflater$Factory2C0720i.AbstractC0732e
        /* renamed from: a */
        public boolean mo5478a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2) {
            if (LayoutInflater$Factory2C0720i.this.f2362q == null || this.f2398b >= 0 || this.f2397a != null || !LayoutInflater$Factory2C0720i.this.f2362q.getChildFragmentManager().mo5555b()) {
                return LayoutInflater$Factory2C0720i.this.m5557a(arrayList, arrayList2, this.f2397a, this.f2398b, this.f2399c);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.i$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/i$g.class */
    public static class C0734g implements Fragment.AbstractC0705b {

        /* renamed from: a */
        final boolean f2401a;

        /* renamed from: b */
        final C0708a f2402b;

        /* renamed from: c */
        private int f2403c;

        C0734g(C0708a c0708a, boolean z) {
            this.f2401a = z;
            this.f2402b = c0708a;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0705b
        /* renamed from: a */
        public void mo5477a() {
            this.f2403c--;
            if (this.f2403c != 0) {
                return;
            }
            this.f2402b.f2314a.m5512j();
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0705b
        /* renamed from: b */
        public void mo5476b() {
            this.f2403c++;
        }

        /* renamed from: c */
        public boolean m5475c() {
            return this.f2403c == 0;
        }

        /* renamed from: d */
        public void m5474d() {
            boolean z = this.f2403c > 0;
            LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.f2402b.f2314a;
            int size = layoutInflater$Factory2C0720i.f2351f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = layoutInflater$Factory2C0720i.f2351f.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.f2402b.f2314a.m5567a(this.f2402b, this.f2401a, !z, true);
        }

        /* renamed from: e */
        public void m5473e() {
            this.f2402b.f2314a.m5567a(this.f2402b, this.f2401a, false, false);
        }
    }

    /* renamed from: C */
    private void m5598C() {
        ArrayList<AbstractC0732e> arrayList = this.f2348c;
        boolean z = true;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.f2345G.m7989a(true);
            return;
        }
        AbstractC0049c abstractC0049c = this.f2345G;
        if (m5523f() <= 0 || !m5549b(this.f2361p)) {
            z = false;
        }
        abstractC0049c.m7989a(z);
    }

    /* renamed from: D */
    private void m5597D() {
        if (!m5514i()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: E */
    private void m5596E() {
        this.f2349d = false;
        this.f2369x.clear();
        this.f2368w.clear();
    }

    /* renamed from: F */
    private void m5595F() {
        if (this.f2342B != null) {
            while (!this.f2342B.isEmpty()) {
                this.f2342B.remove(0).m5474d();
            }
        }
    }

    /* renamed from: G */
    private void m5594G() {
        for (Fragment fragment : this.f2352g.values()) {
            if (fragment != null) {
                if (fragment.getAnimatingAway() != null) {
                    int stateAfterAnimating = fragment.getStateAfterAnimating();
                    View animatingAway = fragment.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    fragment.setAnimatingAway(null);
                    m5576a(fragment, stateAfterAnimating, 0, 0, false);
                } else if (fragment.getAnimator() != null) {
                    fragment.getAnimator().end();
                }
            }
        }
    }

    /* renamed from: H */
    private void m5593H() {
        this.f2352g.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: a */
    private int m5558a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C0376b<Fragment> c0376b) {
        int i3 = i2 - 1;
        int i4 = i2;
        while (true) {
            int i5 = i4;
            if (i3 >= i) {
                C0708a c0708a = arrayList.get(i3);
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                int i6 = i5;
                if (c0708a.m5680g() && !c0708a.m5688a(arrayList, i3 + 1, i2)) {
                    if (this.f2342B == null) {
                        this.f2342B = new ArrayList<>();
                    }
                    C0734g c0734g = new C0734g(c0708a, booleanValue);
                    this.f2342B.add(c0734g);
                    c0708a.m5691a(c0734g);
                    if (booleanValue) {
                        c0708a.m5681f();
                    } else {
                        c0708a.m5682b(false);
                    }
                    i6 = i5 - 1;
                    if (i3 != i6) {
                        arrayList.remove(i3);
                        arrayList.add(i6, c0708a);
                    }
                    m5550b(c0376b);
                }
                i3--;
                i4 = i6;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: a */
    static C0728a m5591a(float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(f2339E);
        alphaAnimation.setDuration(220L);
        return new C0728a(alphaAnimation);
    }

    /* renamed from: a */
    static C0728a m5590a(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(f2338D);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(f2339E);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new C0728a(animationSet);
    }

    /* renamed from: a */
    private void m5578a(C0376b<Fragment> c0376b) {
        int size = c0376b.size();
        for (int i = 0; i < size; i++) {
            Fragment m6863b = c0376b.m6863b(i);
            if (!m6863b.mAdded) {
                View requireView = m6863b.requireView();
                m6863b.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(FlexItem.FLEX_GROW_DEFAULT);
            }
        }
    }

    /* renamed from: a */
    private void m5571a(final Fragment fragment, C0728a c0728a, int i) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        fragment.setStateAfterAnimating(i);
        if (c0728a.f2387a != null) {
            RunnableC0729b runnableC0729b = new RunnableC0729b(c0728a.f2387a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            runnableC0729b.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.i.3
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.i.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                LayoutInflater$Factory2C0720i.this.m5576a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
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
            fragment.mView.startAnimation(runnableC0729b);
            return;
        }
        Animator animator = c0728a.f2388b;
        fragment.setAnimator(c0728a.f2388b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.i.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = LayoutInflater$Factory2C0720i.this;
                Fragment fragment2 = fragment;
                layoutInflater$Factory2C0720i.m5576a(fragment2, fragment2.getStateAfterAnimating(), 0, 0, false);
            }
        });
        animator.setTarget(fragment.mView);
        animator.start();
    }

    /* renamed from: a */
    private void m5564a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0496b("FragmentManager"));
        AbstractC0716g abstractC0716g = this.f2359n;
        if (abstractC0716g != null) {
            try {
                abstractC0716g.mo5626a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                mo5561a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* renamed from: a */
    private void m5560a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int i2;
        int indexOf;
        int indexOf2;
        ArrayList<C0734g> arrayList3 = this.f2342B;
        int i3 = 0;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        while (true) {
            int i4 = size;
            if (i3 < i4) {
                C0734g c0734g = this.f2342B.get(i3);
                if (arrayList == null || c0734g.f2401a || (indexOf2 = arrayList.indexOf(c0734g.f2402b)) == -1 || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!c0734g.m5475c()) {
                        i2 = i3;
                        i = i4;
                        if (arrayList != null) {
                            i2 = i3;
                            i = i4;
                            if (!c0734g.f2402b.m5688a(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f2342B.remove(i3);
                    i2 = i3 - 1;
                    i = i4 - 1;
                    if (arrayList == null || c0734g.f2401a || (indexOf = arrayList.indexOf(c0734g.f2402b)) == -1 || !arrayList2.get(indexOf).booleanValue()) {
                        c0734g.m5474d();
                    } else {
                        c0734g.m5473e();
                    }
                } else {
                    this.f2342B.remove(i3);
                    i2 = i3 - 1;
                    i = i4 - 1;
                    c0734g.m5473e();
                }
                i3 = i2 + 1;
                size = i;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m5559a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f2433t;
        ArrayList<Fragment> arrayList3 = this.f2370y;
        if (arrayList3 == null) {
            this.f2370y = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f2370y.addAll(this.f2351f);
        Fragment m5481z = m5481z();
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            C0708a c0708a = arrayList.get(i4);
            m5481z = !arrayList2.get(i4).booleanValue() ? c0708a.m5687a(this.f2370y, m5481z) : c0708a.m5683b(this.f2370y, m5481z);
            z2 = z2 || c0708a.f2424k;
        }
        this.f2370y.clear();
        if (!z) {
            C0740m.m5442a(this, arrayList, arrayList2, i, i2, false);
        }
        m5541b(arrayList, arrayList2, i, i2);
        if (z) {
            C0376b<Fragment> c0376b = new C0376b<>();
            m5550b(c0376b);
            i3 = m5558a(arrayList, arrayList2, i, i2, c0376b);
            m5578a(c0376b);
        } else {
            i3 = i2;
        }
        int i5 = i;
        if (i3 != i) {
            i5 = i;
            if (z) {
                C0740m.m5442a(this, arrayList, arrayList2, i, i3, true);
                m5586a(this.f2358m, true);
                i5 = i;
            }
        }
        while (i5 < i2) {
            C0708a c0708a2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && c0708a2.f2316c >= 0) {
                m5538c(c0708a2.f2316c);
                c0708a2.f2316c = -1;
            }
            c0708a2.m5693a();
            i5++;
        }
        if (z2) {
            m5506m();
        }
    }

    /* renamed from: a */
    private boolean m5562a(String str, int i, int i2) {
        m5510k();
        m5533c(true);
        Fragment fragment = this.f2362q;
        if (fragment == null || i >= 0 || str != null || !fragment.getChildFragmentManager().mo5555b()) {
            boolean m5557a = m5557a(this.f2368w, this.f2369x, str, i, i2);
            if (m5557a) {
                this.f2349d = true;
                try {
                    m5542b(this.f2368w, this.f2369x);
                } finally {
                    m5596E();
                }
            }
            m5598C();
            m5508l();
            m5593H();
            return m5557a;
        }
        return true;
    }

    /* renamed from: b */
    public static int m5553b(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? 3 : 4 : z ? 5 : 6 : z ? 1 : 2;
    }

    /* renamed from: b */
    private void m5550b(C0376b<Fragment> c0376b) {
        int i = this.f2358m;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 3);
        int size = this.f2351f.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f2351f.get(i2);
            if (fragment.mState < min) {
                m5576a(fragment, min, fragment.getNextAnim(), fragment.getNextTransition(), false);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    c0376b.add(fragment);
                }
            }
        }
    }

    /* renamed from: b */
    private void m5542b(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m5560a(arrayList, arrayList2);
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
            if (!arrayList.get(i2).f2433t) {
                if (i != i2) {
                    m5559a(arrayList, arrayList2, i, i2);
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
                        if (arrayList.get(i6).f2433t) {
                            break;
                        }
                        i6++;
                    }
                }
                m5559a(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m5559a(arrayList, arrayList2, i, size);
    }

    /* renamed from: b */
    private static void m5541b(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C0708a c0708a = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                c0708a.m5692a(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                c0708a.m5682b(z);
            } else {
                c0708a.m5692a(1);
                c0708a.m5681f();
            }
            i++;
        }
    }

    /* renamed from: c */
    private void m5533c(boolean z) {
        if (!this.f2349d) {
            if (this.f2359n == null) {
                throw new IllegalStateException("Fragment host has been destroyed");
            }
            if (Looper.myLooper() != this.f2359n.m5617k().getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
            if (!z) {
                m5597D();
            }
            if (this.f2368w == null) {
                this.f2368w = new ArrayList<>();
                this.f2369x = new ArrayList<>();
            }
            this.f2349d = true;
            try {
                m5560a((ArrayList<C0708a>) null, (ArrayList<Boolean>) null);
                return;
            } finally {
                this.f2349d = false;
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: c */
    private boolean m5534c(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.f2348c != null && this.f2348c.size() != 0) {
                int size = this.f2348c.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f2348c.get(i).mo5478a(arrayList, arrayList2);
                }
                this.f2348c.clear();
                this.f2359n.m5617k().removeCallbacks(this.f2343C);
                return z;
            }
            return false;
        }
    }

    /* renamed from: d */
    public static int m5531d(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private void m5526e(int i) {
        try {
            this.f2349d = true;
            m5586a(i, false);
            this.f2349d = false;
            m5510k();
        } catch (Throwable th) {
            this.f2349d = false;
            throw th;
        }
    }

    /* renamed from: v */
    private Fragment m5487v(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f2351f.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f2351f.get(indexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: w */
    private void m5485w(Fragment fragment) {
        if (fragment == null || this.f2352g.get(fragment.mWho) != fragment) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    /* renamed from: x */
    private boolean m5483x(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.m5600A();
    }

    /* renamed from: A */
    boolean m5600A() {
        boolean z = false;
        for (Fragment fragment : this.f2352g.values()) {
            boolean z2 = z;
            if (fragment != null) {
                z2 = m5483x(fragment);
            }
            z = z2;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: B */
    public LayoutInflater.Factory2 m5599B() {
        return this;
    }

    /* renamed from: a */
    public int m5568a(C0708a c0708a) {
        synchronized (this) {
            if (this.f2356k != null && this.f2356k.size() > 0) {
                int intValue = this.f2356k.remove(this.f2356k.size() - 1).intValue();
                if (f2340b) {
                    Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + c0708a);
                }
                this.f2355j.set(intValue, c0708a);
                return intValue;
            }
            if (this.f2355j == null) {
                this.f2355j = new ArrayList<>();
            }
            int size = this.f2355j.size();
            if (f2340b) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + c0708a);
            }
            this.f2355j.add(c0708a);
            return size;
        }
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public Fragment.SavedState mo5577a(Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            m5564a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        Fragment.SavedState savedState = null;
        if (fragment.mState > 0) {
            Bundle m5491t = m5491t(fragment);
            savedState = null;
            if (m5491t != null) {
                savedState = new Fragment.SavedState(m5491t);
            }
        }
        return savedState;
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public Fragment mo5584a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment fragment = this.f2352g.get(string);
        if (fragment == null) {
            m5564a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public Fragment mo5563a(String str) {
        if (str != null) {
            for (int size = this.f2351f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f2351f.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (Fragment fragment2 : this.f2352g.values()) {
                if (fragment2 != null && str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    C0728a m5575a(Fragment fragment, int i, boolean z, int i2) {
        int m5553b;
        int nextAnim = fragment.getNextAnim();
        fragment.setNextAnim(0);
        if (fragment.mContainer == null || fragment.mContainer.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(i, z, nextAnim);
            if (onCreateAnimation != null) {
                return new C0728a(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(i, z, nextAnim);
            if (onCreateAnimator != null) {
                return new C0728a(onCreateAnimator);
            }
            if (nextAnim != 0) {
                boolean equals = "anim".equals(this.f2359n.m5618j().getResources().getResourceTypeName(nextAnim));
                boolean z2 = false;
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(this.f2359n.m5618j(), nextAnim);
                        if (loadAnimation != null) {
                            return new C0728a(loadAnimation);
                        }
                        z2 = true;
                    } catch (Resources.NotFoundException e) {
                        throw e;
                    } catch (RuntimeException e2) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    try {
                        Animator loadAnimator = AnimatorInflater.loadAnimator(this.f2359n.m5618j(), nextAnim);
                        if (loadAnimator != null) {
                            return new C0728a(loadAnimator);
                        }
                    } catch (RuntimeException e3) {
                        if (equals) {
                            throw e3;
                        }
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f2359n.m5618j(), nextAnim);
                        if (loadAnimation2 != null) {
                            return new C0728a(loadAnimation2);
                        }
                    }
                }
            }
            if (i == 0 || (m5553b = m5553b(i, z)) < 0) {
                return null;
            }
            switch (m5553b) {
                case 1:
                    return m5590a(1.125f, 1.0f, (float) FlexItem.FLEX_GROW_DEFAULT, 1.0f);
                case 2:
                    return m5590a(1.0f, 0.975f, 1.0f, (float) FlexItem.FLEX_GROW_DEFAULT);
                case 3:
                    return m5590a(0.975f, 1.0f, (float) FlexItem.FLEX_GROW_DEFAULT, 1.0f);
                case 4:
                    return m5590a(1.0f, 1.075f, 1.0f, (float) FlexItem.FLEX_GROW_DEFAULT);
                case 5:
                    return m5591a((float) FlexItem.FLEX_GROW_DEFAULT, 1.0f);
                case 6:
                    return m5591a(1.0f, (float) FlexItem.FLEX_GROW_DEFAULT);
                default:
                    int i3 = i2;
                    if (i2 == 0) {
                        i3 = i2;
                        if (this.f2359n.mo5622f()) {
                            i3 = this.f2359n.mo5621g();
                        }
                    }
                    if (i3 == 0) {
                    }
                    return null;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public AbstractC0738l mo5592a() {
        return new C0708a(this);
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public void mo5588a(int i, int i2) {
        if (i >= 0) {
            m5565a((AbstractC0732e) new C0733f(null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: a */
    public void m5587a(int i, C0708a c0708a) {
        synchronized (this) {
            if (this.f2355j == null) {
                this.f2355j = new ArrayList<>();
            }
            int size = this.f2355j.size();
            if (i < size) {
                if (f2340b) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + c0708a);
                }
                this.f2355j.set(i, c0708a);
            } else {
                for (int i2 = size; i2 < i; i2++) {
                    this.f2355j.add(null);
                    if (this.f2356k == null) {
                        this.f2356k = new ArrayList<>();
                    }
                    if (f2340b) {
                        Log.v("FragmentManager", "Adding available back stack index " + i2);
                    }
                    this.f2356k.add(Integer.valueOf(i2));
                }
                if (f2340b) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + c0708a);
                }
                this.f2355j.add(c0708a);
            }
        }
    }

    /* renamed from: a */
    public void m5586a(int i, boolean z) {
        AbstractC0716g abstractC0716g;
        if (this.f2359n != null || i == 0) {
            if (!z && i == this.f2358m) {
                return;
            }
            this.f2358m = i;
            int size = this.f2351f.size();
            for (int i2 = 0; i2 < size; i2++) {
                m5509k(this.f2351f.get(i2));
            }
            for (Fragment fragment : this.f2352g.values()) {
                if (fragment != null && (fragment.mRemoving || fragment.mDetached)) {
                    if (!fragment.mIsNewlyAdded) {
                        m5509k(fragment);
                    }
                }
            }
            m5517h();
            if (!this.f2363r || (abstractC0716g = this.f2359n) == null || this.f2358m != 4) {
                return;
            }
            abstractC0716g.mo5623e();
            this.f2363r = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* renamed from: a */
    public void m5585a(Configuration configuration) {
        for (int i = 0; i < this.f2351f.size(); i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public void mo5583a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            m5564a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    /* renamed from: a */
    public void m5582a(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f2295a == null) {
            return;
        }
        for (Fragment fragment : this.f2347I.m5468c()) {
            if (f2340b) {
                Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
            }
            Iterator<FragmentState> it = fragmentManagerState.f2295a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    fragmentState = null;
                    break;
                }
                fragmentState = it.next();
                if (fragmentState.f2301b.equals(fragment.mWho)) {
                    break;
                }
            }
            if (fragmentState == null) {
                if (f2340b) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f2295a);
                }
                m5576a(fragment, 1, 0, 0, false);
                fragment.mRemoving = true;
                m5576a(fragment, 0, 0, 0, false);
            } else {
                fragmentState.f2313n = fragment;
                fragment.mSavedViewState = null;
                fragment.mBackStackNesting = 0;
                fragment.mInLayout = false;
                fragment.mAdded = false;
                fragment.mTargetWho = fragment.mTarget != null ? fragment.mTarget.mWho : null;
                fragment.mTarget = null;
                if (fragmentState.f2312m != null) {
                    fragmentState.f2312m.setClassLoader(this.f2359n.m5618j().getClassLoader());
                    fragment.mSavedViewState = fragmentState.f2312m.getSparseParcelableArray("android:view_state");
                    fragment.mSavedFragmentState = fragmentState.f2312m;
                }
            }
        }
        this.f2352g.clear();
        Iterator<FragmentState> it2 = fragmentManagerState.f2295a.iterator();
        while (it2.hasNext()) {
            FragmentState next = it2.next();
            if (next != null) {
                Fragment m5696a = next.m5696a(this.f2359n.m5618j().getClassLoader(), mo5532d());
                m5696a.mFragmentManager = this;
                if (f2340b) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m5696a.mWho + "): " + m5696a);
                }
                this.f2352g.put(m5696a.mWho, m5696a);
                next.f2313n = null;
            }
        }
        this.f2351f.clear();
        if (fragmentManagerState.f2296b != null) {
            Iterator<String> it3 = fragmentManagerState.f2296b.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                Fragment fragment2 = this.f2352g.get(next2);
                if (fragment2 == null) {
                    m5564a(new IllegalStateException("No instantiated fragment for (" + next2 + ")"));
                }
                fragment2.mAdded = true;
                if (f2340b) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + next2 + "): " + fragment2);
                }
                if (this.f2351f.contains(fragment2)) {
                    throw new IllegalStateException("Already added " + fragment2);
                }
                synchronized (this.f2351f) {
                    this.f2351f.add(fragment2);
                }
            }
        }
        if (fragmentManagerState.f2297c != null) {
            this.f2353h = new ArrayList<>(fragmentManagerState.f2297c.length);
            for (int i = 0; i < fragmentManagerState.f2297c.length; i++) {
                C0708a m5704a = fragmentManagerState.f2297c[i].m5704a(this);
                if (f2340b) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m5704a.f2316c + "): " + m5704a);
                    PrintWriter printWriter = new PrintWriter(new C0496b("FragmentManager"));
                    m5704a.m5689a("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2353h.add(m5704a);
                if (m5704a.f2316c >= 0) {
                    m5587a(m5704a.f2316c, m5704a);
                }
            }
        } else {
            this.f2353h = null;
        }
        if (fragmentManagerState.f2298d != null) {
            this.f2362q = this.f2352g.get(fragmentManagerState.f2298d);
            m5485w(this.f2362q);
        }
        this.f2350e = fragmentManagerState.f2299e;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0548  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0585  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5576a(androidx.fragment.app.Fragment r8, int r9, int r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 2376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.LayoutInflater$Factory2C0720i.m5576a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    /* renamed from: a */
    void m5574a(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5574a(fragment, context, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5614a(this, fragment, context);
            }
        }
    }

    /* renamed from: a */
    void m5573a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5573a(fragment, bundle, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5613a(this, fragment, bundle);
            }
        }
    }

    /* renamed from: a */
    void m5572a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5572a(fragment, view, bundle, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5612a(this, fragment, view, bundle);
            }
        }
    }

    /* renamed from: a */
    public void m5570a(Fragment fragment, AbstractC0896g.EnumC0898b enumC0898b) {
        if (this.f2352g.get(fragment.mWho) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this)) {
            fragment.mMaxState = enumC0898b;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: a */
    public void m5569a(Fragment fragment, boolean z) {
        if (f2340b) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        m5507l(fragment);
        if (!fragment.mDetached) {
            if (this.f2351f.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            synchronized (this.f2351f) {
                this.f2351f.add(fragment);
            }
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (m5483x(fragment)) {
                this.f2363r = true;
            }
            if (!z) {
                return;
            }
            m5516h(fragment);
        }
    }

    /* renamed from: a */
    void m5567a(C0708a c0708a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0708a.m5682b(z3);
        } else {
            c0708a.m5681f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0708a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            C0740m.m5442a(this, (ArrayList<C0708a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            m5586a(this.f2358m, true);
        }
        for (Fragment fragment : this.f2352g.values()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && c0708a.m5685b(fragment.mContainerId)) {
                if (fragment.mPostponedAlpha > FlexItem.FLEX_GROW_DEFAULT) {
                    fragment.mView.setAlpha(fragment.mPostponedAlpha);
                }
                if (z3) {
                    fragment.mPostponedAlpha = FlexItem.FLEX_GROW_DEFAULT;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    /* renamed from: a */
    public void m5566a(AbstractC0716g abstractC0716g, AbstractC0713d abstractC0713d, Fragment fragment) {
        if (this.f2359n == null) {
            this.f2359n = abstractC0716g;
            this.f2360o = abstractC0713d;
            this.f2361p = fragment;
            if (this.f2361p != null) {
                m5598C();
            }
            if (abstractC0716g instanceof AbstractC0050d) {
                AbstractC0050d abstractC0050d = (AbstractC0050d) abstractC0716g;
                this.f2344F = abstractC0050d.mo5664b();
                AbstractC0050d abstractC0050d2 = abstractC0050d;
                if (fragment != null) {
                    abstractC0050d2 = fragment;
                }
                this.f2344F.m7995a(abstractC0050d2, this.f2345G);
            }
            if (fragment != null) {
                this.f2347I = fragment.mFragmentManager.m5530d(fragment);
                return;
            } else if (abstractC0716g instanceof AbstractC0927y) {
                this.f2347I = C0735j.m5471a(((AbstractC0927y) abstractC0716g).getViewModelStore());
                return;
            } else {
                this.f2347I = new C0735j(false);
                return;
            }
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: a */
    public void m5565a(AbstractC0732e abstractC0732e, boolean z) {
        if (!z) {
            m5597D();
        }
        synchronized (this) {
            if (!this.f2366u && this.f2359n != null) {
                if (this.f2348c == null) {
                    this.f2348c = new ArrayList<>();
                }
                this.f2348c.add(abstractC0732e);
                m5512j();
                return;
            }
            if (z) {
                return;
            }
            throw new IllegalStateException("Activity has been destroyed");
        }
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: a */
    public void mo5561a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2 = str + "    ";
        if (!this.f2352g.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.f2352g.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.f2351f.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size5; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f2351f.get(i).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f2354i;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size4; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f2354i.get(i2).toString());
            }
        }
        ArrayList<C0708a> arrayList2 = this.f2353h;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C0708a c0708a = this.f2353h.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0708a.toString());
                c0708a.m5690a(str2, printWriter);
            }
        }
        synchronized (this) {
            if (this.f2355j != null && (size2 = this.f2355j.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i4 = 0; i4 < size2; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((C0708a) this.f2355j.get(i4));
                }
            }
            if (this.f2356k != null && this.f2356k.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f2356k.toArray()));
            }
        }
        ArrayList<AbstractC0732e> arrayList3 = this.f2348c;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i5 = 0; i5 < size; i5++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println((AbstractC0732e) this.f2348c.get(i5));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f2359n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f2360o);
        if (this.f2361p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f2361p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f2358m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f2364s);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2365t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f2366u);
        if (this.f2363r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f2363r);
        }
    }

    /* renamed from: a */
    public void m5556a(boolean z) {
        for (int size = this.f2351f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2351f.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: a */
    public boolean m5589a(int i) {
        return this.f2358m >= i;
    }

    /* renamed from: a */
    public boolean m5581a(Menu menu) {
        int i = 0;
        if (this.f2358m < 1) {
            return false;
        }
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= this.f2351f.size()) {
                return z2;
            }
            Fragment fragment = this.f2351f.get(i);
            boolean z3 = z2;
            if (fragment != null) {
                z3 = z2;
                if (fragment.performPrepareOptionsMenu(menu)) {
                    z3 = true;
                }
            }
            i++;
            z = z3;
        }
    }

    /* renamed from: a */
    public boolean m5580a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        if (this.f2358m < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= this.f2351f.size()) {
                break;
            }
            Fragment fragment = this.f2351f.get(i);
            ArrayList<Fragment> arrayList2 = arrayList;
            boolean z3 = z;
            if (fragment != null) {
                arrayList2 = arrayList;
                z3 = z;
                if (fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add(fragment);
                    z3 = true;
                }
            }
            i++;
            arrayList = arrayList2;
            z2 = z3;
        }
        if (this.f2354i != null) {
            for (int i2 = 0; i2 < this.f2354i.size(); i2++) {
                Fragment fragment2 = this.f2354i.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2354i = arrayList;
        return z;
    }

    /* renamed from: a */
    public boolean m5579a(MenuItem menuItem) {
        if (this.f2358m < 1) {
            return false;
        }
        for (int i = 0; i < this.f2351f.size(); i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    boolean m5557a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C0708a> arrayList3 = this.f2353h;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f2353h.remove(size));
            arrayList2.add(true);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = this.f2353h.size() - 1;
            while (size2 >= 0) {
                C0708a c0708a = this.f2353h.get(size2);
                if ((str != null && str.equals(c0708a.m5679h())) || (i >= 0 && i == c0708a.f2316c)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            i3 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i4 = size2 - 1;
                    i3 = i4;
                    if (i4 < 0) {
                        break;
                    }
                    C0708a c0708a2 = this.f2353h.get(i4);
                    if (str != null) {
                        size2 = i4;
                        if (str.equals(c0708a2.m5679h())) {
                            continue;
                        }
                    }
                    i3 = i4;
                    if (i < 0) {
                        break;
                    }
                    i3 = i4;
                    if (i != c0708a2.f2316c) {
                        break;
                    }
                    size2 = i4;
                }
            }
        } else {
            i3 = -1;
        }
        if (i3 == this.f2353h.size() - 1) {
            return false;
        }
        for (int size3 = this.f2353h.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f2353h.remove(size3));
            arrayList2.add(true);
        }
        return true;
    }

    /* renamed from: b */
    public Fragment m5554b(int i) {
        for (int size = this.f2351f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2351f.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.f2352g.values()) {
            if (fragment2 != null && fragment2.mFragmentId == i) {
                return fragment2;
            }
        }
        return null;
    }

    /* renamed from: b */
    public Fragment m5543b(String str) {
        Fragment findFragmentByWho;
        for (Fragment fragment : this.f2352g.values()) {
            if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m5552b(Menu menu) {
        if (this.f2358m < 1) {
            return;
        }
        for (int i = 0; i < this.f2351f.size(); i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: b */
    void m5548b(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5548b(fragment, context, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5610b(this, fragment, context);
            }
        }
    }

    /* renamed from: b */
    void m5547b(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5547b(fragment, bundle, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5609b(this, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    void m5546b(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5546b(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5615a(this, fragment);
            }
        }
    }

    /* renamed from: b */
    public void m5545b(C0708a c0708a) {
        if (this.f2353h == null) {
            this.f2353h = new ArrayList<>();
        }
        this.f2353h.add(c0708a);
    }

    /* renamed from: b */
    public void m5544b(AbstractC0732e abstractC0732e, boolean z) {
        if (!z || (this.f2359n != null && !this.f2366u)) {
            m5533c(z);
            if (abstractC0732e.mo5478a(this.f2368w, this.f2369x)) {
                this.f2349d = true;
                try {
                    m5542b(this.f2368w, this.f2369x);
                } finally {
                    m5596E();
                }
            }
            m5598C();
            m5508l();
            m5593H();
        }
    }

    /* renamed from: b */
    public void m5540b(boolean z) {
        for (int size = this.f2351f.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2351f.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: b */
    public boolean mo5555b() {
        m5597D();
        return m5562a((String) null, -1, 0);
    }

    /* renamed from: b */
    public boolean m5551b(MenuItem menuItem) {
        if (this.f2358m < 1) {
            return false;
        }
        for (int i = 0; i < this.f2351f.size(); i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m5549b(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = fragment.mFragmentManager;
        if (fragment != layoutInflater$Factory2C0720i.m5481z() || !m5549b(layoutInflater$Factory2C0720i.f2361p)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public C0926x m5537c(Fragment fragment) {
        return this.f2347I.m5465e(fragment);
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: c */
    public List<Fragment> mo5539c() {
        List<Fragment> list;
        if (this.f2351f.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2351f) {
            list = (List) this.f2351f.clone();
        }
        return list;
    }

    /* renamed from: c */
    public void m5538c(int i) {
        synchronized (this) {
            this.f2355j.set(i, null);
            if (this.f2356k == null) {
                this.f2356k = new ArrayList<>();
            }
            if (f2340b) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.f2356k.add(Integer.valueOf(i));
        }
    }

    /* renamed from: c */
    void m5536c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5536c(fragment, bundle, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5607c(this, fragment, bundle);
            }
        }
    }

    /* renamed from: c */
    void m5535c(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5535c(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5611b(this, fragment);
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0717h
    /* renamed from: d */
    public C0715f mo5532d() {
        if (super.mo5532d() == f2336a) {
            Fragment fragment = this.f2361p;
            if (fragment != null) {
                return fragment.mFragmentManager.mo5532d();
            }
            m5616a(new C0715f() { // from class: androidx.fragment.app.i.6
                @Override // androidx.fragment.app.C0715f
                /* renamed from: c */
                public Fragment mo5479c(ClassLoader classLoader, String str) {
                    return LayoutInflater$Factory2C0720i.this.f2359n.m5662a(LayoutInflater$Factory2C0720i.this.f2359n.m5618j(), str, (Bundle) null);
                }
            });
        }
        return super.mo5532d();
    }

    /* renamed from: d */
    C0735j m5530d(Fragment fragment) {
        return this.f2347I.m5466d(fragment);
    }

    /* renamed from: d */
    void m5529d(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5529d(fragment, bundle, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5605d(this, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    void m5528d(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5528d(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5608c(this, fragment);
            }
        }
    }

    /* renamed from: e */
    void m5527e() {
        m5510k();
        if (this.f2345G.m7991a()) {
            mo5555b();
        } else {
            this.f2344F.m7997a();
        }
    }

    /* renamed from: e */
    public void m5525e(Fragment fragment) {
        if (m5514i()) {
            if (!f2340b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
        } else if (!this.f2347I.m5472a(fragment) || !f2340b) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    /* renamed from: e */
    void m5524e(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5524e(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5606d(this, fragment);
            }
        }
    }

    /* renamed from: f */
    public int m5523f() {
        ArrayList<C0708a> arrayList = this.f2353h;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: f */
    public void m5522f(Fragment fragment) {
        if (m5514i()) {
            if (!f2340b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
        } else if (!this.f2347I.m5467c(fragment) || !f2340b) {
        } else {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    /* renamed from: f */
    void m5521f(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5521f(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5604e(this, fragment);
            }
        }
    }

    /* renamed from: g */
    public void m5519g(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.f2349d) {
                this.f2367v = true;
                return;
            }
            fragment.mDeferStart = false;
            m5576a(fragment, this.f2358m, 0, 0, false);
        }
    }

    /* renamed from: g */
    void m5518g(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5518g(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5603f(this, fragment);
            }
        }
    }

    /* renamed from: g */
    public boolean m5520g() {
        return this.f2366u;
    }

    /* renamed from: h */
    void m5517h() {
        for (Fragment fragment : this.f2352g.values()) {
            if (fragment != null) {
                m5519g(fragment);
            }
        }
    }

    /* renamed from: h */
    void m5516h(Fragment fragment) {
        m5576a(fragment, this.f2358m, 0, 0, false);
    }

    /* renamed from: h */
    void m5515h(Fragment fragment, boolean z) {
        Fragment fragment2 = this.f2361p;
        if (fragment2 != null) {
            AbstractC0717h fragmentManager = fragment2.getFragmentManager();
            if (fragmentManager instanceof LayoutInflater$Factory2C0720i) {
                ((LayoutInflater$Factory2C0720i) fragmentManager).m5515h(fragment, true);
            }
        }
        Iterator<C0730c> it = this.f2346H.iterator();
        while (it.hasNext()) {
            C0730c next = it.next();
            if (!z || next.f2395b) {
                next.f2394a.m5602g(this, fragment);
            }
        }
    }

    /* renamed from: i */
    void m5513i(Fragment fragment) {
        if (!fragment.mFromLayout || fragment.mPerformedCreateView) {
            return;
        }
        fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
        if (fragment.mView == null) {
            fragment.mInnerView = null;
            return;
        }
        fragment.mInnerView = fragment.mView;
        fragment.mView.setSaveFromParentEnabled(false);
        if (fragment.mHidden) {
            fragment.mView.setVisibility(8);
        }
        fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
        m5572a(fragment, fragment.mView, fragment.mSavedFragmentState, false);
    }

    /* renamed from: i */
    public boolean m5514i() {
        return this.f2364s || this.f2365t;
    }

    /* renamed from: j */
    void m5512j() {
        synchronized (this) {
            boolean z = this.f2342B != null && !this.f2342B.isEmpty();
            boolean z2 = false;
            if (this.f2348c != null) {
                z2 = false;
                if (this.f2348c.size() == 1) {
                    z2 = true;
                }
            }
            if (z || z2) {
                this.f2359n.m5617k().removeCallbacks(this.f2343C);
                this.f2359n.m5617k().post(this.f2343C);
                m5598C();
            }
        }
    }

    /* renamed from: j */
    void m5511j(final Fragment fragment) {
        if (fragment.mView != null) {
            C0728a m5575a = m5575a(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (m5575a == null || m5575a.f2388b == null) {
                if (m5575a != null) {
                    fragment.mView.startAnimation(m5575a.f2387a);
                    m5575a.f2387a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                m5575a.f2388b.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    final ViewGroup viewGroup = fragment.mContainer;
                    final View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    m5575a.f2388b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.i.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            viewGroup.endViewTransition(view);
                            animator.removeListener(this);
                            if (fragment.mView == null || !fragment.mHidden) {
                                return;
                            }
                            fragment.mView.setVisibility(8);
                        }
                    });
                }
                m5575a.f2388b.start();
            }
        }
        if (fragment.mAdded && m5483x(fragment)) {
            this.f2363r = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* renamed from: k */
    public void m5509k(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        if (!this.f2352g.containsKey(fragment.mWho)) {
            if (!f2340b) {
                return;
            }
            Log.v("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f2358m + "since it is not added to " + this);
            return;
        }
        int i = this.f2358m;
        int i2 = i;
        if (fragment.mRemoving) {
            i2 = fragment.isInBackStack() ? Math.min(i, 1) : Math.min(i, 0);
        }
        m5576a(fragment, i2, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
        if (fragment.mView != null) {
            Fragment m5487v = m5487v(fragment);
            if (m5487v != null) {
                View view = m5487v.mView;
                ViewGroup viewGroup = fragment.mContainer;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.mView, indexOfChild);
                }
            }
            if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                if (fragment.mPostponedAlpha > FlexItem.FLEX_GROW_DEFAULT) {
                    fragment.mView.setAlpha(fragment.mPostponedAlpha);
                }
                fragment.mPostponedAlpha = FlexItem.FLEX_GROW_DEFAULT;
                fragment.mIsNewlyAdded = false;
                C0728a m5575a = m5575a(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                if (m5575a != null) {
                    if (m5575a.f2387a != null) {
                        fragment.mView.startAnimation(m5575a.f2387a);
                    } else {
                        m5575a.f2388b.setTarget(fragment.mView);
                        m5575a.f2388b.start();
                    }
                }
            }
        }
        if (!fragment.mHiddenChanged) {
            return;
        }
        m5511j(fragment);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    public boolean m5510k() {
        m5533c(true);
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (!m5534c(this.f2368w, this.f2369x)) {
                m5598C();
                m5508l();
                m5593H();
                return z2;
            }
            this.f2349d = true;
            try {
                m5542b(this.f2368w, this.f2369x);
                m5596E();
                z = true;
            } catch (Throwable th) {
                m5596E();
                throw th;
            }
        }
    }

    /* renamed from: l */
    void m5508l() {
        if (this.f2367v) {
            this.f2367v = false;
            m5517h();
        }
    }

    /* renamed from: l */
    public void m5507l(Fragment fragment) {
        if (this.f2352g.get(fragment.mWho) != null) {
            return;
        }
        this.f2352g.put(fragment.mWho, fragment);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                m5525e(fragment);
            } else {
                m5522f(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (!f2340b) {
            return;
        }
        Log.v("FragmentManager", "Added fragment to active set " + fragment);
    }

    /* renamed from: m */
    void m5506m() {
        if (this.f2357l != null) {
            for (int i = 0; i < this.f2357l.size(); i++) {
                this.f2357l.get(i).m5601a();
            }
        }
    }

    /* renamed from: m */
    void m5505m(Fragment fragment) {
        if (this.f2352g.get(fragment.mWho) == null) {
            return;
        }
        if (f2340b) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
        for (Fragment fragment2 : this.f2352g.values()) {
            if (fragment2 != null && fragment.mWho.equals(fragment2.mTargetWho)) {
                fragment2.mTarget = fragment;
                fragment2.mTargetWho = null;
            }
        }
        this.f2352g.put(fragment.mWho, null);
        m5522f(fragment);
        if (fragment.mTargetWho != null) {
            fragment.mTarget = this.f2352g.get(fragment.mTargetWho);
        }
        fragment.initState();
    }

    /* renamed from: n */
    public Parcelable m5504n() {
        ArrayList<String> arrayList;
        m5595F();
        m5594G();
        m5510k();
        this.f2364s = true;
        if (this.f2352g.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.f2352g.size());
        boolean z = false;
        for (Fragment fragment : this.f2352g.values()) {
            if (fragment != null) {
                if (fragment.mFragmentManager != this) {
                    m5564a(new IllegalStateException("Failure saving state: active " + fragment + " was removed from the FragmentManager"));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                arrayList2.add(fragmentState);
                if (fragment.mState <= 0 || fragmentState.f2312m != null) {
                    fragmentState.f2312m = fragment.mSavedFragmentState;
                } else {
                    fragmentState.f2312m = m5491t(fragment);
                    if (fragment.mTargetWho != null) {
                        Fragment fragment2 = this.f2352g.get(fragment.mTargetWho);
                        if (fragment2 == null) {
                            m5564a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTargetWho));
                        }
                        if (fragmentState.f2312m == null) {
                            fragmentState.f2312m = new Bundle();
                        }
                        mo5583a(fragmentState.f2312m, "android:target_state", fragment2);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.f2312m.putInt("android:target_req_state", fragment.mTargetRequestCode);
                        }
                    }
                }
                if (f2340b) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.f2312m);
                }
                z = true;
            }
        }
        if (!z) {
            if (!f2340b) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        int size = this.f2351f.size();
        if (size > 0) {
            ArrayList<String> arrayList3 = new ArrayList<>(size);
            Iterator<Fragment> it = this.f2351f.iterator();
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                Fragment next = it.next();
                arrayList3.add(next.mWho);
                if (next.mFragmentManager != this) {
                    m5564a(new IllegalStateException("Failure saving state: active " + next + " was removed from the FragmentManager"));
                }
                if (f2340b) {
                    Log.v("FragmentManager", "saveAllState: adding fragment (" + next.mWho + "): " + next);
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<C0708a> arrayList4 = this.f2353h;
        BackStackState[] backStackStateArr = null;
        if (arrayList4 != null) {
            int size2 = arrayList4.size();
            backStackStateArr = null;
            if (size2 > 0) {
                BackStackState[] backStackStateArr2 = new BackStackState[size2];
                int i = 0;
                while (true) {
                    backStackStateArr = backStackStateArr2;
                    if (i >= size2) {
                        break;
                    }
                    backStackStateArr2[i] = new BackStackState(this.f2353h.get(i));
                    if (f2340b) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f2353h.get(i));
                    }
                    i++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f2295a = arrayList2;
        fragmentManagerState.f2296b = arrayList;
        fragmentManagerState.f2297c = backStackStateArr;
        Fragment fragment3 = this.f2362q;
        if (fragment3 != null) {
            fragmentManagerState.f2298d = fragment3.mWho;
        }
        fragmentManagerState.f2299e = this.f2350e;
        return fragmentManagerState;
    }

    /* renamed from: n */
    public void m5503n(Fragment fragment) {
        if (f2340b) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            synchronized (this.f2351f) {
                this.f2351f.remove(fragment);
            }
            if (m5483x(fragment)) {
                this.f2363r = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    /* renamed from: o */
    public void m5502o() {
        this.f2364s = false;
        this.f2365t = false;
        int size = this.f2351f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* renamed from: o */
    public void m5501o(Fragment fragment) {
        if (f2340b) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0731d.f2396a);
        int i = 0;
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C0715f.m5636a(context.getClassLoader(), str2)) {
            return null;
        }
        if (view != null) {
            i = view.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment fragment = null;
        if (resourceId != -1) {
            fragment = m5554b(resourceId);
        }
        Fragment fragment2 = fragment;
        if (fragment == null) {
            fragment2 = fragment;
            if (string != null) {
                fragment2 = mo5563a(string);
            }
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (i != -1) {
                fragment3 = m5554b(i);
            }
        }
        if (f2340b) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment3);
        }
        if (fragment3 == null) {
            fragment3 = mo5532d().mo5479c(context.getClassLoader(), str2);
            fragment3.mFromLayout = true;
            fragment3.mFragmentId = resourceId != 0 ? resourceId : i;
            fragment3.mContainerId = i;
            fragment3.mTag = string;
            fragment3.mInLayout = true;
            fragment3.mFragmentManager = this;
            AbstractC0716g abstractC0716g = this.f2359n;
            fragment3.mHost = abstractC0716g;
            fragment3.onInflate(abstractC0716g.m5618j(), attributeSet, fragment3.mSavedFragmentState);
            m5569a(fragment3, true);
        } else if (fragment3.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str2);
        } else {
            fragment3.mInLayout = true;
            AbstractC0716g abstractC0716g2 = this.f2359n;
            fragment3.mHost = abstractC0716g2;
            fragment3.onInflate(abstractC0716g2.m5618j(), attributeSet, fragment3.mSavedFragmentState);
        }
        if (this.f2358m >= 1 || !fragment3.mFromLayout) {
            m5516h(fragment3);
        } else {
            m5576a(fragment3, 1, 0, 0, false);
        }
        if (fragment3.mView != null) {
            if (resourceId != 0) {
                fragment3.mView.setId(resourceId);
            }
            if (fragment3.mView.getTag() == null) {
                fragment3.mView.setTag(string);
            }
            return fragment3.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: p */
    public void m5500p() {
        this.f2364s = false;
        this.f2365t = false;
        m5526e(1);
    }

    /* renamed from: p */
    public void m5499p(Fragment fragment) {
        if (f2340b) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* renamed from: q */
    public void m5498q() {
        this.f2364s = false;
        this.f2365t = false;
        m5526e(2);
    }

    /* renamed from: q */
    public void m5497q(Fragment fragment) {
        if (f2340b) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (!fragment.mAdded) {
                return;
            }
            if (f2340b) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            synchronized (this.f2351f) {
                this.f2351f.remove(fragment);
            }
            if (m5483x(fragment)) {
                this.f2363r = true;
            }
            fragment.mAdded = false;
        }
    }

    /* renamed from: r */
    public void m5496r() {
        this.f2364s = false;
        this.f2365t = false;
        m5526e(3);
    }

    /* renamed from: r */
    public void m5495r(Fragment fragment) {
        if (f2340b) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.f2351f.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            if (f2340b) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            synchronized (this.f2351f) {
                this.f2351f.add(fragment);
            }
            fragment.mAdded = true;
            if (!m5483x(fragment)) {
                return;
            }
            this.f2363r = true;
        }
    }

    /* renamed from: s */
    public void m5494s() {
        this.f2364s = false;
        this.f2365t = false;
        m5526e(4);
    }

    /* renamed from: s */
    void m5493s(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.f2341A;
        if (sparseArray == null) {
            this.f2341A = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.f2341A);
        if (this.f2341A.size() <= 0) {
            return;
        }
        fragment.mSavedViewState = this.f2341A;
        this.f2341A = null;
    }

    /* renamed from: t */
    Bundle m5491t(Fragment fragment) {
        Bundle bundle;
        if (this.f2371z == null) {
            this.f2371z = new Bundle();
        }
        fragment.performSaveInstanceState(this.f2371z);
        m5529d(fragment, this.f2371z, false);
        if (!this.f2371z.isEmpty()) {
            bundle = this.f2371z;
            this.f2371z = null;
        } else {
            bundle = null;
        }
        if (fragment.mView != null) {
            m5493s(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.mSavedViewState != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        Bundle bundle3 = bundle2;
        if (!fragment.mUserVisibleHint) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle3;
    }

    /* renamed from: t */
    public void m5492t() {
        m5526e(3);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f2361p;
        if (fragment != null) {
            C0495a.m6470a(fragment, sb);
        } else {
            C0495a.m6470a(this.f2359n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m5490u() {
        this.f2365t = true;
        m5526e(2);
    }

    /* renamed from: u */
    public void m5489u(Fragment fragment) {
        if (fragment == null || (this.f2352g.get(fragment.mWho) == fragment && (fragment.mHost == null || fragment.getFragmentManager() == this))) {
            Fragment fragment2 = this.f2362q;
            this.f2362q = fragment;
            m5485w(fragment2);
            m5485w(this.f2362q);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: v */
    public void m5488v() {
        m5526e(1);
    }

    /* renamed from: w */
    public void m5486w() {
        this.f2366u = true;
        m5510k();
        m5526e(0);
        this.f2359n = null;
        this.f2360o = null;
        this.f2361p = null;
        if (this.f2344F != null) {
            this.f2345G.m7988b();
            this.f2344F = null;
        }
    }

    /* renamed from: x */
    public void m5484x() {
        for (int i = 0; i < this.f2351f.size(); i++) {
            Fragment fragment = this.f2351f.get(i);
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: y */
    public void m5482y() {
        m5598C();
        m5485w(this.f2362q);
    }

    /* renamed from: z */
    public Fragment m5481z() {
        return this.f2362q;
    }
}
