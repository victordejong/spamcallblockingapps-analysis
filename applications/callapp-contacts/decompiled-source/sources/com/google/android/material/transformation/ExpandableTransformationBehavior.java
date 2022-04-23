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

    /* renamed from: a  reason: collision with root package name */
    private AnimatorSet f31001a;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    public boolean a(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f31001a;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet b2 = b(view, view2, z, z3);
        this.f31001a = b2;
        b2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f31001a = null;
            }
        });
        this.f31001a.start();
        if (z2) {
            return true;
        }
        this.f31001a.end();
        return true;
    }

    protected abstract AnimatorSet b(View view, View view2, boolean z, boolean z2);
}
