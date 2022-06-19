package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import java.util.ArrayList;
/* renamed from: androidx.j.a */
/* loaded from: classes-dex2jar.jar:androidx/j/a.class */
class C0758a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.j.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/a$a.class */
    public interface AbstractC0759a {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* renamed from: a */
    public static void m19503a(Animator animator) {
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
            if (animatorListener instanceof AbstractC0759a) {
                ((AbstractC0759a) animatorListener).onAnimationPause(animator);
            }
        }
    }

    /* renamed from: a */
    public static void m19502a(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        if (Build.VERSION.SDK_INT >= 19) {
            animator.addPauseListener(animatorListenerAdapter);
        }
    }

    /* renamed from: b */
    public static void m19501b(Animator animator) {
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
            if (animatorListener instanceof AbstractC0759a) {
                ((AbstractC0759a) animatorListener).onAnimationResume(animator);
            }
        }
    }
}
