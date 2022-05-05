package androidx.core.view.animation;

import android.os.Build;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes-dex2jar.jar:androidx/core/view/animation/PathInterpolatorCompat.class */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    /* renamed from: a */
    public static Interpolator m18949a(float f, float f2, float f3, float f4) {
        return Build.VERSION.SDK_INT >= 21 ? new PathInterpolator(f, f2, f3, f4) : new PathInterpolatorApi14(f, f2, f3, f4);
    }
}
