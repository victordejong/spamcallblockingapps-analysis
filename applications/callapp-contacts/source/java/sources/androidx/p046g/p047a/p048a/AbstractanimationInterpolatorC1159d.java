package androidx.p046g.p047a.p048a;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.g.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/g/a/a/d.class */
abstract class AbstractanimationInterpolatorC1159d implements Interpolator {

    /* renamed from: a */
    private final float[] f4540a;

    /* renamed from: b */
    private final float f4541b;

    public AbstractanimationInterpolatorC1159d(float[] fArr) {
        this.f4540a = fArr;
        this.f4541b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float[] fArr;
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int min = Math.min((int) ((fArr.length - 1) * f), this.f4540a.length - 2);
        float f2 = min;
        float f3 = this.f4541b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f4540a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
