package com.google.android.exoplayer2.video.p347a;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.C11596ac;
/* renamed from: com.google.android.exoplayer2.video.a.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/c.class */
public final class C11643c {

    /* renamed from: a */
    public final float[] f38785a = new float[16];

    /* renamed from: b */
    public final float[] f38786b = new float[16];

    /* renamed from: c */
    public final C11596ac<float[]> f38787c = new C11596ac<>();

    /* renamed from: d */
    public boolean f38788d;

    /* renamed from: a */
    public static void m19745a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }
}
