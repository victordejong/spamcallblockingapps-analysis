package com.google.android.exoplayer2.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
/* renamed from: com.google.android.exoplayer2.util.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/m.class */
public final class C5524m {
    /* renamed from: a */
    private static void m18764a(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            m18755j(GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        m18763b();
    }

    /* renamed from: b */
    public static void m18763b() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                C5526o.m18745c("GlUtil", "glError " + GLU.gluErrorString(glGetError));
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public static int m18762c(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        m18763b();
        m18764a(35633, str, glCreateProgram);
        m18764a(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            m18755j("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        m18763b();
        return glCreateProgram;
    }

    /* renamed from: d */
    public static int m18761d(String[] strArr, String[] strArr2) {
        return m18762c(TextUtils.join("\n", strArr), TextUtils.join("\n", strArr2));
    }

    /* renamed from: e */
    public static FloatBuffer m18760e(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    /* renamed from: f */
    public static FloatBuffer m18759f(float[] fArr) {
        return (FloatBuffer) m18760e(fArr.length).put(fArr).flip();
    }

    /* renamed from: g */
    public static int m18758g() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        m18763b();
        return iArr[0];
    }

    @TargetApi(24)
    /* renamed from: h */
    public static boolean m18757h(Context context) {
        int i = C5515h0.f17876a;
        if (i < 24) {
            return false;
        }
        if (i < 26 && ("samsung".equals(C5515h0.f17878c) || "XT1650".equals(C5515h0.f17879d))) {
            return false;
        }
        if (i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return false;
        }
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        boolean z = false;
        if (eglQueryString != null) {
            z = false;
            if (eglQueryString.contains("EGL_EXT_protected_content")) {
                z = true;
            }
        }
        return z;
    }

    @TargetApi(17)
    /* renamed from: i */
    public static boolean m18756i() {
        if (C5515h0.f17876a < 17) {
            return false;
        }
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        boolean z = false;
        if (eglQueryString != null) {
            z = false;
            if (eglQueryString.contains("EGL_KHR_surfaceless_context")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: j */
    private static void m18755j(String str) {
        C5526o.m18745c("GlUtil", str);
    }
}
