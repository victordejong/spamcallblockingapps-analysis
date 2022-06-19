package p020b.p062n.p063a.p064a;

import android.view.animation.Interpolator;
/* renamed from: b.n.a.a.d */
/* loaded from: classes-dex2jar.jar:b/n/a/a/d.class */
abstract class AbstractanimationInterpolatorC1756d implements Interpolator {

    /* renamed from: a */
    private final float[] f6576a;

    /* renamed from: b */
    private final float f6577b;

    public AbstractanimationInterpolatorC1756d(float[] fArr) {
        this.f6576a = fArr;
        this.f6577b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f6576a.length - 2);
        float f2 = min;
        float f3 = this.f6577b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f6576a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
