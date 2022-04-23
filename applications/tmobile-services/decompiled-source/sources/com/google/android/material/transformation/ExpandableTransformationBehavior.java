package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    @Nullable

    /* renamed from: b */
    private AnimatorSet f11620b;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: H */
    public boolean mo8650H(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f11620b != null;
        if (z3) {
            this.f11620b.cancel();
        }
        AnimatorSet J = mo8653J(view, view2, z, z3);
        this.f11620b = J;
        J.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f11620b = null;
            }
        });
        this.f11620b.start();
        if (z2) {
            return true;
        }
        this.f11620b.end();
        return true;
    }

    @NonNull
    /* renamed from: J */
    protected abstract AnimatorSet mo8653J(View view, View view2, boolean z, boolean z2);
}
