package android.support.v4.view.b;

import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/b/b.class */
abstract class b implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f224a;

    /* renamed from: b  reason: collision with root package name */
    private final float f225b;

    public b(float[] fArr) {
        this.f224a = fArr;
        this.f225b = 1.0f / (this.f224a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = 1.0f;
        if (f < 1.0f) {
            if (f <= 0.0f) {
                f2 = 0.0f;
            } else {
                int min = Math.min((int) ((this.f224a.length - 1) * f), this.f224a.length - 2);
                float f3 = (f - (min * this.f225b)) / this.f225b;
                f2 = ((this.f224a[min + 1] - this.f224a[min]) * f3) + this.f224a[min];
            }
        }
        return f2;
    }
}
