package p1727n3.p1863t.p1864a.p1865a;

import android.view.animation.Interpolator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.t.a.a.d */
/* loaded from: classes-dex2jar.jar:n3/t/a/a/d.class */
public abstract class AbstractanimationInterpolatorC26983d implements Interpolator {

    /* renamed from: a */
    public final float[] f75492a;

    /* renamed from: b */
    public final float f75493b;

    public AbstractanimationInterpolatorC26983d(float[] fArr) {
        this.f75492a = fArr;
        this.f75493b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f75492a.length - 2);
        float f2 = min;
        float f3 = this.f75493b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f75492a;
        return C22128a.m8646a(fArr2[min + 1], fArr2[min], f4, fArr2[min]);
    }
}
