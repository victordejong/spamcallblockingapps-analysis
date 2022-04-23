package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: q0 */
    private static final int f10096q0 = C1027R.style.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: U */
    private final int f10097U;

    /* renamed from: V */
    private final MaterialShapeDrawable f10098V;
    @Nullable

    /* renamed from: W */
    private Animator f10099W;
    @Nullable

    /* renamed from: a0 */
    private Animator f10100a0;

    /* renamed from: b0 */
    private int f10101b0;

    /* renamed from: c0 */
    private int f10102c0;

    /* renamed from: d0 */
    private boolean f10103d0;

    /* renamed from: e0 */
    private final boolean f10104e0;

    /* renamed from: f0 */
    private final boolean f10105f0;

    /* renamed from: g0 */
    private final boolean f10106g0;

    /* renamed from: h0 */
    private int f10107h0;

    /* renamed from: i0 */
    private ArrayList<AnimationListener> f10108i0;

    /* renamed from: j0 */
    private boolean f10109j0;

    /* renamed from: k0 */
    private Behavior f10110k0;

    /* renamed from: l0 */
    private int f10111l0;

    /* renamed from: m0 */
    private int f10112m0;

    /* renamed from: n0 */
    private int f10113n0;
    @NonNull

    /* renamed from: o0 */
    AnimatorListenerAdapter f10114o0;
    @NonNull

    /* renamed from: p0 */
    TransformationCallback<FloatingActionButton> f10115p0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$AnimationListener.class */
    public interface AnimationListener {
        /* renamed from: a */
        void m10502a(BottomAppBar bottomAppBar);

        /* renamed from: b */
        void m10501b(BottomAppBar bottomAppBar);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: f */
        private WeakReference<BottomAppBar> f10131f;

        /* renamed from: g */
        private int f10132g;

        /* renamed from: h */
        private final View.OnLayoutChangeListener f10133h = new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.Behavior.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f10131f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.m9731j(Behavior.this.f10130e);
                int height = Behavior.this.f10130e.height();
                bottomAppBar.m10550D0(height);
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.f10132g == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                    if (ViewUtils.m9428h(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.f10097U;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.f10097U;
                    }
                }
            }
        };
        @NonNull

        /* renamed from: e */
        private final Rect f10130e = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: M */
        public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i) {
            this.f10131f = new WeakReference<>(bottomAppBar);
            View v0 = bottomAppBar.m10511v0();
            if (v0 != null && !ViewCompat.m19218S(v0)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) v0.getLayoutParams();
                layoutParams.f2780d = 49;
                this.f10132g = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (v0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) v0;
                    floatingActionButton.addOnLayoutChangeListener(this.f10133h);
                    bottomAppBar.m10519n0(floatingActionButton);
                }
                bottomAppBar.m10551C0();
            }
            coordinatorLayout.m19941M(bottomAppBar, i);
            return super.mo8678l(coordinatorLayout, bottomAppBar, i);
        }

        /* renamed from: N */
        public boolean mo10443A(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.mo10443A(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$FabAlignmentMode.class */
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$FabAnimationMode.class */
    public @interface FabAnimationMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.SavedState.1
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        int f10135h;

        /* renamed from: i */
        boolean f10136i;

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10135h = parcel.readInt();
            this.f10136i = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10135h);
            parcel.writeInt(this.f10136i ? 1 : 0);
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.bottomAppBarStyle);
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10096q0), attributeSet, i);
        this.f10098V = new MaterialShapeDrawable();
        this.f10107h0 = 0;
        this.f10109j0 = true;
        this.f10114o0 = new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar bottomAppBar = BottomAppBar.this;
                bottomAppBar.m10507z0(bottomAppBar.f10101b0, BottomAppBar.this.f10109j0);
            }
        };
        this.f10115p0 = new TransformationCallback<FloatingActionButton>() { // from class: com.google.android.material.bottomappbar.BottomAppBar.2
            /* renamed from: c */
            public void mo10506a(@NonNull FloatingActionButton floatingActionButton) {
                BottomAppBar.this.f10098V.m9327X(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
            }

            /* renamed from: d */
            public void mo10505b(@NonNull FloatingActionButton floatingActionButton) {
                float translationX = floatingActionButton.getTranslationX();
                if (BottomAppBar.this.getTopEdgeTreatment().m10488i() != translationX) {
                    BottomAppBar.this.getTopEdgeTreatment().m10483o(translationX);
                    BottomAppBar.this.f10098V.invalidateSelf();
                }
                float f = 0.0f;
                float max = Math.max(0.0f, -floatingActionButton.getTranslationY());
                if (BottomAppBar.this.getTopEdgeTreatment().m10492c() != max) {
                    BottomAppBar.this.getTopEdgeTreatment().m10487j(max);
                    BottomAppBar.this.f10098V.invalidateSelf();
                }
                MaterialShapeDrawable materialShapeDrawable = BottomAppBar.this.f10098V;
                if (floatingActionButton.getVisibility() == 0) {
                    f = floatingActionButton.getScaleY();
                }
                materialShapeDrawable.m9327X(f);
            }
        };
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.BottomAppBar, i, f10096q0, new int[0]);
        ColorStateList a = MaterialResources.m9394a(context2, h, C1027R.styleable.BottomAppBar_backgroundTint);
        int dimensionPixelSize = h.getDimensionPixelSize(C1027R.styleable.BottomAppBar_elevation, 0);
        this.f10101b0 = h.getInt(C1027R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f10102c0 = h.getInt(C1027R.styleable.BottomAppBar_fabAnimationMode, 0);
        this.f10103d0 = h.getBoolean(C1027R.styleable.BottomAppBar_hideOnScroll, false);
        this.f10104e0 = h.getBoolean(C1027R.styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f10105f0 = h.getBoolean(C1027R.styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f10106g0 = h.getBoolean(C1027R.styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        h.recycle();
        this.f10097U = getResources().getDimensionPixelOffset(C1027R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        BottomAppBarTopEdgeTreatment bottomAppBarTopEdgeTreatment = new BottomAppBarTopEdgeTreatment(h.getDimensionPixelOffset(C1027R.styleable.BottomAppBar_fabCradleMargin, 0), h.getDimensionPixelOffset(C1027R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0), h.getDimensionPixelOffset(C1027R.styleable.BottomAppBar_fabCradleVerticalOffset, 0));
        ShapeAppearanceModel.Builder a2 = ShapeAppearanceModel.m9277a();
        a2.m9253A(bottomAppBarTopEdgeTreatment);
        this.f10098V.setShapeAppearanceModel(a2.m9232m());
        this.f10098V.m9316e0(2);
        this.f10098V.m9325Z(Paint.Style.FILL);
        this.f10098V.m9338M(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.m19498o(this.f10098V, a);
        ViewCompat.m19177q0(this, this.f10098V);
        ViewUtils.m9435a(this, attributeSet, i, f10096q0, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.3
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            @NonNull
            /* renamed from: a */
            public WindowInsetsCompat mo9424a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
                boolean z;
                if (BottomAppBar.this.f10104e0) {
                    BottomAppBar.this.f10111l0 = windowInsetsCompat.m19096e();
                }
                r10 = true;
                boolean z2 = false;
                if (BottomAppBar.this.f10105f0) {
                    z = BottomAppBar.this.f10113n0 != windowInsetsCompat.m19095f();
                    BottomAppBar.this.f10113n0 = windowInsetsCompat.m19095f();
                } else {
                    z = false;
                }
                if (BottomAppBar.this.f10106g0) {
                    if (BottomAppBar.this.f10112m0 == windowInsetsCompat.m19094g()) {
                        z2 = false;
                    }
                    BottomAppBar.this.f10112m0 = windowInsetsCompat.m19094g();
                }
                if (z || z2) {
                    BottomAppBar.this.m10518o0();
                    BottomAppBar.this.m10551C0();
                    BottomAppBar.this.m10552B0();
                }
                return windowInsetsCompat;
            }
        });
    }

    /* renamed from: A0 */
    private void m10553A0(int i) {
        if (this.f10101b0 != i && ViewCompat.m19218S(this)) {
            Animator animator = this.f10099W;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (this.f10102c0 == 1) {
                m10516q0(i, arrayList);
            } else {
                m10517p0(i, arrayList);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f10099W = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    BottomAppBar.this.m10514s0();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    BottomAppBar.this.m10513t0();
                }
            });
            this.f10099W.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B0 */
    public void m10552B0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (!m10508y0()) {
                m10549E0(actionMenuView, 0, false);
            } else {
                m10549E0(actionMenuView, this.f10101b0, this.f10109j0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C0 */
    public void m10551C0() {
        getTopEdgeTreatment().m10483o(getFabTranslationX());
        View v0 = m10511v0();
        this.f10098V.m9327X((!this.f10109j0 || !m10508y0()) ? 0.0f : 1.0f);
        if (v0 != null) {
            v0.setTranslationY(getFabTranslationY());
            v0.setTranslationX(getFabTranslationX());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E0 */
    public void m10549E0(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        actionMenuView.setTranslationX(m10510w0(actionMenuView, i, z));
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f10111l0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return m10509x0(this.f10101b0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().m10492c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f10113n0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f10112m0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public BottomAppBarTopEdgeTreatment getTopEdgeTreatment() {
        return (BottomAppBarTopEdgeTreatment) this.f10098V.getShapeAppearanceModel().m9262p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public void m10519n0(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.m9736e(this.f10114o0);
        floatingActionButton.m9735f(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BottomAppBar.this.f10114o0.onAnimationStart(animator);
                FloatingActionButton u0 = BottomAppBar.this.m10512u0();
                if (u0 != null) {
                    u0.setTranslationX(BottomAppBar.this.getFabTranslationX());
                }
            }
        });
        floatingActionButton.m9734g(this.f10115p0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public void m10518o0() {
        Animator animator = this.f10100a0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f10099W;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* renamed from: q0 */
    private void m10516q0(int i, @NonNull List<Animator> list) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(m10512u0(), "translationX", m10509x0(i));
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    /* renamed from: r0 */
    private void m10515r0(final int i, final boolean z, @NonNull List<Animator> list) {
        final ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            Animator ofFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
            if (Math.abs(actionMenuView.getTranslationX() - m10510w0(actionMenuView, i, z)) > 1.0f) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
                ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.7

                    /* renamed from: a */
                    public boolean f10124a;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.f10124a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (!this.f10124a) {
                            BottomAppBar.this.m10549E0(actionMenuView, i, z);
                        }
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(ofFloat2, ofFloat);
                list.add(animatorSet);
            } else if (actionMenuView.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s0 */
    public void m10514s0() {
        ArrayList<AnimationListener> arrayList;
        int i = this.f10107h0 - 1;
        this.f10107h0 = i;
        if (i == 0 && (arrayList = this.f10108i0) != null) {
            Iterator<AnimationListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m10501b(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t0 */
    public void m10513t0() {
        ArrayList<AnimationListener> arrayList;
        int i = this.f10107h0;
        this.f10107h0 = i + 1;
        if (i == 0 && (arrayList = this.f10108i0) != null) {
            Iterator<AnimationListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m10502a(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: u0 */
    public FloatingActionButton m10512u0() {
        View v0 = m10511v0();
        return v0 instanceof FloatingActionButton ? (FloatingActionButton) v0 : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    @androidx.annotation.Nullable
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m10511v0() {
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
            java.util.List r0 = r0.m19913w(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.m10511v0():android.view.View");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x0 */
    public float m10509x0(int i) {
        boolean h = ViewUtils.m9428h(this);
        int i2 = 1;
        if (i != 1) {
            return 0.0f;
        }
        int i3 = h ? this.f10113n0 : this.f10112m0;
        int i4 = this.f10097U;
        int measuredWidth = getMeasuredWidth() / 2;
        if (h) {
            i2 = -1;
        }
        return (measuredWidth - (i4 + i3)) * i2;
    }

    /* renamed from: y0 */
    private boolean m10508y0() {
        FloatingActionButton u0 = m10512u0();
        return u0 != null && u0.m9726o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z0 */
    public void m10507z0(int i, boolean z) {
        if (ViewCompat.m19218S(this)) {
            Animator animator = this.f10100a0;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!m10508y0()) {
                i = 0;
                z = false;
            }
            m10515r0(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f10100a0 = animatorSet;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.bottomappbar.BottomAppBar.6
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    BottomAppBar.this.m10514s0();
                    BottomAppBar.this.f10100a0 = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    BottomAppBar.this.m10513t0();
                }
            });
            this.f10100a0.start();
        }
    }

    /* renamed from: D0 */
    boolean m10550D0(@AbstractC0040Px int i) {
        float f = i;
        if (f == getTopEdgeTreatment().m10489g()) {
            return false;
        }
        getTopEdgeTreatment().m10484n(f);
        this.f10098V.invalidateSelf();
        return true;
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f10098V.m9346E();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.f10110k0 == null) {
            this.f10110k0 = new Behavior();
        }
        return this.f10110k0;
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m10492c();
    }

    public int getFabAlignmentMode() {
        return this.f10101b0;
    }

    public int getFabAnimationMode() {
        return this.f10102c0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m10491d();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m10490f();
    }

    public boolean getHideOnScroll() {
        return this.f10103d0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9281f(this, this.f10098V);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m10518o0();
            m10551C0();
        }
        m10552B0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        this.f10101b0 = savedState.f10135h;
        this.f10109j0 = savedState.f10136i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10135h = this.f10101b0;
        savedState.f10136i = this.f10109j0;
        return savedState;
    }

    /* renamed from: p0 */
    protected void m10517p0(final int i, List<Animator> list) {
        FloatingActionButton u0 = m10512u0();
        if (u0 != null && !u0.m9727n()) {
            m10513t0();
            u0.m9729l(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5
                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                /* renamed from: a */
                public void mo9710a(@NonNull FloatingActionButton floatingActionButton) {
                    floatingActionButton.setTranslationX(BottomAppBar.this.m10509x0(i));
                    floatingActionButton.m9722s(new FloatingActionButton.OnVisibilityChangedListener() { // from class: com.google.android.material.bottomappbar.BottomAppBar.5.1
                        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.OnVisibilityChangedListener
                        /* renamed from: b */
                        public void mo9709b(FloatingActionButton floatingActionButton2) {
                            BottomAppBar.this.m10514s0();
                        }
                    });
                }
            });
        }
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.m19498o(this.f10098V, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m10487j(f);
            this.f10098V.invalidateSelf();
            m10551C0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f10098V.m9329V(f);
        getBehavior().m10568G(this, this.f10098V.m9348C() - this.f10098V.m9349B());
    }

    public void setFabAlignmentMode(int i) {
        m10553A0(i);
        m10507z0(i, this.f10109j0);
        this.f10101b0 = i;
    }

    public void setFabAnimationMode(int i) {
        this.f10102c0 = i;
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m10486l(f);
            this.f10098V.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m10485m(f);
            this.f10098V.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f10103d0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    /* renamed from: w0 */
    protected int m10510w0(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean h = ViewUtils.m9428h(this);
        int measuredWidth = h ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            measuredWidth = measuredWidth;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).f22a & 8388615) == 8388611) {
                measuredWidth = h ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((h ? actionMenuView.getRight() : actionMenuView.getLeft()) + (h ? this.f10112m0 : -this.f10113n0));
    }
}
