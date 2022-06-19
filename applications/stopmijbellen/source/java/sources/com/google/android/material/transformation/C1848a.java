package com.google.android.material.transformation;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: com.google.android.material.transformation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/a.class */
public class C1848a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ View f6964a;

    public C1848a(FabTransformationBehavior fabTransformationBehavior, View view) {
        this.f6964a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f6964a.invalidate();
    }
}
