package androidx.p032e.p033a.p034a;

import android.view.animation.Interpolator;
/* renamed from: androidx.e.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/e/a/a/d.class */
abstract class AbstractanimationInterpolatorC0651d implements Interpolator {

    /* renamed from: a */
    private final float[] f2249a;

    /* renamed from: b */
    private final float f2250b;

    public AbstractanimationInterpolatorC0651d(float[] fArr) {
        this.f2249a = fArr;
        this.f2250b = 1.0f / (this.f2249a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2;
        if (f >= 1.0f) {
            f2 = 1.0f;
        } else if (f <= 0.0f) {
            f2 = 0.0f;
        } else {
            int min = Math.min((int) ((this.f2249a.length - 1) * f), this.f2249a.length - 2);
            f2 = ((this.f2249a[min + 1] - this.f2249a[min]) * ((f - (min * this.f2250b)) / this.f2250b)) + this.f2249a[min];
        }
        return f2;
    }
}
