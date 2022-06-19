package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: b */
    private AnimatorSet f37618b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.transformation.ExpandableTransformationBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior$a.class */
    public class C8348a extends AnimatorListenerAdapter {
        C8348a() {
            ExpandableTransformationBehavior.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f37618b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: H */
    public boolean mo3800H(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.f37618b;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet mo3803J = mo3803J(view, view2, z, z3);
        this.f37618b = mo3803J;
        mo3803J.addListener(new C8348a());
        this.f37618b.start();
        if (!z2) {
            this.f37618b.end();
            return true;
        }
        return true;
    }

    /* renamed from: J */
    protected abstract AnimatorSet mo3803J(View view, View view2, boolean z, boolean z2);
}
