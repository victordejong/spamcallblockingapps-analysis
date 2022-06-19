package androidx.transition;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$e.class */
public class ChangeTransform$e {

    /* renamed from: a */
    public final Matrix f1510a = new Matrix();

    /* renamed from: b */
    public final View f1511b;

    /* renamed from: c */
    public final float[] f1512c;

    /* renamed from: d */
    public float f1513d;

    /* renamed from: e */
    public float f1514e;

    public ChangeTransform$e(View view, float[] fArr) {
        this.f1511b = view;
        float[] fArr2 = (float[]) fArr.clone();
        this.f1512c = fArr2;
        this.f1513d = fArr2[2];
        this.f1514e = fArr2[5];
        m6000b();
    }

    /* renamed from: a */
    public Matrix m6001a() {
        return this.f1510a;
    }

    /* renamed from: b */
    public final void m6000b() {
        float[] fArr = this.f1512c;
        fArr[2] = this.f1513d;
        fArr[5] = this.f1514e;
        this.f1510a.setValues(fArr);
        i30.f(this.f1511b, this.f1510a);
    }

    /* renamed from: c */
    public void m5999c(PointF pointF) {
        this.f1513d = pointF.x;
        this.f1514e = pointF.y;
        m6000b();
    }

    /* renamed from: d */
    public void m5998d(float[] fArr) {
        System.arraycopy(fArr, 0, this.f1512c, 0, fArr.length);
        m6000b();
    }
}
