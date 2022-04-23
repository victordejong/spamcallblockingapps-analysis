package p012b.p076s.p118e;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
/* renamed from: b.s.e.a */
/* loaded from: classes-dex2jar.jar:b/s/e/a.class */
public class C1804a {
    /* renamed from: a */
    public static AnimatorSet m32072a(float f, float f2, View[] viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (viewArr.length == 0) {
            return animatorSet;
        }
        AnimatorSet.Builder play = animatorSet.play(m32073a(f, f2, viewArr[0]));
        for (int i = 1; i < viewArr.length; i++) {
            play.with(m32073a(f, f2, viewArr[i]));
        }
        return animatorSet;
    }

    /* renamed from: a */
    public static ObjectAnimator m32073a(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }
}
