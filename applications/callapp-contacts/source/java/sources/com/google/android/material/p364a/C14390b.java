package com.google.android.material.p364a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;
/* renamed from: com.google.android.material.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/b.class */
public final class C14390b {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    public static void m11337a(AnimatorSet animatorSet, List<Animator> list) {
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
