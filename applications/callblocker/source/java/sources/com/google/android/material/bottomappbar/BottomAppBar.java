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
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0595u;
import androidx.p029d.p030a.AbstractC0633a;
import com.google.android.material.C4492a;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.p142a.AbstractC4515k;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AbstractC0422a {

    /* renamed from: g */
    private static final int f19701g = C4492a.C4503k.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: e */
    AnimatorListenerAdapter f19702e;

    /* renamed from: f */
    AbstractC4515k<FloatingActionButton> f19703f;

    /* renamed from: h */
    private final int f19704h;

    /* renamed from: i */
    private final C4736g f19705i;

    /* renamed from: j */
    private Animator f19706j;

    /* renamed from: k */
    private Animator f19707k;

    /* renamed from: l */
    private int f19708l;

    /* renamed from: m */
    private int f19709m;

    /* renamed from: n */
    private boolean f19710n;

    /* renamed from: o */
    private int f19711o;

    /* renamed from: p */
    private ArrayList<AbstractC4544a> f19712p;

    /* renamed from: q */
    private boolean f19713q;

    /* renamed from: r */
    private Behavior f19714r;

    /* renamed from: s */
    private int f19715s;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: b */
        private WeakReference<BottomAppBar> f19728b;

        /* renamed from: c */
        private int f19729c;

        /* renamed from: d */
        private final View.OnLayoutChangeListener f19730d = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f19728b.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.m3028b(Behavior.this.f19727a);
                int height = Behavior.this.f19727a.height();
                bottomAppBar.m3663b(height);
                CoordinatorLayout.C0426e c0426e = (CoordinatorLayout.C0426e) view.getLayoutParams();
                if (Behavior.this.f19729c != 0) {
                    return;
                }
                int measuredHeight = (floatingActionButton.getMeasuredHeight() - height) / 2;
                c0426e.bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C4492a.C4496d.mtrl_bottomappbar_fab_bottom_margin) - measuredHeight);
            }
        };

        /* renamed from: a */
        private final Rect f19727a = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        public boolean mo2219a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.f19728b = new WeakReference<>(bottomAppBar);
            View m3649p = bottomAppBar.m3649p();
            if (m3649p != null && !C0595u.m20299y(m3649p)) {
                CoordinatorLayout.C0426e c0426e = (CoordinatorLayout.C0426e) m3649p.getLayoutParams();
                c0426e.f1705d = 49;
                this.f19729c = c0426e.bottomMargin;
                if (m3649p instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) m3649p;
                    floatingActionButton.addOnLayoutChangeListener(this.f19730d);
                    bottomAppBar.m3664a(floatingActionButton);
                }
                bottomAppBar.m3646s();
            }
            coordinatorLayout.m20971b(bottomAppBar, i);
            return super.mo2219a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        /* renamed from: a */
        public boolean mo3558a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.mo3558a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view, view2, i, i2);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$a.class */
    public interface AbstractC4544a {
        /* renamed from: a */
        void m3639a(BottomAppBar bottomAppBar);

        /* renamed from: b */
        void m3638b(BottomAppBar bottomAppBar);
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$b.class */
    public static class C4545b extends AbstractC0633a {
        public static final Parcelable.Creator<C4545b> CREATOR = new Parcelable.ClassLoaderCreator<C4545b>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.b.1
            /* renamed from: a */
            public C4545b createFromParcel(Parcel parcel) {
                return new C4545b(parcel, null);
            }

            /* renamed from: a */
            public C4545b createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C4545b(parcel, classLoader);
            }

            /* renamed from: a */
            public C4545b[] newArray(int i) {
                return new C4545b[i];
            }
        };

        /* renamed from: a */
        int f19732a;

        /* renamed from: b */
        boolean f19733b;

        public C4545b(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f19732a = parcel.readInt();
            this.f19733b = parcel.readInt() != 0;
        }

        public C4545b(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f19732a);
            parcel.writeInt(this.f19733b ? 1 : 0);
        }
    }

    /* renamed from: a */
    private void m3672a(int i, boolean z) {
        if (!C0595u.m20299y(this)) {
            return;
        }
        if (this.f19707k != null) {
            this.f19707k.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!m3648q()) {
            z = false;
            i = 0;
        }
        m3671a(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f19707k = animatorSet;
        this.f19707k.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BottomAppBar.this.m3651n();
                BottomAppBar.this.f19707k = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.m3652m();
            }
        });
        this.f19707k.start();
    }

    /* renamed from: a */
    private void m3671a(final int i, final boolean z, List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - m3670a(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() >= 1.0f) {
                return;
            }
            list.add(ofFloat);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4

            /* renamed from: a */
            public boolean f19721a;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.f19721a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.f19721a) {
                    BottomAppBar.this.m3661b(actionMenuView, i, z);
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(150L);
        animatorSet.playSequentially(ofFloat2, ofFloat);
        list.add(animatorSet);
    }

    /* renamed from: a */
    public void m3664a(FloatingActionButton floatingActionButton) {
        floatingActionButton.m3029b(this.f19702e);
        floatingActionButton.m3037a(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.f19702e.onAnimationStart(animator);
                FloatingActionButton m3650o = BottomAppBar.this.m3650o();
                if (m3650o != null) {
                    m3650o.setTranslationX(BottomAppBar.this.getFabTranslationX());
                }
            }
        });
        floatingActionButton.m3035a(this.f19703f);
    }

    /* renamed from: b */
    private void m3662b(int i, List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m3650o(), "translationX", m3657d(i));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    /* renamed from: b */
    public void m3661b(ActionMenuView actionMenuView, int i, boolean z) {
        actionMenuView.setTranslationX(m3670a(actionMenuView, i, z));
    }

    /* renamed from: c */
    private void m3659c(int i) {
        if (this.f19708l == i || !C0595u.m20299y(this)) {
            return;
        }
        if (this.f19706j != null) {
            this.f19706j.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f19709m == 1) {
            m3662b(i, arrayList);
        } else {
            m3673a(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f19706j = animatorSet;
        this.f19706j.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BottomAppBar.this.m3651n();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.m3652m();
            }
        });
        this.f19706j.start();
    }

    /* renamed from: d */
    public float m3657d(int i) {
        float f;
        boolean z = C0595u.m20320g(this) == 1;
        if (i == 1) {
            int measuredWidth = getMeasuredWidth() / 2;
            int i2 = this.f19704h;
            int i3 = 1;
            if (z) {
                i3 = -1;
            }
            f = i3 * (measuredWidth - i2);
        } else {
            f = 0.0f;
        }
        return f;
    }

    private ActionMenuView getActionMenuView() {
        ActionMenuView actionMenuView;
        int i = 0;
        while (true) {
            if (i >= getChildCount()) {
                actionMenuView = null;
                break;
            }
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                actionMenuView = (ActionMenuView) childAt;
                break;
            }
            i++;
        }
        return actionMenuView;
    }

    public int getBottomInset() {
        return this.f19715s;
    }

    public float getFabTranslationX() {
        return m3657d(this.f19708l);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().m3632b();
    }

    private C4547a getTopEdgeTreatment() {
        return (C4547a) this.f19705i.m2743L().m2658k();
    }

    /* renamed from: m */
    public void m3652m() {
        int i = this.f19711o;
        this.f19711o = i + 1;
        if (i != 0 || this.f19712p == null) {
            return;
        }
        Iterator<AbstractC4544a> it = this.f19712p.iterator();
        while (it.hasNext()) {
            it.next().m3639a(this);
        }
    }

    /* renamed from: n */
    public void m3651n() {
        int i = this.f19711o - 1;
        this.f19711o = i;
        if (i != 0 || this.f19712p == null) {
            return;
        }
        Iterator<AbstractC4544a> it = this.f19712p.iterator();
        while (it.hasNext()) {
            it.next().m3638b(this);
        }
    }

    /* renamed from: o */
    public FloatingActionButton m3650o() {
        View m3649p = m3649p();
        return m3649p instanceof FloatingActionButton ? (FloatingActionButton) m3649p : null;
    }

    /* renamed from: p */
    public View m3649p() {
        View view;
        if (getParent() instanceof CoordinatorLayout) {
            Iterator<View> it = ((CoordinatorLayout) getParent()).m20960d(this).iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                View next = it.next();
                view = next;
                if (!(next instanceof FloatingActionButton)) {
                    if (next instanceof ExtendedFloatingActionButton) {
                        view = next;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            view = null;
        }
        return view;
    }

    /* renamed from: q */
    private boolean m3648q() {
        FloatingActionButton m3650o = m3650o();
        return m3650o != null && m3650o.m3025c();
    }

    /* renamed from: r */
    private void m3647r() {
        if (this.f19707k != null) {
            this.f19707k.cancel();
        }
        if (this.f19706j != null) {
            this.f19706j.cancel();
        }
    }

    /* renamed from: s */
    public void m3646s() {
        getTopEdgeTreatment().m3631b(getFabTranslationX());
        View m3649p = m3649p();
        this.f19705i.m2689p((!this.f19713q || !m3648q()) ? 0.0f : 1.0f);
        if (m3649p != null) {
            m3649p.setTranslationY(getFabTranslationY());
            m3649p.setTranslationX(getFabTranslationX());
        }
    }

    /* renamed from: t */
    private void m3645t() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!m3648q()) {
                m3661b(actionMenuView, 0, false);
            } else {
                m3661b(actionMenuView, this.f19708l, this.f19713q);
            }
        }
    }

    /* renamed from: a */
    protected int m3670a(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = C0595u.m20320g(this) == 1;
        int measuredWidth = z2 ? getMeasuredWidth() : 0;
        int i2 = 0;
        while (i2 < getChildCount()) {
            View childAt = getChildAt(i2);
            int i3 = measuredWidth;
            if ((childAt.getLayoutParams() instanceof Toolbar.C0273b) && (((Toolbar.C0273b) childAt.getLayoutParams()).f327a & 8388615) == 8388611) {
                i3 = z2 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
            i2++;
            measuredWidth = i3;
        }
        int right = z2 ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i4 = 0;
        if (i == 1) {
            i4 = 0;
            if (z) {
                i4 = measuredWidth - right;
            }
        }
        return i4;
    }

    /* renamed from: a */
    protected void m3673a(final int i, List<Animator> list) {
        FloatingActionButton m3650o = m3650o();
        if (m3650o == null || m3650o.m3030b()) {
            return;
        }
        m3652m();
        m3650o.m3027b(new FloatingActionButton.AbstractC4658a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2
            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC4658a
            /* renamed from: a */
            public void mo3011a(FloatingActionButton floatingActionButton) {
                floatingActionButton.setTranslationX(BottomAppBar.this.m3657d(i));
                floatingActionButton.m3034a(new FloatingActionButton.AbstractC4658a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2.1
                    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC4658a
                    /* renamed from: b */
                    public void mo3010b(FloatingActionButton floatingActionButton2) {
                        BottomAppBar.this.m3651n();
                    }
                });
            }
        });
    }

    /* renamed from: b */
    boolean m3663b(int i) {
        boolean z;
        if (i != getTopEdgeTreatment().m3634a()) {
            getTopEdgeTreatment().m3633a(i);
            this.f19705i.invalidateSelf();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public ColorStateList getBackgroundTint() {
        return this.f19705i.m2741N();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0422a
    public Behavior getBehavior() {
        if (this.f19714r == null) {
            this.f19714r = new Behavior();
        }
        return this.f19714r;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m3632b();
    }

    public int getFabAlignmentMode() {
        return this.f19708l;
    }

    public int getFabAnimationMode() {
        return this.f19709m;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m3630c();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m3628d();
    }

    public boolean getHideOnScroll() {
        return this.f19710n;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2682a(this, this.f19705i);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m3647r();
            m3646s();
        }
        m3645t();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4545b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4545b c4545b = (C4545b) parcelable;
        super.onRestoreInstanceState(c4545b.m20121a());
        this.f19708l = c4545b.f19732a;
        this.f19713q = c4545b.f19733b;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        C4545b c4545b = new C4545b(super.onSaveInstanceState());
        c4545b.f19732a = this.f19708l;
        c4545b.f19733b = this.f19713q;
        return c4545b;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        C0535a.m20595a(this.f19705i, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m3629c(f);
            this.f19705i.invalidateSelf();
            m3646s();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f19705i.m2687r(f);
        getBehavior().m3690a((Behavior) this, this.f19705i.m2733V() - this.f19705i.m2731X());
    }

    public void setFabAlignmentMode(int i) {
        m3659c(i);
        m3672a(i, this.f19713q);
        this.f19708l = i;
    }

    public void setFabAnimationMode(int i) {
        this.f19709m = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m3627d(f);
            this.f19705i.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m3626e(f);
            this.f19705i.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f19710n = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
