package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.transition.VisibilityAnimatorProvider;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialVisibility.class */
abstract class MaterialVisibility<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: Q */
    private final P f11754Q;
    @Nullable

    /* renamed from: R */
    private VisibilityAnimatorProvider f11755R;

    /* JADX INFO: Access modifiers changed from: protected */
    public MaterialVisibility(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f11754Q = p;
        this.f11755R = visibilityAnimatorProvider;
        mo16735h0(AnimationUtils.f9924b);
    }

    /* renamed from: x0 */
    private Animator m8585x0(ViewGroup viewGroup, View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        Animator a = z ? this.f11754Q.mo8552a(viewGroup, view) : this.f11754Q.mo8551b(viewGroup, view);
        if (a != null) {
            arrayList.add(a);
        }
        VisibilityAnimatorProvider visibilityAnimatorProvider = this.f11755R;
        if (visibilityAnimatorProvider != null) {
            Animator a2 = z ? visibilityAnimatorProvider.mo8552a(viewGroup, view) : visibilityAnimatorProvider.mo8551b(viewGroup, view);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        AnimatorSetCompat.m10767a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // androidx.transition.Visibility
    /* renamed from: s0 */
    public Animator mo8587s0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m8585x0(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: u0 */
    public Animator mo8586u0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m8585x0(viewGroup, view, false);
    }
}
