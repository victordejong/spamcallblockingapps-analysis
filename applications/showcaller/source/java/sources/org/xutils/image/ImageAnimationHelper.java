package org.xutils.image;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import java.lang.reflect.Method;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageAnimationHelper.class */
public final class ImageAnimationHelper {

    /* renamed from: a */
    private static final Method f40799a;

    static {
        Method method;
        try {
            method = Animation.class.getDeclaredMethod("clone", new Class[0]);
            method.setAccessible(true);
        } catch (Throwable th) {
            LogUtil.m252w(th.getMessage(), th);
            method = null;
        }
        f40799a = method;
    }

    private ImageAnimationHelper() {
    }

    public static void animationDisplay(ImageView imageView, Drawable drawable, Animation animation) {
        imageView.setImageDrawable(drawable);
        Method method = f40799a;
        if (method == null || animation == null) {
            imageView.startAnimation(animation);
            return;
        }
        try {
            imageView.startAnimation((Animation) method.invoke(animation, new Object[0]));
        } catch (Throwable th) {
            imageView.startAnimation(animation);
        }
    }

    public static void fadeInDisplay(ImageView imageView, Drawable drawable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        imageView.setImageDrawable(drawable);
        imageView.startAnimation(alphaAnimation);
    }
}
