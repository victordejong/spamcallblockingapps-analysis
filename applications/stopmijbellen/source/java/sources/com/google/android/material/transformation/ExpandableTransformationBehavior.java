package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b */
    public AnimatorSet f6946b;

    /* renamed from: com.google.android.material.transformation.ExpandableTransformationBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior$a.class */
    public class C1844a extends AnimatorListenerAdapter {
        public C1844a() {
            ExpandableTransformationBehavior.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f6946b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: t */
    public boolean mo4478t(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f6946b;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet mo4480u = mo4480u(view, view2, z, z3);
        this.f6946b = mo4480u;
        mo4480u.addListener(new C1844a());
        this.f6946b.start();
        if (!z2) {
            this.f6946b.end();
            return true;
        }
        return true;
    }

    /* renamed from: u */
    public abstract AnimatorSet mo4480u(View view, View view2, boolean z, boolean z2);
}
