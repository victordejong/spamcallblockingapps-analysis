package com.google.android.exoplayer2.video.p261r;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.C5507d0;
/* renamed from: com.google.android.exoplayer2.video.r.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/c.class */
public final class C5573c {

    /* renamed from: a */
    private final float[] f18101a = new float[16];

    /* renamed from: b */
    private final float[] f18102b = new float[16];

    /* renamed from: c */
    private final C5507d0<float[]> f18103c = new C5507d0<>();

    /* renamed from: d */
    private boolean f18104d;

    /* renamed from: a */
    public static void m18502a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }

    /* renamed from: b */
    private static void m18501b(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f2 = -fArr2[1];
        float f3 = -fArr2[2];
        float length = Matrix.length(f, f2, f3);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
        } else {
            Matrix.setIdentityM(fArr, 0);
        }
    }

    /* renamed from: c */
    public boolean m18500c(float[] fArr, long j) {
        float[] m18916i = this.f18103c.m18916i(j);
        if (m18916i == null) {
            return false;
        }
        m18501b(this.f18102b, m18916i);
        if (!this.f18104d) {
            m18502a(this.f18101a, this.f18102b);
            this.f18104d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.f18101a, 0, this.f18102b, 0);
        return true;
    }

    /* renamed from: d */
    public void m18499d() {
        this.f18103c.m18922c();
        this.f18104d = false;
    }

    /* renamed from: e */
    public void m18498e(long j, float[] fArr) {
        this.f18103c.m18924a(j, fArr);
    }
}
