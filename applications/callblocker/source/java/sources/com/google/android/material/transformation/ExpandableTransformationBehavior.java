package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: a */
    private AnimatorSet f20889a;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public boolean mo2186a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f20889a != null;
        if (z3) {
            this.f20889a.cancel();
        }
        this.f20889a = mo2189b(view, view2, z, z3);
        this.f20889a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.f20889a = null;
            }
        });
        this.f20889a.start();
        if (!z2) {
            this.f20889a.end();
            return true;
        }
        return true;
    }

    /* renamed from: b */
    protected abstract AnimatorSet mo2189b(View view, View view2, boolean z, boolean z2);
}
