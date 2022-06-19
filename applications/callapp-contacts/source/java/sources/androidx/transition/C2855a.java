package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
/* renamed from: androidx.transition.a */
/* loaded from: classes-dex2jar.jar:androidx/transition/a.class */
final class C2855a {

    /* renamed from: androidx.transition.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/a$a.class */
    interface AbstractC2856a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    private C2855a() {
    }

    /* renamed from: a */
    public static void m39758a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }
}
