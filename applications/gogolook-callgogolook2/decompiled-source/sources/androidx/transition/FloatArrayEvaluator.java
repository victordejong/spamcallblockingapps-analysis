package androidx.transition;

import android.animation.TypeEvaluator;
/* loaded from: classes-dex2jar.jar:androidx/transition/FloatArrayEvaluator.class */
public class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    public float[] mArray;

    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
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
