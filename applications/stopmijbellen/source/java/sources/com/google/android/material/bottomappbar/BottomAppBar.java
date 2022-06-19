package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import p098g0.C2789a;
import p123i3.C3091a;
import p123i3.C3092b;
import p123i3.C3094c;
import p123i3.C3095d;
import p123i3.C3097f;
import p123i3.C3098g;
import p124i4.C3102d;
import p163m0.C3589v;
import p163m0.C3611y;
import p216r0.AbstractC4178a;
import p262v3.C4638t;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AbstractC0320b {

    /* renamed from: f0 */
    public static final /* synthetic */ int f6289f0 = 0;

    /* renamed from: S */
    public Integer f6290S;

    /* renamed from: T */
    public Animator f6291T;

    /* renamed from: U */
    public Animator f6292U;

    /* renamed from: V */
    public int f6293V;

    /* renamed from: W */
    public int f6294W;

    /* renamed from: a0 */
    public boolean f6295a0;

    /* renamed from: b0 */
    public int f6296b0;

    /* renamed from: c0 */
    public int f6297c0;

    /* renamed from: d0 */
    public boolean f6298d0;

    /* renamed from: e0 */
    public Behavior f6299e0;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: f */
        public WeakReference<BottomAppBar> f6301f;

        /* renamed from: g */
        public int f6302g;

        /* renamed from: h */
        public final View.OnLayoutChangeListener f6303h = new View$OnLayoutChangeListenerC1698a();

        /* renamed from: e */
        public final Rect f6300e = new Rect();

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior$a.class */
        public class View$OnLayoutChangeListenerC1698a implements View.OnLayoutChangeListener {
            public View$OnLayoutChangeListenerC1698a() {
                Behavior.this = r4;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = Behavior.this.f6301f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                Rect rect = Behavior.this.f6300e;
                rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                floatingActionButton.m4577l(rect);
                int height = Behavior.this.f6300e.height();
                bottomAppBar.m4756H(height);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().f3062e.mo7306a(new RectF(Behavior.this.f6300e)));
                CoordinatorLayout.C0324f c0324f = (CoordinatorLayout.C0324f) view.getLayoutParams();
                if (Behavior.this.f6302g != 0) {
                    return;
                }
                ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(2131165632) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                ((ViewGroup.MarginLayoutParams) c0324f).leftMargin = bottomAppBar.getLeftInset();
                ((ViewGroup.MarginLayoutParams) c0324f).rightMargin = bottomAppBar.getRightInset();
                if (C4638t.m685a(floatingActionButton)) {
                    ((ViewGroup.MarginLayoutParams) c0324f).leftMargin += 0;
                } else {
                    ((ViewGroup.MarginLayoutParams) c0324f).rightMargin += 0;
                }
            }
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: h */
        public boolean mo2976h(CoordinatorLayout coordinatorLayout, View view, int i) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            this.f6301f = new WeakReference<>(bottomAppBar);
            int i2 = BottomAppBar.f6289f0;
            View m4761C = bottomAppBar.m4761C();
            if (m4761C != null) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (!C3589v.C3596g.m2058c(m4761C)) {
                    CoordinatorLayout.C0324f c0324f = (CoordinatorLayout.C0324f) m4761C.getLayoutParams();
                    c0324f.f1461d = 49;
                    this.f6302g = ((ViewGroup.MarginLayoutParams) c0324f).bottomMargin;
                    if (m4761C instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) m4761C;
                        if (floatingActionButton.getShowMotionSpec() == null) {
                            floatingActionButton.setShowMotionSpecResource(2130837533);
                        }
                        if (floatingActionButton.getHideMotionSpec() == null) {
                            floatingActionButton.setHideMotionSpecResource(2130837532);
                        }
                        floatingActionButton.addOnLayoutChangeListener(this.f6303h);
                        floatingActionButton.m4585d(null);
                        floatingActionButton.m4584e(new C3097f(bottomAppBar));
                        floatingActionButton.m4583f(null);
                    }
                    bottomAppBar.m4757G();
                    throw null;
                }
            }
            coordinatorLayout.m8328s(bottomAppBar, i);
            this.f6271a = bottomAppBar.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) bottomAppBar.getLayoutParams()).bottomMargin;
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
            if ((r8 == 2) != false) goto L11;
         */
        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo4735p(androidx.coordinatorlayout.widget.CoordinatorLayout r4, android.view.View r5, android.view.View r6, android.view.View r7, int r8, int r9) {
            /*
                r3 = this;
                r0 = r5
                com.google.android.material.bottomappbar.BottomAppBar r0 = (com.google.android.material.bottomappbar.BottomAppBar) r0
                boolean r0 = r0.getHideOnScroll()
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r10
                if (r0 == 0) goto L28
                r0 = r8
                r1 = 2
                if (r0 != r1) goto L1d
                r0 = 1
                r8 = r0
                goto L20
            L1d:
                r0 = 0
                r8 = r0
            L20:
                r0 = r8
                if (r0 == 0) goto L28
                goto L2b
            L28:
                r0 = 0
                r11 = r0
            L2b:
                r0 = r11
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.Behavior.mo4735p(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, android.view.View, int, int):boolean");
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$a.class */
    public static class C1699a extends AbstractC4178a {
        public static final Parcelable.Creator<C1699a> CREATOR = new C1700a();

        /* renamed from: c */
        public int f6305c;

        /* renamed from: d */
        public boolean f6306d;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$a$a.class */
        public static final class C1700a implements Parcelable.ClassLoaderCreator<C1699a> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C1699a(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C1699a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1699a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C1699a[i];
            }
        }

        public C1699a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6305c = parcel.readInt();
            this.f6306d = parcel.readInt() != 0;
        }

        public C1699a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f6305c);
            parcel.writeInt(this.f6306d ? 1 : 0);
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
        return 0;
    }

    private float getFabTranslationX() {
        return m4759E(this.f6293V);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().f10485l;
    }

    public int getLeftInset() {
        return 0;
    }

    public int getRightInset() {
        return 0;
    }

    private C3098g getTopEdgeTreatment() {
        throw null;
    }

    /* renamed from: x */
    public static void m4755x(BottomAppBar bottomAppBar) {
        bottomAppBar.f6296b0--;
    }

    /* renamed from: B */
    public final FloatingActionButton m4762B() {
        View m4761C = m4761C();
        return m4761C instanceof FloatingActionButton ? (FloatingActionButton) m4761C : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m4761C() {
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
            java.util.List r0 = r0.m8335f(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.m4761C():android.view.View");
    }

    /* renamed from: D */
    public int m4760D(ActionMenuView actionMenuView, int i, boolean z) {
        int i2;
        if (i != 1 || !z) {
            return 0;
        }
        boolean m685a = C4638t.m685a(this);
        int measuredWidth = m685a ? getMeasuredWidth() : 0;
        int i3 = 0;
        while (true) {
            i2 = measuredWidth;
            if (i3 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i3);
            measuredWidth = i2;
            if ((childAt.getLayoutParams() instanceof Toolbar.C0189e) && (((Toolbar.C0189e) childAt.getLayoutParams()).f9069a & 8388615) == 8388611) {
                measuredWidth = m685a ? Math.min(i2, childAt.getLeft()) : Math.max(i2, childAt.getRight());
            }
            i3++;
        }
        return i2 - ((m685a ? actionMenuView.getRight() : actionMenuView.getLeft()) + 0);
    }

    /* renamed from: E */
    public final float m4759E(int i) {
        boolean m685a = C4638t.m685a(this);
        if (i == 1) {
            int measuredWidth = getMeasuredWidth() / 2;
            int i2 = 1;
            if (m685a) {
                i2 = -1;
            }
            return (measuredWidth + 0) * i2;
        }
        return 0.0f;
    }

    /* renamed from: F */
    public final boolean m4758F() {
        FloatingActionButton m4762B = m4762B();
        return m4762B != null && m4762B.m4578k();
    }

    /* renamed from: G */
    public final void m4757G() {
        getTopEdgeTreatment().f10486m = getFabTranslationX();
        m4761C();
        if (this.f6298d0) {
            m4758F();
        }
        throw null;
    }

    /* renamed from: H */
    public boolean m4756H(int i) {
        float f = i;
        if (f == getTopEdgeTreatment().f10484k) {
            return false;
        }
        getTopEdgeTreatment().f10484k = f;
        throw null;
    }

    public ColorStateList getBackgroundTint() {
        throw null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0320b
    public Behavior getBehavior() {
        if (this.f6299e0 == null) {
            this.f6299e0 = new Behavior();
        }
        return this.f6299e0;
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().f10485l;
    }

    public int getFabAlignmentMode() {
        return this.f6293V;
    }

    public int getFabAnimationMode() {
        return this.f6294W;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f10483j;
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f10482i;
    }

    public boolean getHideOnScroll() {
        return this.f6295a0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C3102d.m2644H(this, null);
        throw null;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            Animator animator = this.f6292U;
            if (animator != null) {
                animator.cancel();
            }
            Animator animator2 = this.f6291T;
            if (animator2 != null) {
                animator2.cancel();
            }
            m4757G();
            throw null;
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f6292U != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (!m4758F()) {
            actionMenuView.setTranslationX(m4760D(actionMenuView, 0, false));
        } else {
            actionMenuView.setTranslationX(m4760D(actionMenuView, this.f6293V, this.f6298d0));
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1699a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1699a c1699a = (C1699a) parcelable;
        super.onRestoreInstanceState(c1699a.f13167a);
        this.f6293V = c1699a.f6305c;
        this.f6298d0 = c1699a.f6306d;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        C1699a c1699a = new C1699a(super.onSaveInstanceState());
        c1699a.f6305c = this.f6293V;
        c1699a.f6306d = this.f6298d0;
        return c1699a;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        throw null;
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            C3098g topEdgeTreatment = getTopEdgeTreatment();
            Objects.requireNonNull(topEdgeTreatment);
            if (f < 0.0f) {
                throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
            }
            topEdgeTreatment.f10485l = f;
            throw null;
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        throw null;
    }

    public void setFabAlignmentMode(int i) {
        int i2;
        this.f6297c0 = 0;
        boolean z = this.f6298d0;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2058c(this)) {
            int i3 = this.f6297c0;
            if (i3 != 0) {
                this.f6297c0 = 0;
                getMenu().clear();
                m8604n(i3);
            }
        } else {
            Animator animator = this.f6292U;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!m4758F()) {
                z = false;
                i2 = 0;
            } else {
                i2 = i;
            }
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
                if (Math.abs(actionMenuView.getTranslationX() - m4760D(actionMenuView, i2, z)) > 1.0f) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                    ofFloat2.addListener(new C3095d(this, actionMenuView, i2, z));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.setDuration(150L);
                    animatorSet.playSequentially(ofFloat2, ofFloat);
                    arrayList.add(animatorSet);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList.add(ofFloat);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            this.f6292U = animatorSet2;
            animatorSet2.addListener(new C3094c(this));
            this.f6292U.start();
        }
        if (this.f6293V != i && C3589v.C3596g.m2058c(this)) {
            Animator animator2 = this.f6291T;
            if (animator2 != null) {
                animator2.cancel();
            }
            ArrayList arrayList2 = new ArrayList();
            if (this.f6294W == 1) {
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(m4762B(), "translationX", m4759E(i));
                ofFloat3.setDuration(300L);
                arrayList2.add(ofFloat3);
            } else {
                FloatingActionButton m4762B = m4762B();
                if (m4762B != null && !m4762B.m4579j()) {
                    this.f6296b0++;
                    m4762B.m4580i(new C3092b(this, i), true);
                }
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(arrayList2);
            this.f6291T = animatorSet3;
            animatorSet3.addListener(new C3091a(this));
            this.f6291T.start();
        }
        this.f6293V = i;
    }

    public void setFabAnimationMode(int i) {
        this.f6294W = i;
    }

    public void setFabCornerSize(float f) {
        if (f == getTopEdgeTreatment().f10487n) {
            return;
        }
        getTopEdgeTreatment().f10487n = f;
        throw null;
    }

    public void setFabCradleMargin(float f) {
        if (f == getFabCradleMargin()) {
            return;
        }
        getTopEdgeTreatment().f10483j = f;
        throw null;
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f == getFabCradleRoundedCornerRadius()) {
            return;
        }
        getTopEdgeTreatment().f10482i = f;
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.f6295a0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f6290S != null) {
                drawable2 = C2789a.m3007h(drawable.mutate());
                drawable2.setTint(this.f6290S.intValue());
            }
        }
        super.setNavigationIcon(drawable2);
    }

    public void setNavigationIconTint(int i) {
        this.f6290S = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
