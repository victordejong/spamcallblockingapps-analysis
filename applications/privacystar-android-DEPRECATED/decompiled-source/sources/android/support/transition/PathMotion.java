package android.support.transition;

import android.content.Context;
import android.graphics.Path;
import android.util.AttributeSet;
/* loaded from: classes-dex2jar.jar:android/support/transition/PathMotion.class */
public abstract class PathMotion {
    public PathMotion() {
    }

    public PathMotion(Context context, AttributeSet attributeSet) {
    }

    public abstract Path getPath(float f, float f2, float f3, float f4);
}
