package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/animation/AnimatorSetCompat.class */
public class AnimatorSetCompat {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    public static void playTogether(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            c = Math.max((long) c, animator.getStartDelay() + animator.getDuration());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration((long) c);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }
}
