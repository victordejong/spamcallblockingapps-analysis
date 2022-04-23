package androidx.transition;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.View;
/* JADX INFO: Access modifiers changed from: private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$e.class */
public class ChangeTransform$e {

    /* renamed from: a */
    private final Matrix f2652a = new Matrix();

    /* renamed from: b */
    private final View f2653b;

    /* renamed from: c */
    private final float[] f2654c;

    /* renamed from: d */
    private float f2655d;

    /* renamed from: e */
    private float f2656e;

    ChangeTransform$e(View view, float[] fArr) {
        this.f2653b = view;
        float[] fArr2 = (float[]) fArr.clone();
        this.f2654c = fArr2;
        this.f2655d = fArr2[2];
        this.f2656e = fArr2[5];
        m12125b();
    }

    /* renamed from: b */
    private void m12125b() {
        float[] fArr = this.f2654c;
        fArr[2] = this.f2655d;
        fArr[5] = this.f2656e;
        this.f2652a.setValues(fArr);
        C0497j0.m12018f(this.f2653b, this.f2652a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public Matrix m12126a() {
        return this.f2652a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m12124c(PointF pointF) {
        this.f2655d = pointF.x;
        this.f2656e = pointF.y;
        m12125b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m12123d(float[] fArr) {
        System.arraycopy(fArr, 0, this.f2654c, 0, fArr.length);
        m12125b();
    }
}
