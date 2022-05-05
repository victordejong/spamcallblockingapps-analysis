package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/BaseMotionStrategy.class */
abstract class BaseMotionStrategy implements MotionStrategy {

    /* renamed from: a */
    private final Context f10647a;
    @NonNull

    /* renamed from: b */
    private final ExtendedFloatingActionButton f10648b;

    /* renamed from: c */
    private final ArrayList<Animator.AnimatorListener> f10649c = new ArrayList<>();

    /* renamed from: d */
    private final AnimatorTracker f10650d;
    @Nullable

    /* renamed from: e */
    private MotionSpec f10651e;
    @Nullable

    /* renamed from: f */
    private MotionSpec f10652f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseMotionStrategy(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, AnimatorTracker animatorTracker) {
        this.f10648b = extendedFloatingActionButton;
        this.f10647a = extendedFloatingActionButton.getContext();
        this.f10650d = animatorTracker;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    /* renamed from: a */
    public void mo9639a() {
        this.f10650d.m9783b();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @Nullable
    /* renamed from: d */
    public MotionSpec mo9636d() {
        return this.f10652f;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    /* renamed from: f */
    public void mo9634f() {
        this.f10650d.m9783b();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    /* renamed from: g */
    public final void mo9633g(@Nullable MotionSpec motionSpec) {
        this.f10652f = motionSpec;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    /* renamed from: h */
    public AnimatorSet mo9632h() {
        return m9781k(m9780l());
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @NonNull
    /* renamed from: i */
    public final List<Animator.AnimatorListener> mo9631i() {
        return this.f10649c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: k */
    public AnimatorSet m9781k(@NonNull MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        if (motionSpec.m10749j("opacity")) {
            arrayList.add(motionSpec.m10753f("opacity", this.f10648b, View.ALPHA));
        }
        if (motionSpec.m10749j("scale")) {
            arrayList.add(motionSpec.m10753f("scale", this.f10648b, View.SCALE_Y));
            arrayList.add(motionSpec.m10753f("scale", this.f10648b, View.SCALE_X));
        }
        if (motionSpec.m10749j("width")) {
            arrayList.add(motionSpec.m10753f("width", this.f10648b, ExtendedFloatingActionButton.f10671F));
        }
        if (motionSpec.m10749j("height")) {
            arrayList.add(motionSpec.m10753f("height", this.f10648b, ExtendedFloatingActionButton.f10672G));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.m10767a(animatorSet, arrayList);
        return animatorSet;
    }

    /* renamed from: l */
    public final MotionSpec m9780l() {
        MotionSpec motionSpec = this.f10652f;
        if (motionSpec != null) {
            return motionSpec;
        }
        if (this.f10651e == null) {
            this.f10651e = MotionSpec.m10755d(this.f10647a, mo9638b());
        }
        MotionSpec motionSpec2 = this.f10651e;
        Preconditions.m19337d(motionSpec2);
        return motionSpec2;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f10650d.m9782c(animator);
    }
}
