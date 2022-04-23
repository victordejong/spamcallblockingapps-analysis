package androidx.g.a.a;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/g/a/a/d.class */
abstract class d implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f2407a;

    /* renamed from: b  reason: collision with root package name */
    private final float f2408b;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(float[] fArr) {
        this.f2407a = fArr;
        this.f2408b = 1.0f / (fArr.length - 1);
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
        int min = Math.min((int) ((fArr.length - 1) * f), this.f2407a.length - 2);
        float f2 = min;
        float f3 = this.f2408b;
        float f4 = (f - (f2 * f3)) / f3;
        float[] fArr2 = this.f2407a;
        return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
    }
}
