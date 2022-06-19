package p301z0;

import android.view.animation.Interpolator;
import androidx.recyclerview.widget.C0608b;
/* renamed from: z0.d */
/* loaded from: classes-dex2jar.jar:z0/d.class */
public abstract class AbstractanimationInterpolatorC5022d implements Interpolator {

    /* renamed from: a */
    public final float[] f15277a;

    /* renamed from: b */
    public final float f15278b;

    public AbstractanimationInterpolatorC5022d(float[] fArr) {
        this.f15277a = fArr;
        this.f15278b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f15277a.length - 2);
        float f2 = min;
        float f3 = this.f15278b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f15277a;
        return C0608b.m7621n(fArr2[min + 1], fArr2[min], f4, fArr2[min]);
    }
}
