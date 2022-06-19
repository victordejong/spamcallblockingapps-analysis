package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/DrawingDelegate.class */
abstract class DrawingDelegate<S extends BaseProgressIndicatorSpec> {
    protected DrawableWithAnimatedVisibilityChange drawable;
    S spec;

    public DrawingDelegate(S s) {
        this.spec = s;
    }

    abstract void adjustCanvas(Canvas canvas, float f);

    public abstract void fillIndicator(Canvas canvas, Paint paint, float f, float f2, int i);

    public abstract void fillTrack(Canvas canvas, Paint paint);

    public abstract int getPreferredHeight();

    public abstract int getPreferredWidth();

    public void registerDrawable(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange) {
        this.drawable = drawableWithAnimatedVisibilityChange;
    }

    public void validateSpecAndAdjustCanvas(Canvas canvas, float f) {
        this.spec.validateSpec();
        adjustCanvas(canvas, f);
    }
}
