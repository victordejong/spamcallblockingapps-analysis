package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.Nullable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/MotionStrategy.class */
public interface MotionStrategy {
    /* renamed from: a */
    void mo9639a();

    @AnimatorRes
    /* renamed from: b */
    int mo9638b();

    /* renamed from: c */
    void mo9637c();

    @Nullable
    /* renamed from: d */
    MotionSpec mo9636d();

    /* renamed from: e */
    boolean mo9635e();

    /* renamed from: f */
    void mo9634f();

    /* renamed from: g */
    void mo9633g(@Nullable MotionSpec motionSpec);

    /* renamed from: h */
    AnimatorSet mo9632h();

    /* renamed from: i */
    List<Animator.AnimatorListener> mo9631i();

    /* renamed from: j */
    void mo9630j(@Nullable ExtendedFloatingActionButton.OnChangedCallback onChangedCallback);

    void onAnimationStart(Animator animator);
}
