package com.google.android.material.p142a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;
/* renamed from: com.google.android.material.a.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/b.class */
public class C4506b {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    public static void m3854a(AnimatorSet animatorSet, List<Animator> list) {
        char c = 0;
        int size = list.size();
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
