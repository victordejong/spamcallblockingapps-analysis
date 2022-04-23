package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/transition/a.class */
final class a {

    /* renamed from: androidx.transition.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/transition/a$a.class */
    interface AbstractC0118a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }
}
