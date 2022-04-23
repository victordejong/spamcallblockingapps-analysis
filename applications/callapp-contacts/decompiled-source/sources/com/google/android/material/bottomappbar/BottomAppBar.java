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
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.a.k;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.floatingactionbutton.d;
import com.google.android.material.internal.r;
import com.google.android.material.k.h;
import com.google.android.material.k.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.a {
    private static final int r = a.k.Widget_MaterialComponents_BottomAppBar;
    private int A;
    private ArrayList<Object> B;
    private int C;
    private boolean D;
    private boolean E;
    private Behavior F;
    private int G;
    private int H;
    private int I;
    final h n;
    boolean o;
    AnimatorListenerAdapter p;
    k<FloatingActionButton> q;
    private final int s;
    private Animator t;
    private Animator u;
    private int v;
    private int w;
    private final boolean x;
    private final boolean y;
    private final boolean z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        private WeakReference<BottomAppBar> e;
        private int f;
        private final View.OnLayoutChangeListener g = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.e.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                Rect rect = Behavior.this.f30285d;
                rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                floatingActionButton.b(rect);
                int height = Behavior.this.f30285d.height();
                float f = height;
                if (f != bottomAppBar.k().f30289c) {
                    bottomAppBar.k().f30289c = f;
                    bottomAppBar.n.invalidateSelf();
                }
                CoordinatorLayout.d dVar = (CoordinatorLayout.d) view.getLayoutParams();
                if (Behavior.this.f == 0) {
                    dVar.bottomMargin = bottomAppBar.G + (bottomAppBar.getResources().getDimensionPixelOffset(a.d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                    dVar.leftMargin = bottomAppBar.I;
                    dVar.rightMargin = bottomAppBar.H;
                    if (r.a(floatingActionButton)) {
                        dVar.leftMargin += bottomAppBar.s;
                    } else {
                        dVar.rightMargin += bottomAppBar.s;
                    }
                }
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private final Rect f30285d = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.e = new WeakReference<>(bottomAppBar);
            View n = bottomAppBar.n();
            if (n != null && !v.B(n)) {
                CoordinatorLayout.d dVar = (CoordinatorLayout.d) n.getLayoutParams();
                dVar.f1666d = 49;
                this.f = dVar.bottomMargin;
                if (n instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) n;
                    floatingActionButton.addOnLayoutChangeListener(this.g);
                    BottomAppBar.a(bottomAppBar, floatingActionButton);
                }
                bottomAppBar.t();
            }
            coordinatorLayout.b(bottomAppBar, i);
            return super.a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.o && super.a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view2, view3, i, i2);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int fabAlignmentMode;
        boolean fabAttached;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.bottomAppBarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BottomAppBar(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        if (!v.B(this)) {
            this.D = false;
            b(this.C);
            return;
        }
        Animator animator = this.u;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!o()) {
            i = 0;
            z = false;
        }
        a(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.u = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                BottomAppBar.o(BottomAppBar.this);
                BottomAppBar.this.D = false;
                BottomAppBar.this.u = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                BottomAppBar.this.l();
            }
        });
        this.u.start();
    }

    private void a(final int i, final boolean z, List<Animator> list) {
        final ActionMenuView r2 = r();
        if (r2 != null) {
            Animator ofFloat = ObjectAnimator.ofFloat(r2, "alpha", 1.0f);
            if (Math.abs(r2.getTranslationX() - a(r2, i, z)) > 1.0f) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(r2, "alpha", BitmapDescriptorFactory.HUE_RED);
                ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

                    /* renamed from: a  reason: collision with root package name */
                    public boolean f30276a;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        this.f30276a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        if (!this.f30276a) {
                            boolean z2 = BottomAppBar.this.C != 0;
                            BottomAppBar bottomAppBar = BottomAppBar.this;
                            bottomAppBar.b(bottomAppBar.C);
                            BottomAppBar.this.a(r2, i, z, z2);
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(ofFloat2, ofFloat);
                list.add(animatorSet);
            } else if (r2.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ActionMenuView actionMenuView, final int i, final boolean z, boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public final void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.a(actionMenuView2, i, z));
            }
        };
        if (z2) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    static /* synthetic */ void a(BottomAppBar bottomAppBar, FloatingActionButton floatingActionButton) {
        AnimatorListenerAdapter animatorListenerAdapter = bottomAppBar.p;
        d d2 = floatingActionButton.d();
        if (d2.r == null) {
            d2.r = new ArrayList<>();
        }
        d2.r.add(animatorListenerAdapter);
        AnimatorListenerAdapter animatorListenerAdapter2 = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BottomAppBar.this.p.onAnimationStart(animator);
                FloatingActionButton m = BottomAppBar.this.m();
                if (m != null) {
                    m.setTranslationX(BottomAppBar.this.q());
                }
            }
        };
        d d3 = floatingActionButton.d();
        if (d3.q == null) {
            d3.q = new ArrayList<>();
        }
        d3.q.add(animatorListenerAdapter2);
        k<FloatingActionButton> kVar = bottomAppBar.q;
        d d4 = floatingActionButton.d();
        FloatingActionButton.c cVar = new FloatingActionButton.c(kVar);
        if (d4.s == null) {
            d4.s = new ArrayList<>();
        }
        d4.s.add(cVar);
    }

    private void b(ActionMenuView actionMenuView, int i, boolean z) {
        a(actionMenuView, i, z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float c(int i) {
        boolean a2 = r.a(this);
        int i2 = 1;
        if (i != 1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i3 = a2 ? this.I : this.H;
        int i4 = this.s;
        int measuredWidth = getMeasuredWidth() / 2;
        if (a2) {
            i2 = -1;
        }
        return (measuredWidth - (i4 + i3)) * i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        ArrayList<Object> arrayList;
        int i = this.A;
        this.A = i + 1;
        if (i == 0 && (arrayList = this.B) != null) {
            Iterator<Object> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton m() {
        View n = n();
        if (n instanceof FloatingActionButton) {
            return (FloatingActionButton) n;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View n() {
        /*
            r3 = this;
            r0 = r3
            android.view.ViewParent r0 = r0.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            if (r0 != 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r3
            android.view.ViewParent r0 = r0.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            r1 = r3
            java.util.List r0 = r0.c(r1)
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x001d:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0040
            r0 = r4
            java.lang.Object r0 = r0.next()
            android.view.View r0 = (android.view.View) r0
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r0 != 0) goto L_0x003e
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
            if (r0 == 0) goto L_0x001d
        L_0x003e:
            r0 = r5
            return r0
        L_0x0040:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.n():android.view.View");
    }

    static /* synthetic */ void o(BottomAppBar bottomAppBar) {
        ArrayList<Object> arrayList;
        int i = bottomAppBar.A - 1;
        bottomAppBar.A = i;
        if (i == 0 && (arrayList = bottomAppBar.B) != null) {
            Iterator<Object> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    private boolean o() {
        FloatingActionButton m = m();
        return m != null && m.d().l();
    }

    private float p() {
        return -k().f30290d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float q() {
        return c(this.v);
    }

    private ActionMenuView r() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        Animator animator = this.u;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.t;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        k().e = q();
        View n = n();
        this.n.p((!this.E || !o()) ? BitmapDescriptorFactory.HUE_RED : 1.0f);
        if (n != null) {
            n.setTranslationY(p());
            n.setTranslationX(q());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        ActionMenuView r2 = r();
        if (r2 != null && this.u == null) {
            r2.setAlpha(1.0f);
            if (!o()) {
                b(r2, 0, false);
            } else {
                b(r2, this.v, this.E);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public Behavior a() {
        if (this.F == null) {
            this.F = new Behavior();
        }
        return this.F;
    }

    protected final int a(ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean a2 = r.a(this);
        int measuredWidth = a2 ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            measuredWidth = measuredWidth;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f567a & 8388615) == 8388611) {
                measuredWidth = a2 ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((a2 ? actionMenuView.getRight() : actionMenuView.getLeft()) + (a2 ? this.H : -this.I));
    }

    public final void b(int i) {
        if (i != 0) {
            this.C = 0;
            f().clear();
            a(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a k() {
        return (a) this.n.t.f30683a.j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this, this.n);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            s();
            t();
        }
        u();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.v = savedState.fabAlignmentMode;
        this.E = savedState.fabAttached;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.v;
        savedState.fabAttached = this.E;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.a(this.n, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != k().f30290d) {
            k().a(f);
            this.n.invalidateSelf();
            t();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.n.r(f);
        int i = this.n.t.r;
        int j = this.n.j();
        Behavior v = a();
        v.f30254c = i - j;
        if (v.f30253b == 1) {
            setTranslationY(v.f30252a + v.f30254c);
        }
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(final int i, int i2) {
        this.C = i2;
        this.D = true;
        a(i, this.E);
        if (this.v != i && v.B(this)) {
            Animator animator = this.t;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.w == 1) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m(), "translationX", c(i));
                ofFloat.setDuration(300L);
                arrayList.add(ofFloat);
            } else {
                FloatingActionButton m = m();
                if (m != null && !m.d().m()) {
                    l();
                    m.b(new FloatingActionButton.a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
                        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
                        public final void b(FloatingActionButton floatingActionButton) {
                            floatingActionButton.setTranslationX(BottomAppBar.this.c(i));
                            floatingActionButton.a(new FloatingActionButton.a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5.1
                                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
                                public final void a(FloatingActionButton floatingActionButton2) {
                                    BottomAppBar.o(BottomAppBar.this);
                                }
                            }, true);
                        }
                    }, true);
                }
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.t = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator2) {
                    BottomAppBar.o(BottomAppBar.this);
                    BottomAppBar.this.t = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator2) {
                    BottomAppBar.this.l();
                }
            });
            this.t.start();
        }
        this.v = i;
    }

    public void setFabAnimationMode(int i) {
        this.w = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != k().f30288b) {
            k().f30288b = f;
            this.n.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != k().f30287a) {
            k().f30287a = f;
            this.n.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.o = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
