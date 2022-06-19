package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: a */
    private AnimatorSet f54270a;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public boolean mo9834a(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f54270a;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet mo9837b = mo9837b(view, view2, z, z3);
        this.f54270a = mo9837b;
        mo9837b.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f54270a = null;
            }
        });
        this.f54270a.start();
        if (!z2) {
            this.f54270a.end();
            return true;
        }
        return true;
    }

    /* renamed from: b */
    protected abstract AnimatorSet mo9837b(View view, View view2, boolean z, boolean z2);
}
