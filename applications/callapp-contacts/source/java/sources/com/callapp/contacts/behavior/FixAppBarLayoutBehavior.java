package com.callapp.contacts.behavior;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/behavior/FixAppBarLayoutBehavior.class */
public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {

    /* renamed from: b */
    private ValueAnimator f24941b;

    /* renamed from: c */
    private boolean f24942c = false;

    public FixAppBarLayoutBehavior() {
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m29082a(int i, AppBarLayout appBarLayout, View view, int i2) {
        if (i2 == 1) {
            int topAndBottomOffset = getTopAndBottomOffset();
            if ((i >= 0 || topAndBottomOffset != 0) && (i <= 0 || topAndBottomOffset != (-appBarLayout.m11311c()))) {
                return;
            }
            C0926v.m44158A(view);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29081a(ValueAnimator valueAnimator) {
        mo11250b(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* renamed from: c */
    private void m29079c(int i) {
        ValueAnimator valueAnimator = this.f24941b;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f24941b = valueAnimator2;
            valueAnimator2.setInterpolator(new DecelerateInterpolator());
            this.f24941b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.behavior._$$Lambda$FixAppBarLayoutBehavior$xSJQtWaQxppUUDQEwljNGOr8L5Y
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    FixAppBarLayoutBehavior.this.m29081a(valueAnimator3);
                }
            });
        } else {
            valueAnimator.cancel();
        }
        this.f24941b.setIntValues(getTopAndBottomOffset(), i);
        this.f24941b.start();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo29080a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        super.mo29080a(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
        m29082a(i4, appBarLayout, view2, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    /* renamed from: a */
    public final void mo11128a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        super.mo11284a(coordinatorLayout, appBarLayout, view, i);
        if (!this.f24942c) {
            return;
        }
        this.f24942c = false;
        int m11311c = appBarLayout.m11311c();
        int topAndBottomOffset = getTopAndBottomOffset();
        int i2 = -m11311c;
        if (topAndBottomOffset <= i2 || topAndBottomOffset >= 0) {
            return;
        }
        if (topAndBottomOffset < (-(m11311c / 2.0f))) {
            m29079c(i2);
        } else {
            m29079c(0);
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    /* renamed from: a */
    public final void mo11126a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        super.mo11282a(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        m29082a(i2, appBarLayout, view, i3);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    /* renamed from: a */
    public final boolean mo11125a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
        ValueAnimator valueAnimator;
        boolean mo11281a = super.mo11281a(coordinatorLayout, appBarLayout, view, view2, i, i2);
        this.f24942c = mo11281a;
        if (mo11281a && (valueAnimator = this.f24941b) != null) {
            valueAnimator.cancel();
        }
        return this.f24942c;
    }
}
