package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import java.util.ArrayList;
/* renamed from: androidx.transition.a */
/* loaded from: classes-dex2jar.jar:androidx/transition/a.class */
class C0485a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/a$a.class */
    public interface AbstractC0486a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* renamed from: a */
    public static void m12054a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }

    /* renamed from: b */
    public static void m12053b(Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.pause();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners == null) {
            return;
        }
        int size = listeners.size();
        for (int i = 0; i < size; i++) {
            Animator.AnimatorListener animatorListener = listeners.get(i);
            if (animatorListener instanceof AbstractC0486a) {
                ((AbstractC0486a) animatorListener).onAnimationPause(animator);
            }
        }
    }

    /* renamed from: c */
    public static void m12052c(Animator animator) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.resume();
            return;
        }
        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
        if (listeners == null) {
            return;
        }
        int size = listeners.size();
        for (int i = 0; i < size; i++) {
            Animator.AnimatorListener animatorListener = listeners.get(i);
            if (animatorListener instanceof AbstractC0486a) {
                ((AbstractC0486a) animatorListener).onAnimationResume(animator);
            }
        }
    }
}
