package androidx.p033f.p034a.p035a;

import android.view.animation.Interpolator;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.f.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/d.class */
abstract class AbstractanimationInterpolatorC0697d implements Interpolator {

    /* renamed from: a */
    private final float[] f2254a;

    /* renamed from: b */
    private final float f2255b;

    public AbstractanimationInterpolatorC0697d(float[] fArr) {
        this.f2254a = fArr;
        this.f2255b = 1.0f / (this.f2254a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float[] fArr;
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= FlexItem.FLEX_GROW_DEFAULT) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        int min = Math.min((int) ((fArr.length - 1) * f), this.f2254a.length - 2);
        float f2 = min;
        float f3 = this.f2255b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f2254a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
