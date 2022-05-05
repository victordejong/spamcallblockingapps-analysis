package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p297c.C9179a;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p310p.C9248a;
import p081h.p203i.p204a.p294f.p313s.C9257c;
import p081h.p203i.p204a.p294f.p313s.C9262e;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar.class */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: a */
    public final int f7316a;

    /* renamed from: b */
    public final C9257c f7317b;

    /* renamed from: c */
    public final C9179a f7318c;
    @Nullable

    /* renamed from: d */
    public Animator f7319d;
    @Nullable

    /* renamed from: e */
    public Animator f7320e;
    @Nullable

    /* renamed from: f */
    public Animator f7321f;

    /* renamed from: g */
    public int f7322g;

    /* renamed from: h */
    public boolean f7323h;

    /* renamed from: i */
    public boolean f7324i;

    /* renamed from: j */
    public AnimatorListenerAdapter f7325j;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior.class */
    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: d */
        public final Rect f7326d = new Rect();

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo31503a(BottomAppBar bottomAppBar) {
            super.mo31503a((Behavior) bottomAppBar);
            FloatingActionButton b = bottomAppBar.m31523b();
            if (b != null) {
                b.m31374a(this.f7326d);
                float measuredHeight = b.getMeasuredHeight() - this.f7326d.height();
                b.clearAnimation();
                b.animate().translationY((-b.getPaddingBottom()) + measuredHeight).setInterpolator(C9167a.f20881c).setDuration(175L);
            }
        }

        /* renamed from: a */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton b = bottomAppBar.m31523b();
            if (b != null) {
                m31499a(b, bottomAppBar);
                b.m31368b(this.f7326d);
                bottomAppBar.m31522b(this.f7326d.height());
            }
            if (!bottomAppBar.m31506h()) {
                bottomAppBar.m31504j();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i);
        }

        /* renamed from: a */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.m31508g() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        /* renamed from: a */
        public final boolean m31499a(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).anchorGravity = 17;
            bottomAppBar.m31526a(floatingActionButton);
            return true;
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public void mo31498b(BottomAppBar bottomAppBar) {
            super.mo31498b((Behavior) bottomAppBar);
            FloatingActionButton b = bottomAppBar.m31523b();
            if (b != null) {
                b.clearAnimation();
                b.animate().translationY(bottomAppBar.m31510f()).setInterpolator(C9167a.f20882d).setDuration(225L);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3603a();

        /* renamed from: a */
        public int f7327a;

        /* renamed from: b */
        public boolean f7328b;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$SavedState$a.class */
        public static final class C3603a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7327a = parcel.readInt();
            this.f7328b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f7327a);
            parcel.writeInt(this.f7328b ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$a.class */
    public class C3604a extends AnimatorListenerAdapter {
        public C3604a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.f7321f = null;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$b.class */
    public class C3605b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f7330a;

        /* renamed from: b */
        public final /* synthetic */ ActionMenuView f7331b;

        /* renamed from: c */
        public final /* synthetic */ int f7332c;

        /* renamed from: d */
        public final /* synthetic */ boolean f7333d;

        public C3605b(ActionMenuView actionMenuView, int i, boolean z) {
            this.f7331b = actionMenuView;
            this.f7332c = i;
            this.f7333d = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f7330a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f7330a) {
                BottomAppBar.this.m31533a(this.f7331b, this.f7332c, this.f7333d);
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$c.class */
    public class C3606c extends AnimatorListenerAdapter {
        public C3606c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.f7319d = null;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$d.class */
    public class C3607d implements ValueAnimator.AnimatorUpdateListener {
        public C3607d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.f7317b.m15595a(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$e.class */
    public class C3608e extends AnimatorListenerAdapter {
        public C3608e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.m31518b(bottomAppBar.f7324i);
            BottomAppBar bottomAppBar2 = BottomAppBar.this;
            bottomAppBar2.m31535a(bottomAppBar2.f7322g, BottomAppBar.this.f7324i);
        }
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomAppBarStyle);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7324i = true;
        this.f7325j = new C3608e();
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.BottomAppBar, i, R$style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList a = C9248a.m15628a(context, c, R$styleable.BottomAppBar_backgroundTint);
        this.f7322g = c.getInt(R$styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f7323h = c.getBoolean(R$styleable.BottomAppBar_hideOnScroll, false);
        c.recycle();
        this.f7316a = getResources().getDimensionPixelOffset(R$dimen.mtrl_bottomappbar_fabOffsetEndMode);
        this.f7318c = new C9179a(c.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleMargin, 0), c.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0), c.getDimensionPixelOffset(R$styleable.BottomAppBar_fabCradleVerticalOffset, 0));
        C9262e eVar = new C9262e();
        eVar.m15571a(this.f7318c);
        this.f7317b = new C9257c(eVar);
        this.f7317b.m15587a(true);
        this.f7317b.m15588a(Paint.Style.FILL);
        DrawableCompat.setTintList(this.f7317b, a);
        ViewCompat.setBackground(this, this.f7317b);
    }

    /* renamed from: a */
    public final float m31525a(boolean z) {
        FloatingActionButton b = m31523b();
        if (b == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        b.m31374a(rect);
        float height = rect.height();
        float f = height;
        if (height == 0.0f) {
            f = b.getMeasuredHeight();
        }
        float height2 = b.getHeight() - rect.bottom;
        float height3 = b.getHeight() - rect.height();
        float f2 = -m31514d();
        float f3 = f / 2.0f;
        float paddingBottom = height3 - b.getPaddingBottom();
        float f4 = -getMeasuredHeight();
        if (z) {
            paddingBottom = f2 + f3 + height2;
        }
        return f4 + paddingBottom;
    }

    /* renamed from: a */
    public final int m31536a(int i) {
        int i2 = 0;
        int i3 = 1;
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        if (i == 1) {
            int measuredWidth = getMeasuredWidth() / 2;
            int i4 = this.f7316a;
            if (z) {
                i3 = -1;
            }
            i2 = (measuredWidth - i4) * i3;
        }
        return i2;
    }

    /* renamed from: a */
    public final void m31537a() {
        Animator animator = this.f7319d;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f7321f;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.f7320e;
        if (animator3 != null) {
            animator3.cancel();
        }
    }

    /* renamed from: a */
    public final void m31535a(int i, boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            Animator animator = this.f7321f;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!m31505i()) {
                i = 0;
                z = false;
            }
            m31534a(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f7321f = animatorSet;
            this.f7321f.addListener(new C3604a());
            this.f7321f.start();
        }
    }

    /* renamed from: a */
    public final void m31534a(int i, boolean z, List<Animator> list) {
        ActionMenuView c = m31516c();
        if (c != null) {
            Animator ofFloat = ObjectAnimator.ofFloat(c, "alpha", 1.0f);
            if ((this.f7324i || (z && m31505i())) && (this.f7322g == 1 || i == 1)) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c, "alpha", 0.0f);
                ofFloat2.addListener(new C3605b(c, i, z));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(150L);
                animatorSet.playSequentially(ofFloat2, ofFloat);
                list.add(animatorSet);
            } else if (c.getAlpha() < 1.0f) {
                list.add(ofFloat);
            }
        }
    }

    /* renamed from: a */
    public final void m31533a(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z2 = ViewCompat.getLayoutDirection(this) == 1;
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            i2 = i2;
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                i2 = Math.max(i2, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i != 1 || !z) ? 0.0f : i2 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft()));
    }

    /* renamed from: a */
    public final void m31526a(@NonNull FloatingActionButton floatingActionButton) {
        m31519b(floatingActionButton);
        floatingActionButton.m31375a(this.f7325j);
        floatingActionButton.m31369b(this.f7325j);
    }

    /* renamed from: a */
    public final void m31524a(boolean z, List<Animator> list) {
        if (z) {
            this.f7318c.m15934b(m31512e());
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f7317b.m15596a(), z ? 1.0f : 0.0f);
        ofFloat.addUpdateListener(new C3607d());
        ofFloat.setDuration(300L);
        list.add(ofFloat);
    }

    @Nullable
    /* renamed from: b */
    public final FloatingActionButton m31523b() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m31522b(@AbstractC0053Px int i) {
        float f = i;
        if (f != this.f7318c.m15935b()) {
            this.f7318c.m15936a(f);
            this.f7317b.invalidateSelf();
        }
    }

    /* renamed from: b */
    public final void m31519b(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.m31364c(this.f7325j);
        floatingActionButton.m31360d(this.f7325j);
    }

    /* renamed from: b */
    public final void m31518b(boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            Animator animator = this.f7319d;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            m31524a(z && m31505i(), arrayList);
            m31517b(z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.f7319d = animatorSet;
            this.f7319d.addListener(new C3606c());
            this.f7319d.start();
        }
    }

    /* renamed from: b */
    public final void m31517b(boolean z, List<Animator> list) {
        FloatingActionButton b = m31523b();
        if (b != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(b, "translationY", m31525a(z));
            ofFloat.setDuration(300L);
            list.add(ofFloat);
        }
    }

    @Nullable
    /* renamed from: c */
    public final ActionMenuView m31516c() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    @Dimension
    /* renamed from: d */
    public float m31514d() {
        return this.f7318c.m15937a();
    }

    /* renamed from: e */
    public final float m31512e() {
        return m31536a(this.f7322g);
    }

    /* renamed from: f */
    public final float m31510f() {
        return m31525a(this.f7324i);
    }

    /* renamed from: g */
    public boolean m31508g() {
        return this.f7323h;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    /* renamed from: h */
    public final boolean m31506h() {
        Animator animator;
        Animator animator2;
        Animator animator3 = this.f7319d;
        return (animator3 != null && animator3.isRunning()) || ((animator = this.f7321f) != null && animator.isRunning()) || ((animator2 = this.f7320e) != null && animator2.isRunning());
    }

    /* renamed from: i */
    public final boolean m31505i() {
        FloatingActionButton b = m31523b();
        return b != null && b.m31356h();
    }

    /* renamed from: j */
    public final void m31504j() {
        this.f7318c.m15934b(m31512e());
        FloatingActionButton b = m31523b();
        this.f7317b.m15595a((!this.f7324i || !m31505i()) ? 0.0f : 1.0f);
        if (b != null) {
            b.setTranslationY(m31510f());
            b.setTranslationX(m31512e());
        }
        ActionMenuView c = m31516c();
        if (c != null) {
            c.setAlpha(1.0f);
            if (!m31505i()) {
                m31533a(c, 0, false);
            } else {
                m31533a(c, this.f7322g, this.f7324i);
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m31537a();
        m31504j();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f7322g = savedState.f7327a;
        this.f7324i = savedState.f7328b;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f7327a = this.f7322g;
        savedState.f7328b = this.f7324i;
        return savedState;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
