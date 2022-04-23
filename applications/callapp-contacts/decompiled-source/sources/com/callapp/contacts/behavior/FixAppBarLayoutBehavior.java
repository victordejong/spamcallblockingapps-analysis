package com.callapp.contacts.behavior;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/behavior/FixAppBarLayoutBehavior.class */
public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {

    /* renamed from: b  reason: collision with root package name */
    private ValueAnimator f14269b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14270c = false;

    public FixAppBarLayoutBehavior() {
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(int i, AppBarLayout appBarLayout, View view, int i2) {
        if (i2 == 1) {
            int topAndBottomOffset = getTopAndBottomOffset();
            if ((i < 0 && topAndBottomOffset == 0) || (i > 0 && topAndBottomOffset == (-appBarLayout.c()))) {
                v.A(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        b(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    private void c(int i) {
        ValueAnimator valueAnimator = this.f14269b;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f14269b = valueAnimator2;
            valueAnimator2.setInterpolator(new DecelerateInterpolator());
            this.f14269b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.behavior._$$Lambda$FixAppBarLayoutBehavior$xSJQtWaQxppUUDQEwljNGOr8L5Y
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    FixAppBarLayoutBehavior.this.a(valueAnimator3);
                }
            });
        } else {
            valueAnimator.cancel();
        }
        this.f14269b.setIntValues(getTopAndBottomOffset(), i);
        this.f14269b.start();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        super.a(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
        a(i4, appBarLayout, view2, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    public final void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        super.a(coordinatorLayout, appBarLayout, view, i);
        if (this.f14270c) {
            this.f14270c = false;
            int c2 = appBarLayout.c();
            int topAndBottomOffset = getTopAndBottomOffset();
            int i2 = -c2;
            if (topAndBottomOffset > i2 && topAndBottomOffset < 0) {
                if (topAndBottomOffset < (-(c2 / 2.0f))) {
                    c(i2);
                } else {
                    c(0);
                }
            }
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    public final void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        super.a(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        a(i2, appBarLayout, view, i3);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
        ValueAnimator valueAnimator;
        boolean a2 = super.a(coordinatorLayout, appBarLayout, view, view2, i, i2);
        this.f14270c = a2;
        if (a2 && (valueAnimator = this.f14269b) != null) {
            valueAnimator.cancel();
        }
        return this.f14270c;
    }
}
