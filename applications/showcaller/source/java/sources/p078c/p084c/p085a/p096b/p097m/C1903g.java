package p078c.p084c.p085a.p096b.p097m;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: c.c.a.b.m.g */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/g.class */
public class C1903g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    private final float[] f6823a = new float[9];

    /* renamed from: b */
    private final float[] f6824b = new float[9];

    /* renamed from: c */
    private final Matrix f6825c = new Matrix();

    /* renamed from: a */
    public Matrix mo4694a(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f6823a);
        matrix2.getValues(this.f6824b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f6824b;
            float f2 = fArr[i];
            float[] fArr2 = this.f6823a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f6825c.setValues(this.f6824b);
        return this.f6825c;
    }
}
