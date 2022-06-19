package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/interpolator/view/animation/LookupTableInterpolator.class */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float[] fArr;
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((fArr.length - 1) * f), this.mValues.length - 2);
        float f2 = min;
        float f3 = this.mStepSize;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.mValues;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
