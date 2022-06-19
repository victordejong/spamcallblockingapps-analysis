package p193e.p1577m.p1578a.p1596c.p1637r1.p1638t;

import android.opengl.Matrix;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24769b0;
/* renamed from: e.m.a.c.r1.t.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/t/c.class */
public final class C24838c {

    /* renamed from: a */
    public final float[] f69655a = new float[16];

    /* renamed from: b */
    public final float[] f69656b = new float[16];

    /* renamed from: c */
    public final C24769b0<float[]> f69657c = new C24769b0<>();

    /* renamed from: d */
    public boolean f69658d;

    /* renamed from: a */
    public static void m4427a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[8] * fArr2[8]) + (fArr2[10] * fArr2[10]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }
}
