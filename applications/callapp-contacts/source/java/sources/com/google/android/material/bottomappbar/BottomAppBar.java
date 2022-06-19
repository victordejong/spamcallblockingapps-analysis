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
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
import androidx.customview.view.AbsSavedState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.C14578d;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.AbstractC14399k;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14674i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AbstractC0699a {

    /* renamed from: r */
    private static final int f52533r = C14376a.C14387k.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: A */
    private int f52534A;

    /* renamed from: B */
    private ArrayList<Object> f52535B;

    /* renamed from: C */
    private int f52536C;

    /* renamed from: D */
    private boolean f52537D;

    /* renamed from: E */
    private boolean f52538E;

    /* renamed from: F */
    private Behavior f52539F;

    /* renamed from: G */
    private int f52540G;

    /* renamed from: H */
    private int f52541H;

    /* renamed from: I */
    private int f52542I;

    /* renamed from: n */
    final C14670h f52543n;

    /* renamed from: o */
    boolean f52544o;

    /* renamed from: p */
    AnimatorListenerAdapter f52545p;

    /* renamed from: q */
    AbstractC14399k<FloatingActionButton> f52546q;

    /* renamed from: s */
    private final int f52547s;

    /* renamed from: t */
    private Animator f52548t;

    /* renamed from: u */
    private Animator f52549u;

    /* renamed from: v */
    private int f52550v;

    /* renamed from: w */
    private int f52551w;

    /* renamed from: x */
    private final boolean f52552x;

    /* renamed from: y */
    private final boolean f52553y;

    /* renamed from: z */
    private final boolean f52554z;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: e */
        private WeakReference<BottomAppBar> f52574e;

        /* renamed from: f */
        private int f52575f;

        /* renamed from: g */
        private final View.OnLayoutChangeListener f52576g = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f52574e.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                Rect rect = Behavior.this.f52573d;
                rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
                floatingActionButton.m10739b(rect);
                int height = Behavior.this.f52573d.height();
                float f = height;
                if (f != bottomAppBar.m11191k().f52580c) {
                    bottomAppBar.m11191k().f52580c = f;
                    bottomAppBar.f52543n.invalidateSelf();
                }
                CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) view.getLayoutParams();
                if (Behavior.this.f52575f != 0) {
                    return;
                }
                c0702d.bottomMargin = bottomAppBar.f52540G + (bottomAppBar.getResources().getDimensionPixelOffset(C14376a.C14380d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                c0702d.leftMargin = bottomAppBar.f52542I;
                c0702d.rightMargin = bottomAppBar.f52541H;
                if (C14654r.m10497a(floatingActionButton)) {
                    c0702d.leftMargin += bottomAppBar.f52547s;
                } else {
                    c0702d.rightMargin += bottomAppBar.f52547s;
                }
            }
        };

        /* renamed from: d */
        private final Rect f52573d = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a */
        public boolean mo9852a(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.f52574e = new WeakReference<>(bottomAppBar);
            View m11185n = bottomAppBar.m11185n();
            if (m11185n != null && !C0926v.m44157B(m11185n)) {
                CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) m11185n.getLayoutParams();
                c0702d.f3203d = 49;
                this.f52575f = c0702d.bottomMargin;
                if (m11185n instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) m11185n;
                    floatingActionButton.addOnLayoutChangeListener(this.f52576g);
                    BottomAppBar.m11207a(bottomAppBar, floatingActionButton);
                }
                bottomAppBar.m11173t();
            }
            coordinatorLayout.m44655b(bottomAppBar, i);
            return super.mo9852a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ boolean mo11125a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            return bottomAppBar.f52544o && super.mo11125a(coordinatorLayout, (CoordinatorLayout) bottomAppBar, view2, view3, i, i2);
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
        this(context, attributeSet, C14376a.C14378b.bottomAppBarStyle);
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

    /* renamed from: a */
    public void m11215a(int i, boolean z) {
        if (!C0926v.m44157B(this)) {
            this.f52537D = false;
            m11206b(this.f52536C);
            return;
        }
        Animator animator = this.f52549u;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!m11183o()) {
            i = 0;
            z = false;
        }
        m11214a(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f52549u = animatorSet;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                BottomAppBar.m11182o(BottomAppBar.this);
                BottomAppBar.this.f52537D = false;
                BottomAppBar.this.f52549u = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator2) {
                BottomAppBar.this.m11189l();
            }
        });
        this.f52549u.start();
    }

    /* renamed from: a */
    private void m11214a(final int i, final boolean z, List<Animator> list) {
        final ActionMenuView m11177r = m11177r();
        if (m11177r == null) {
            return;
        }
        Animator ofFloat = ObjectAnimator.ofFloat(m11177r, "alpha", 1.0f);
        if (Math.abs(m11177r.getTranslationX() - m11213a(m11177r, i, z)) <= 1.0f) {
            if (m11177r.getAlpha() >= 1.0f) {
                return;
            }
            list.add(ofFloat);
            return;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(m11177r, "alpha", BitmapDescriptorFactory.HUE_RED);
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

            /* renamed from: a */
            public boolean f52563a;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                this.f52563a = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (!this.f52563a) {
                    boolean z2 = BottomAppBar.this.f52536C != 0;
                    BottomAppBar bottomAppBar = BottomAppBar.this;
                    bottomAppBar.m11206b(bottomAppBar.f52536C);
                    BottomAppBar.this.m11212a(m11177r, i, z, z2);
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(150L);
        animatorSet.playSequentially(ofFloat2, ofFloat);
        list.add(animatorSet);
    }

    /* renamed from: a */
    public void m11212a(final ActionMenuView actionMenuView, final int i, final boolean z, boolean z2) {
        Runnable runnable = new Runnable() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // java.lang.Runnable
            public final void run() {
                ActionMenuView actionMenuView2 = actionMenuView;
                actionMenuView2.setTranslationX(BottomAppBar.this.m11213a(actionMenuView2, i, z));
            }
        };
        if (z2) {
            actionMenuView.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m11207a(BottomAppBar bottomAppBar, FloatingActionButton floatingActionButton) {
        AnimatorListenerAdapter animatorListenerAdapter = bottomAppBar.f52545p;
        C14578d m10736d = floatingActionButton.m10736d();
        if (m10736d.f53196r == null) {
            m10736d.f53196r = new ArrayList<>();
        }
        m10736d.f53196r.add(animatorListenerAdapter);
        AnimatorListenerAdapter animatorListenerAdapter2 = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BottomAppBar.this.f52545p.onAnimationStart(animator);
                FloatingActionButton m11187m = BottomAppBar.this.m11187m();
                if (m11187m != null) {
                    m11187m.setTranslationX(BottomAppBar.this.m11179q());
                }
            }
        };
        C14578d m10736d2 = floatingActionButton.m10736d();
        if (m10736d2.f53195q == null) {
            m10736d2.f53195q = new ArrayList<>();
        }
        m10736d2.f53195q.add(animatorListenerAdapter2);
        AbstractC14399k<FloatingActionButton> abstractC14399k = bottomAppBar.f52546q;
        C14578d m10736d3 = floatingActionButton.m10736d();
        FloatingActionButton.C14571c c14571c = new FloatingActionButton.C14571c(abstractC14399k);
        if (m10736d3.f53197s == null) {
            m10736d3.f53197s = new ArrayList<>();
        }
        m10736d3.f53197s.add(c14571c);
    }

    /* renamed from: b */
    private void m11205b(ActionMenuView actionMenuView, int i, boolean z) {
        m11212a(actionMenuView, i, z, false);
    }

    /* renamed from: c */
    public float m11202c(int i) {
        boolean m10497a = C14654r.m10497a(this);
        int i2 = 1;
        if (i == 1) {
            int i3 = m10497a ? this.f52542I : this.f52541H;
            int i4 = this.f52547s;
            int measuredWidth = getMeasuredWidth() / 2;
            if (m10497a) {
                i2 = -1;
            }
            return (measuredWidth - (i4 + i3)) * i2;
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: l */
    public void m11189l() {
        ArrayList<Object> arrayList;
        int i = this.f52534A;
        this.f52534A = i + 1;
        if (i != 0 || (arrayList = this.f52535B) == null) {
            return;
        }
        Iterator<Object> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: m */
    public FloatingActionButton m11187m() {
        View m11185n = m11185n();
        if (m11185n instanceof FloatingActionButton) {
            return (FloatingActionButton) m11185n;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m11185n() {
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
            java.util.List r0 = r0.m44652c(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.m11185n():android.view.View");
    }

    /* renamed from: o */
    static /* synthetic */ void m11182o(BottomAppBar bottomAppBar) {
        ArrayList<Object> arrayList;
        int i = bottomAppBar.f52534A - 1;
        bottomAppBar.f52534A = i;
        if (i != 0 || (arrayList = bottomAppBar.f52535B) == null) {
            return;
        }
        Iterator<Object> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: o */
    private boolean m11183o() {
        FloatingActionButton m11187m = m11187m();
        return m11187m != null && m11187m.m10736d().m10697l();
    }

    /* renamed from: p */
    private float m11181p() {
        return -m11191k().f52581d;
    }

    /* renamed from: q */
    public float m11179q() {
        return m11202c(this.f52550v);
    }

    /* renamed from: r */
    private ActionMenuView m11177r() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* renamed from: s */
    public void m11175s() {
        Animator animator = this.f52549u;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f52548t;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* renamed from: t */
    public void m11173t() {
        m11191k().f52582e = m11179q();
        View m11185n = m11185n();
        this.f52543n.m10443p((!this.f52538E || !m11183o()) ? 0.0f : 1.0f);
        if (m11185n != null) {
            m11185n.setTranslationY(m11181p());
            m11185n.setTranslationX(m11179q());
        }
    }

    /* renamed from: u */
    public void m11171u() {
        ActionMenuView m11177r = m11177r();
        if (m11177r == null || this.f52549u != null) {
            return;
        }
        m11177r.setAlpha(1.0f);
        if (!m11183o()) {
            m11205b(m11177r, 0, false);
        } else {
            m11205b(m11177r, this.f52550v, this.f52538E);
        }
    }

    /* renamed from: v */
    public Behavior mo10748a() {
        if (this.f52539F == null) {
            this.f52539F = new Behavior();
        }
        return this.f52539F;
    }

    /* renamed from: a */
    protected final int m11213a(ActionMenuView actionMenuView, int i, boolean z) {
        int i2;
        if (i != 1 || !z) {
            return 0;
        }
        boolean m10497a = C14654r.m10497a(this);
        int measuredWidth = m10497a ? getMeasuredWidth() : 0;
        int i3 = 0;
        while (true) {
            i2 = measuredWidth;
            if (i3 >= getChildCount()) {
                break;
            }
            View childAt = getChildAt(i3);
            measuredWidth = i2;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f282a & 8388615) == 8388611) {
                measuredWidth = m10497a ? Math.min(i2, childAt.getLeft()) : Math.max(i2, childAt.getRight());
            }
            i3++;
        }
        return i2 - ((m10497a ? actionMenuView.getRight() : actionMenuView.getLeft()) + (m10497a ? this.f52541H : -this.f52542I));
    }

    /* renamed from: b */
    public final void m11206b(int i) {
        if (i != 0) {
            this.f52536C = 0;
            m45836f().clear();
            m45855a(i);
        }
    }

    /* renamed from: k */
    public final C14437a m11191k() {
        return (C14437a) this.f52543n.f53492t.f53500a.f53535j;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10435a(this, this.f52543n);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m11175s();
            m11173t();
        }
        m11171u();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f52550v = savedState.fabAlignmentMode;
        this.f52538E = savedState.fabAttached;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.f52550v;
        savedState.fabAttached = this.f52538E;
        return savedState;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        C0840a.m44355a(this.f52543n, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != m11191k().f52581d) {
            m11191k().m11157a(f);
            this.f52543n.invalidateSelf();
            m11173t();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f52543n.m10439r(f);
        int i = this.f52543n.f53492t.f53517r;
        int m10452j = this.f52543n.m10452j();
        Behavior mo10748a = mo10748a();
        mo10748a.f52513c = i - m10452j;
        if (mo10748a.f52512b == 1) {
            setTranslationY(mo10748a.f52511a + mo10748a.f52513c);
        }
    }

    public void setFabAlignmentMode(int i) {
        setFabAlignmentModeAndReplaceMenu(i, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(final int i, int i2) {
        this.f52536C = i2;
        this.f52537D = true;
        m11215a(i, this.f52538E);
        if (this.f52550v != i && C0926v.m44157B(this)) {
            Animator animator = this.f52548t;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.f52551w == 1) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m11187m(), "translationX", m11202c(i));
                ofFloat.setDuration(300L);
                arrayList.add(ofFloat);
            } else {
                FloatingActionButton m11187m = m11187m();
                if (m11187m != null && !m11187m.m10736d().m10696m()) {
                    m11189l();
                    m11187m.m10738b(new FloatingActionButton.AbstractC14569a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
                        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC14569a
                        /* renamed from: b */
                        public final void mo10724b(FloatingActionButton floatingActionButton) {
                            floatingActionButton.setTranslationX(BottomAppBar.this.m11202c(i));
                            floatingActionButton.m10743a(new FloatingActionButton.AbstractC14569a() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5.1
                                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC14569a
                                /* renamed from: a */
                                public final void mo10725a(FloatingActionButton floatingActionButton2) {
                                    BottomAppBar.m11182o(BottomAppBar.this);
                                }
                            }, true);
                        }
                    }, true);
                }
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f52548t = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator2) {
                    BottomAppBar.m11182o(BottomAppBar.this);
                    BottomAppBar.this.f52548t = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator2) {
                    BottomAppBar.this.m11189l();
                }
            });
            this.f52548t.start();
        }
        this.f52550v = i;
    }

    public void setFabAnimationMode(int i) {
        this.f52551w = i;
    }

    public void setFabCradleMargin(float f) {
        if (f != m11191k().f52579b) {
            m11191k().f52579b = f;
            this.f52543n.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != m11191k().f52578a) {
            m11191k().f52578a = f;
            this.f52543n.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f52544o = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
