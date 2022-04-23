package androidx.transition;

import android.animation.TypeEvaluator;
/* loaded from: classes-dex2jar.jar:androidx/transition/d.class */
final class d implements TypeEvaluator<float[]> {

    /* renamed from: a  reason: collision with root package name */
    private float[] f5792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(float[] fArr) {
        this.f5792a = fArr;
    }

    @Override // android.animation.TypeEvaluator
    public final /* bridge */ /* synthetic */ float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = fArr;
        float[] fArr4 = fArr2;
        float[] fArr5 = this.f5792a;
        float[] fArr6 = fArr5;
        if (fArr5 == null) {
            fArr6 = new float[fArr3.length];
        }
        for (int i = 0; i < fArr6.length; i++) {
            float f2 = fArr3[i];
            fArr6[i] = f2 + ((fArr4[i] - f2) * f);
        }
        return fArr6;
    }
}
