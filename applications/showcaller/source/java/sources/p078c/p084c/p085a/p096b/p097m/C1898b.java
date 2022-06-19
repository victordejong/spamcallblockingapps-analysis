package p078c.p084c.p085a.p096b.p097m;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import java.util.List;
/* renamed from: c.c.a.b.m.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/b.class */
public class C1898b {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    public static void m28749a(AnimatorSet animatorSet, List<Animator> list) {
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
