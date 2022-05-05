package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/interpolator/view/animation/LookupTableInterpolator.class */
abstract class LookupTableInterpolator implements Interpolator {

    /* renamed from: a */
    private final float[] f3942a;

    /* renamed from: b */
    private final float f3943b;

    /* JADX INFO: Access modifiers changed from: protected */
    public LookupTableInterpolator(float[] fArr) {
        this.f3942a = fArr;
        this.f3943b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f3942a.length - 2);
        float f2 = min;
        float f3 = this.f3943b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f3942a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
