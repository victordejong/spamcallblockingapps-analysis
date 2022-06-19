package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import java.util.ArrayList;
/* renamed from: androidx.transition.a */
/* loaded from: classes-dex2jar.jar:androidx/transition/a.class */
class C1116a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/a$a.class */
    public interface AbstractC1117a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* renamed from: a */
    public static void m30941a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }

    /* renamed from: b */
    public static void m30940b(Animator animator) {
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
            if (animatorListener instanceof AbstractC1117a) {
                ((AbstractC1117a) animatorListener).onAnimationPause(animator);
            }
        }
    }

    /* renamed from: c */
    public static void m30939c(Animator animator) {
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
            if (animatorListener instanceof AbstractC1117a) {
                ((AbstractC1117a) animatorListener).onAnimationResume(animator);
            }
        }
    }
}
