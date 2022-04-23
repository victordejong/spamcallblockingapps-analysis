package androidx.transition;

import android.animation.TypeEvaluator;
/* renamed from: androidx.transition.d */
/* loaded from: classes-dex2jar.jar:androidx/transition/d.class */
class C0489d implements TypeEvaluator<float[]> {

    /* renamed from: a */
    private float[] f2719a;

    C0489d(float[] fArr) {
        this.f2719a = fArr;
    }

    /* renamed from: a */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.f2719a;
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
