package p000;

import android.animation.TypeEvaluator;
/* renamed from: c20 */
/* loaded from: classes-dex2jar.jar:c20.class */
public class c20 implements TypeEvaluator<float[]> {

    /* renamed from: a */
    public float[] f2131a;

    public c20(float[] fArr) {
        this.f2131a = fArr;
    }

    /* renamed from: a */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f2131a;
        float[] fArr4 = fArr3;
        if (fArr3 == null) {
            fArr4 = new float[fArr.length];
        }
        for (int i = 0; i < fArr4.length; i++) {
            float f2 = fArr[i];
            fArr4[i] = f2 + ((fArr2[i] - f2) * f);
        }
        return fArr4;
    }
}
