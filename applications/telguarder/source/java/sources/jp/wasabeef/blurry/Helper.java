package jp.wasabeef.blurry;

import android.view.View;
import android.view.animation.AlphaAnimation;
/* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Helper.class */
final class Helper {
    Helper() {
    }

    public static void animate(View view, int i) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(i);
        view.startAnimation(alphaAnimation);
    }

    public static boolean hasZero(int... iArr) {
        for (int i : iArr) {
            if (i == 0) {
                return true;
            }
        }
        return false;
    }
}
