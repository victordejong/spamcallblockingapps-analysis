package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import p090f3.C2734h;
import p124i4.C3102d;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior.class */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    public final C2734h f6959c = new C2734h(75, 150);

    /* renamed from: d */
    public final C2734h f6960d = new C2734h(0, 150);

    /* renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior$a.class */
    public class C1847a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f6961a;

        /* renamed from: b */
        public final /* synthetic */ View f6962b;

        public C1847a(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
            this.f6961a = z;
            this.f6962b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f6961a) {
                this.f6962b.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f6961a) {
                this.f6962b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: b */
    public boolean mo4481b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: r */
    public boolean mo2987r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: u */
    public AnimatorSet mo4480u(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        C2734h c2734h = z ? this.f6959c : this.f6960d;
        if (z) {
            if (!z2) {
                view2.setAlpha(0.0f);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, 0.0f);
        }
        c2734h.m3190a(objectAnimator);
        arrayList.add(objectAnimator);
        AnimatorSet animatorSet = new AnimatorSet();
        C3102d.m2647E(animatorSet, arrayList);
        animatorSet.addListener(new C1847a(this, z, view2));
        return animatorSet;
    }
}
