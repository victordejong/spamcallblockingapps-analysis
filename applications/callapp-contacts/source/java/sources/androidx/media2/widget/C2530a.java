package androidx.media2.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
/* renamed from: androidx.media2.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/a.class */
final class C2530a {
    private C2530a() {
    }

    /* renamed from: a */
    public static AnimatorSet m40734a(float f, float f2, View[] viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet.Builder play = animatorSet.play(m40735a(f, f2, viewArr[0]));
        for (int i = 1; i < 6; i++) {
            play.with(m40735a(f, f2, viewArr[i]));
        }
        return animatorSet;
    }

    /* renamed from: a */
    public static ObjectAnimator m40735a(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }
}
