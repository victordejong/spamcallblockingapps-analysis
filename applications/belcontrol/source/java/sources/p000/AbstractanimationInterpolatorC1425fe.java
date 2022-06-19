package p000;

import android.view.animation.Interpolator;
/* renamed from: fe */
/* loaded from: classes-dex2jar.jar:fe.class */
public abstract class AbstractanimationInterpolatorC1425fe implements Interpolator {

    /* renamed from: a */
    public final float[] f6611a;

    /* renamed from: b */
    public final float f6612b;

    public AbstractanimationInterpolatorC1425fe(float[] fArr) {
        this.f6611a = fArr;
        this.f6612b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f6611a.length - 2);
        float f2 = min;
        float f3 = this.f6612b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f6611a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
