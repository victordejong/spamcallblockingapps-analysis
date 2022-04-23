package com.google.android.exoplayer2.video.a;

import android.opengl.Matrix;
import com.google.android.exoplayer2.util.ac;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final float[] f22373a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    public final float[] f22374b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    public final ac<float[]> f22375c = new ac<>();

    /* renamed from: d  reason: collision with root package name */
    public boolean f22376d;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float sqrt = (float) Math.sqrt((fArr2[10] * fArr2[10]) + (fArr2[8] * fArr2[8]));
        fArr[0] = fArr2[10] / sqrt;
        fArr[2] = fArr2[8] / sqrt;
        fArr[8] = (-fArr2[8]) / sqrt;
        fArr[10] = fArr2[10] / sqrt;
    }
}
