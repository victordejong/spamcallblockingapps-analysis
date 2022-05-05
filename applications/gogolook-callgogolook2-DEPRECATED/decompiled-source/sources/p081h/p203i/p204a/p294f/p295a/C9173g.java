package p081h.p203i.p204a.p294f.p295a;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
/* renamed from: h.i.a.f.a.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/g.class */
public class C9173g implements TypeEvaluator<Matrix> {

    /* renamed from: a */
    public final float[] f20889a = new float[9];

    /* renamed from: b */
    public final float[] f20890b = new float[9];

    /* renamed from: c */
    public final Matrix f20891c = new Matrix();

    /* renamed from: a */
    public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f20889a);
        matrix2.getValues(this.f20890b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f20890b;
            float f2 = fArr[i];
            float[] fArr2 = this.f20889a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f20891c.setValues(this.f20890b);
        return this.f20891c;
    }
}
