package android.support.p001v4.view.animation;

import android.graphics.Path;
import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* renamed from: android.support.v4.view.animation.PathInterpolatorCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/view/animation/PathInterpolatorCompat.class */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    public static Interpolator create(float f, float f2) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(f, f2) : new PathInterpolatorApi14(f, f2);
    }

    public static Interpolator create(float f, float f2, float f3, float f4) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(f, f2, f3, f4) : new PathInterpolatorApi14(f, f2, f3, f4);
    }

    public static Interpolator create(Path path) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(path) : new PathInterpolatorApi14(path);
    }
}
