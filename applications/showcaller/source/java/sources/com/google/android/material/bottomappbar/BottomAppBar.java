package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0615a;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.C8209q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.p097m.AbstractC1907k;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AbstractC0529b {

    /* renamed from: S */
    private static final int f36151S = C1895k.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: T */
    private final int f36152T;

    /* renamed from: U */
    private final C1938h f36153U;

    /* renamed from: V */
    private Animator f36154V;

    /* renamed from: W */
    private Animator f36155W;

    /* renamed from: a0 */
    private int f36156a0;

    /* renamed from: b0 */
    private int f36157b0;

    /* renamed from: c0 */
    private boolean f36158c0;

    /* renamed from: d0 */
    private final boolean f36159d0;

    /* renamed from: e0 */
    private final boolean f36160e0;

    /* renamed from: f0 */
    private final boolean f36161f0;

    /* renamed from: g0 */
    private int f36162g0;

    /* renamed from: h0 */
    private ArrayList<AbstractC8022j> f36163h0;

    /* renamed from: i0 */
    private int f36164i0;

    /* renamed from: j0 */
    private boolean f36165j0;

    /* renamed from: k0 */
    private boolean f36166k0;

    /* renamed from: l0 */
    private Behavior f36167l0;

    /* renamed from: m0 */
    private int f36168m0;

    /* renamed from: n0 */
    private int f36169n0;

    /* renamed from: o0 */
    private int f36170o0;

    /* renamed from: p0 */
    AnimatorListenerAdapter f36171p0;

    /* renamed from: q0 */
    AbstractC1907k<FloatingActionButton> f36172q0;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: f */
        private WeakReference<BottomAppBar> f36174f;

        /* renamed from: g */
        private int f36175g;

        /* renamed from: h */
        private final View.OnLayoutChangeListener f36176h = new View$OnLayoutChangeListenerC8010a();

        /* renamed from: e */
        private final Rect f36173e = new Rect();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior$a.class */
        public class View$OnLayoutChangeListenerC8010a implements View.OnLayoutChangeListener {
            View$OnLayoutChangeListenerC8010a() {
                Behavior.this = r4;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f36174f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.m4782j(Behavior.this.f36173e);
                int height = Behavior.this.f36173e.height();
                bottomAppBar.m5573I0(height);
                CoordinatorLayout.C0532e c0532e = (CoordinatorLayout.C0532e) view.getLayoutParams();
                if (Behavior.this.f36175g != 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C1888d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                ((ViewGroup.MarginLayoutParams) c0532e).leftMargin = bottomAppBar.getLeftInset();
                ((ViewGroup.MarginLayoutParams) c0532e).rightMargin = bottomAppBar.getRightInset();
                if (C8209q.m4445h(floatingActionButton)) {
                    ((ViewGroup.MarginLayoutParams) c0532e).leftMargin += bottomAppBar.f36152T;
                } else {
                    ((ViewGroup.MarginLayoutParams) c0532e).rightMargin += bottomAppBar.f36152T;
                }
            }
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: M */
        public boolean mo3828l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.f36174f = new WeakReference<>(bottomAppBar);
            View m5529z0 = bottomAppBar.m5529z0();
            if (m5529z0 != null && !C1679w.m29313V(m5529z0)) {
                CoordinatorLayout.C0532e c0532e = (CoordinatorLayout.C0532e) m5529z0.getLayoutParams();
                c0532e.f2765d = 49;
                this.f36175g = ((ViewGroup.MarginLayoutParams) c0532e).bottomMargin;
                if (m5529z0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) m5529z0;
                    floatingActionButton.addOnLayoutChangeListener(this.f36176h);
                    bottomAppBar.m5537r0(floatingActionButton);
                }
                bottomAppBar.m5574H0();
            }
            coordinatorLayout.m33586M(bottomAppBar, i);
            return super.mo3828l(coordinatorLayout, bottomAppBar, i);
        }

        /* renamed from: N */
        public boolean mo5462A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.mo5462A(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8011a();

        /* renamed from: f */
        int f36178f;

        /* renamed from: g */
        boolean f36179g;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState$a.class */
        static final class C8011a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8011a() {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f36178f = parcel.readInt();
            this.f36179g = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f36178f);
            parcel.writeInt(this.f36179g ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$a.class */
    public class C8012a extends AnimatorListenerAdapter {
        C8012a() {
            BottomAppBar.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!BottomAppBar.this.f36165j0) {
                BottomAppBar bottomAppBar = BottomAppBar.this;
                bottomAppBar.m5578D0(bottomAppBar.f36156a0, BottomAppBar.this.f36166k0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$b.class */
    public class C8013b implements AbstractC1907k<FloatingActionButton> {
        C8013b() {
            BottomAppBar.this = r4;
        }

        /* renamed from: c */
        public void mo5520a(FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f36153U.m28623b0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        /* renamed from: d */
        public void mo5519b(FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().m5509i() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().m5504o(translationX);
                BottomAppBar.this.f36153U.invalidateSelf();
            }
            float f = 0.0f;
            float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().m5513c() != max) {
                BottomAppBar.this.getTopEdgeTreatment().m5508j(max);
                BottomAppBar.this.f36153U.invalidateSelf();
            }
            C1938h c1938h = BottomAppBar.this.f36153U;
            if (floatingActionButton.getVisibility() == 0) {
                f = floatingActionButton.getScaleY();
            }
            c1938h.m28623b0(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$c.class */
    public class C8014c implements C8209q.AbstractC8214e {
        C8014c() {
            BottomAppBar.this = r4;
        }

        @Override // com.google.android.material.internal.C8209q.AbstractC8214e
        /* renamed from: a */
        public C1615e0 mo4440a(View view, C1615e0 c1615e0, C8209q.C8215f c8215f) {
            boolean z;
            if (BottomAppBar.this.f36159d0) {
                BottomAppBar.this.f36168m0 = c1615e0.m29591i();
            }
            if (BottomAppBar.this.f36160e0) {
                boolean z2 = BottomAppBar.this.f36170o0 != c1615e0.m29590j();
                BottomAppBar.this.f36170o0 = c1615e0.m29590j();
                z = z2;
            } else {
                z = false;
            }
            boolean z3 = false;
            if (BottomAppBar.this.f36161f0) {
                z3 = BottomAppBar.this.f36169n0 != c1615e0.m29589k();
                BottomAppBar.this.f36169n0 = c1615e0.m29589k();
            }
            if (z || z3) {
                BottomAppBar.this.m5536s0();
                BottomAppBar.this.m5574H0();
                BottomAppBar.this.m5575G0();
            }
            return c1615e0;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$d.class */
    public class C8015d extends AnimatorListenerAdapter {
        C8015d() {
            BottomAppBar.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m5532w0();
            BottomAppBar.this.f36154V = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m5531x0();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$e.class */
    public class C8016e extends FloatingActionButton.AbstractC8140b {

        /* renamed from: a */
        final /* synthetic */ int f36184a;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$e$a.class */
        class C8017a extends FloatingActionButton.AbstractC8140b {
            C8017a() {
                C8016e.this = r4;
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC8140b
            /* renamed from: b */
            public void mo4760b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.m5532w0();
            }
        }

        C8016e(int i) {
            BottomAppBar.this = r4;
            this.f36184a = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC8140b
        /* renamed from: a */
        public void mo4761a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.m5580B0(this.f36184a));
            floatingActionButton.m4773s(new C8017a());
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$f.class */
    public class C8018f extends AnimatorListenerAdapter {
        C8018f() {
            BottomAppBar.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m5532w0();
            BottomAppBar.this.f36165j0 = false;
            BottomAppBar.this.f36155W = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m5531x0();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$g.class */
    public class C8019g extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f36188a;

        /* renamed from: b */
        final /* synthetic */ ActionMenuView f36189b;

        /* renamed from: c */
        final /* synthetic */ int f36190c;

        /* renamed from: d */
        final /* synthetic */ boolean f36191d;

        C8019g(ActionMenuView actionMenuView, int i, boolean z) {
            BottomAppBar.this = r4;
            this.f36189b = actionMenuView;
            this.f36190c = i;
            this.f36191d = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f36188a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f36188a) {
                boolean z = BottomAppBar.this.f36164i0 != 0;
                BottomAppBar bottomAppBar = BottomAppBar.this;
                bottomAppBar.m5576F0(bottomAppBar.f36164i0);
                BottomAppBar.this.m5570K0(this.f36189b, this.f36190c, this.f36191d, z);
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$h.class */
    public class RunnableC8020h implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ActionMenuView f36193d;

        /* renamed from: e */
        final /* synthetic */ int f36194e;

        /* renamed from: f */
        final /* synthetic */ boolean f36195f;

        RunnableC8020h(ActionMenuView actionMenuView, int i, boolean z) {
            BottomAppBar.this = r4;
            this.f36193d = actionMenuView;
            this.f36194e = i;
            this.f36195f = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuView actionMenuView = this.f36193d;
            actionMenuView.setTranslationX(BottomAppBar.this.m5581A0(actionMenuView, this.f36194e, this.f36195f));
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$i.class */
    public class C8021i extends AnimatorListenerAdapter {
        C8021i() {
            BottomAppBar.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f36171p0.onAnimationStart(animator);
            FloatingActionButton m5530y0 = BottomAppBar.this.m5530y0();
            if (m5530y0 != null) {
                m5530y0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$j.class */
    public interface AbstractC8022j {
        /* renamed from: a */
        void m5516a(BottomAppBar bottomAppBar);

        /* renamed from: b */
        void m5515b(BottomAppBar bottomAppBar);
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.bottomAppBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomAppBar(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: B0 */
    public float m5580B0(int i) {
        boolean m4445h = C8209q.m4445h(this);
        int i2 = 1;
        if (i == 1) {
            int i3 = m4445h ? this.f36170o0 : this.f36169n0;
            int i4 = this.f36152T;
            int measuredWidth = getMeasuredWidth() / 2;
            if (m4445h) {
                i2 = -1;
            }
            return (measuredWidth - (i4 + i3)) * i2;
        }
        return 0.0f;
    }

    /* renamed from: C0 */
    private boolean m5579C0() {
        FloatingActionButton m5530y0 = m5530y0();
        return m5530y0 != null && m5530y0.m4777o();
    }

    /* renamed from: D0 */
    public void m5578D0(int i, boolean z) {
        if (!C1679w.m29313V(this)) {
            this.f36165j0 = false;
            m5576F0(this.f36164i0);
            return;
        }
        Animator animator = this.f36155W;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!m5579C0()) {
            i = 0;
            z = false;
        }
        m5533v0(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f36155W = animatorSet;
        animatorSet.addListener(new C8018f());
        this.f36155W.start();
    }

    /* renamed from: E0 */
    private void m5577E0(int i) {
        if (this.f36156a0 == i || !C1679w.m29313V(this)) {
            return;
        }
        Animator animator = this.f36154V;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f36157b0 == 1) {
            m5534u0(i, arrayList);
        } else {
            m5535t0(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f36154V = animatorSet;
        animatorSet.addListener(new C8015d());
        this.f36154V.start();
    }

    /* renamed from: G0 */
    public void m5575G0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f36155W != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (!m5579C0()) {
            m5572J0(actionMenuView, 0, false);
        } else {
            m5572J0(actionMenuView, this.f36156a0, this.f36166k0);
        }
    }

    /* renamed from: H0 */
    public void m5574H0() {
        getTopEdgeTreatment().m5504o(getFabTranslationX());
        View m5529z0 = m5529z0();
        this.f36153U.m28623b0((!this.f36166k0 || !m5579C0()) ? 0.0f : 1.0f);
        if (m5529z0 != null) {
            m5529z0.setTranslationY(getFabTranslationY());
            m5529z0.setTranslationX(getFabTranslationX());
        }
    }

    /* renamed from: J0 */
    private void m5572J0(ActionMenuView actionMenuView, int i, boolean z) {
        m5570K0(actionMenuView, i, z, false);
    }

    /* renamed from: K0 */
    public void m5570K0(ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        RunnableC8020h runnableC8020h = new RunnableC8020h(actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(runnableC8020h);
        } else {
            runnableC8020h.run();
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    public int getBottomInset() {
        return this.f36168m0;
    }

    public float getFabTranslationX() {
        return m5580B0(this.f36156a0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().m5513c();
    }

    public int getLeftInset() {
        return this.f36170o0;
    }

    public int getRightInset() {
        return this.f36169n0;
    }

    public C8023a getTopEdgeTreatment() {
        return (C8023a) this.f36153U.m28648D().m28560p();
    }

    /* renamed from: r0 */
    public void m5537r0(FloatingActionButton floatingActionButton) {
        floatingActionButton.m4787e(this.f36171p0);
        floatingActionButton.m4786f(new C8021i());
        floatingActionButton.m4785g(this.f36172q0);
    }

    /* renamed from: s0 */
    public void m5536s0() {
        Animator animator = this.f36155W;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f36154V;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* renamed from: u0 */
    private void m5534u0(int i, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m5530y0(), "translationX", m5580B0(i));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    /* renamed from: v0 */
    private void m5533v0(int i, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - m5581A0(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() >= 1.0f) {
                return;
            }
            list.add(ofFloat);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
        ofFloat2.addListener(new C8019g(actionMenuView, i, z));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(150L);
        animatorSet.playSequentially(ofFloat2, ofFloat);
        list.add(animatorSet);
    }

    /* renamed from: w0 */
    public void m5532w0() {
        ArrayList<AbstractC8022j> arrayList;
        int i = this.f36162g0 - 1;
        this.f36162g0 = i;
        if (i != 0 || (arrayList = this.f36163h0) == null) {
            return;
        }
        Iterator<AbstractC8022j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().m5515b(this);
        }
    }

    /* renamed from: x0 */
    public void m5531x0() {
        ArrayList<AbstractC8022j> arrayList;
        int i = this.f36162g0;
        this.f36162g0 = i + 1;
        if (i != 0 || (arrayList = this.f36163h0) == null) {
            return;
        }
        Iterator<AbstractC8022j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().m5516a(this);
        }
    }

    /* renamed from: y0 */
    public FloatingActionButton m5530y0() {
        View m5529z0 = m5529z0();
        return m5529z0 instanceof FloatingActionButton ? (FloatingActionButton) m5529z0 : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m5529z0() {
        /*
            r3 = this;
            r0 = r3
            android.view.ViewParent r0 = r0.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            if (r0 != 0) goto Lc
            r0 = 0
            return r0
        Lc:
            r0 = r3
            android.view.ViewParent r0 = r0.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            r1 = r3
            java.util.List r0 = r0.m33558w(r1)
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L1d:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L40
            r0 = r4
            java.lang.Object r0 = r0.next()
            android.view.View r0 = (android.view.View) r0
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r0 != 0) goto L3e
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
            if (r0 == 0) goto L1d
        L3e:
            r0 = r5
            return r0
        L40:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.m5529z0():android.view.View");
    }

    /* renamed from: A0 */
    protected int m5581A0(ActionMenuView actionMenuView, int i, boolean z) {
        int i2;
        if (i != 1 || !z) {
            return 0;
        }
        boolean m4445h = C8209q.m4445h(this);
        int measuredWidth = m4445h ? getMeasuredWidth() : 0;
        int i3 = 0;
        while (true) {
            i2 = measuredWidth;
            if (i3 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i3);
            measuredWidth = i2;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f208a & 8388615) == 8388611) {
                measuredWidth = m4445h ? Math.min(i2, childAt.getLeft()) : Math.max(i2, childAt.getRight());
            }
            i3++;
        }
        return i2 - ((m4445h ? actionMenuView.getRight() : actionMenuView.getLeft()) + (m4445h ? this.f36169n0 : -this.f36170o0));
    }

    /* renamed from: F0 */
    public void m5576F0(int i) {
        if (i != 0) {
            this.f36164i0 = 0;
            getMenu().clear();
            m35005x(i);
        }
    }

    /* renamed from: I0 */
    boolean m5573I0(int i) {
        float f = i;
        if (f != getTopEdgeTreatment().m5510h()) {
            getTopEdgeTreatment().m5505n(f);
            this.f36153U.invalidateSelf();
            return true;
        }
        return false;
    }

    public ColorStateList getBackgroundTint() {
        return this.f36153U.m28644H();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0529b
    public Behavior getBehavior() {
        if (this.f36167l0 == null) {
            this.f36167l0 = new Behavior();
        }
        return this.f36167l0;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m5513c();
    }

    public int getFabAlignmentMode() {
        return this.f36156a0;
    }

    public int getFabAnimationMode() {
        return this.f36157b0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m5512d();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m5511g();
    }

    public boolean getHideOnScroll() {
        return this.f36158c0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28579f(this, this.f36153U);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m5536s0();
            m5574H0();
        }
        m5575G0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        this.f36156a0 = savedState.f36178f;
        this.f36166k0 = savedState.f36179g;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f36178f = this.f36156a0;
        savedState.f36179g = this.f36166k0;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        C0615a.m33215o(this.f36153U, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m5508j(f);
            this.f36153U.invalidateSelf();
            m5574H0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f36153U.m28626Z(f);
        getBehavior().m5597G(this, this.f36153U.m28649C() - this.f36153U.m28650B());
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i, int i2) {
        this.f36164i0 = i2;
        this.f36165j0 = true;
        m5578D0(i, this.f36166k0);
        m5577E0(i);
        this.f36156a0 = i;
    }

    public void setFabAnimationMode(int i) {
        this.f36157b0 = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m5507l(f);
            this.f36153U.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m5506m(f);
            this.f36153U.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f36158c0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    /* renamed from: t0 */
    protected void m5535t0(int i, List<Animator> list) {
        FloatingActionButton m5530y0 = m5530y0();
        if (m5530y0 == null || m5530y0.m4778n()) {
            return;
        }
        m5531x0();
        m5530y0.m4780l(new C8016e(i));
    }
}
