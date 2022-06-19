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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.p364a.C14390b;
import com.google.android.material.p364a.C14397i;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior.class */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* renamed from: a */
    private final C14397i f54291a = new C14397i(75, 150);

    /* renamed from: b */
    private final C14397i f54292b = new C14397i(0, 150);

    public FabTransformationScrimBehavior() {
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9838a(View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* renamed from: b */
    protected final AnimatorSet mo9837b(View view, final View view2, final boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        C14397i c14397i = z ? this.f54291a : this.f54292b;
        if (z) {
            if (!z2) {
                view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, BitmapDescriptorFactory.HUE_RED);
        }
        c14397i.m11321a((Animator) objectAnimator);
        arrayList.add(objectAnimator);
        AnimatorSet animatorSet = new AnimatorSet();
        C14390b.m11337a(animatorSet, arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationScrimBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (!z) {
                    view2.setVisibility(4);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                }
            }
        });
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public final boolean mo9836b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.mo9836b(coordinatorLayout, view, motionEvent);
    }
}
