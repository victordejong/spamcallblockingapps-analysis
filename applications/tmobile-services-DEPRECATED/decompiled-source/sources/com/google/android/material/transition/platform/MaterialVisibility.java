package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.transition.platform.VisibilityAnimatorProvider;
import java.util.ArrayList;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/MaterialVisibility.class */
abstract class MaterialVisibility<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: f */
    private final P f11892f;
    @Nullable

    /* renamed from: g */
    private VisibilityAnimatorProvider f11893g;

    /* JADX INFO: Access modifiers changed from: protected */
    public MaterialVisibility(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f11892f = p;
        this.f11893g = visibilityAnimatorProvider;
        setInterpolator(AnimationUtils.f9924b);
    }

    /* renamed from: a */
    private Animator m8484a(ViewGroup viewGroup, View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        Animator a = z ? this.f11892f.mo8454a(viewGroup, view) : this.f11892f.mo8453b(viewGroup, view);
        if (a != null) {
            arrayList.add(a);
        }
        VisibilityAnimatorProvider visibilityAnimatorProvider = this.f11893g;
        if (visibilityAnimatorProvider != null) {
            Animator a2 = z ? visibilityAnimatorProvider.mo8454a(viewGroup, view) : visibilityAnimatorProvider.mo8453b(viewGroup, view);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        AnimatorSetCompat.m10767a(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m8484a(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m8484a(viewGroup, view, false);
    }
}
