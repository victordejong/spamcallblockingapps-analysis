package androidx.media2.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/a.class */
final class a {
    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimatorSet a(float f, float f2, View[] viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet.Builder play = animatorSet.play(a(f, f2, viewArr[0]));
        for (int i = 1; i < 6; i++) {
            play.with(a(f, f2, viewArr[i]));
        }
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ObjectAnimator a(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }
}
