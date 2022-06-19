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
import java.util.List;
import p078c.p084c.p085a.p096b.p097m.C1898b;
import p078c.p084c.p085a.p096b.p097m.C1905i;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior.class */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c */
    private final C1905i f37639c = new C1905i(75, 150);

    /* renamed from: d */
    private final C1905i f37640d = new C1905i(0, 150);

    /* renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior$a.class */
    class C8354a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f37641a;

        /* renamed from: b */
        final /* synthetic */ View f37642b;

        C8354a(boolean z, View view) {
            FabTransformationScrimBehavior.this = r4;
            this.f37641a = z;
            this.f37642b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f37641a) {
                this.f37642b.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f37641a) {
                this.f37642b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: K */
    private void m3802K(View view, boolean z, boolean z2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimator;
        C1905i c1905i = z ? this.f37639c : this.f37640d;
        if (z) {
            if (!z2) {
                view.setAlpha(0.0f);
            }
            objectAnimator = ObjectAnimator.ofFloat(view, View.ALPHA, 1.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f);
        }
        c1905i.m28727a(objectAnimator);
        list.add(objectAnimator);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: D */
    public boolean mo3804D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.mo3804D(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: J */
    protected AnimatorSet mo3803J(View view, View view2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        m3802K(view2, z, z2, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        C1898b.m28749a(animatorSet, arrayList);
        animatorSet.addListener(new C8354a(z, view2));
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: e */
    public boolean mo3801e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }
}
