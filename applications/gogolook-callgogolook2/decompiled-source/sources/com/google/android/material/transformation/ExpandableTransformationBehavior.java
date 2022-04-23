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
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    @Nullable

    /* renamed from: b */
    public AnimatorSet f7685b;

    /* renamed from: com.google.android.material.transformation.ExpandableTransformationBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior$a.class */
    public class C3656a extends AnimatorListenerAdapter {
        public C3656a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f7685b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    /* renamed from: a */
    public boolean mo31143a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f7685b != null;
        if (z3) {
            this.f7685b.cancel();
        }
        this.f7685b = mo31145b(view, view2, z, z3);
        this.f7685b.addListener(new C3656a());
        this.f7685b.start();
        if (z2) {
            return true;
        }
        this.f7685b.end();
        return true;
    }

    @NonNull
    /* renamed from: b */
    public abstract AnimatorSet mo31145b(View view, View view2, boolean z, boolean z2);
}
