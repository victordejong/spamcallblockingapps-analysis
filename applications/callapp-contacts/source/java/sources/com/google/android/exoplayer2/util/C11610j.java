package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import android.opengl.GLU;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* renamed from: com.google.android.exoplayer2.util.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/j.class */
public final class C11610j {
    private C11610j() {
    }

    /* renamed from: a */
    public static int m19889a(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        m19892a();
        m19890a(35633, str, glCreateProgram);
        m19890a(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            C11617n.m19858b("GlUtil", "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        m19892a();
        return glCreateProgram;
    }

    /* renamed from: a */
    private static FloatBuffer m19891a(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    /* renamed from: a */
    public static FloatBuffer m19888a(float[] fArr) {
        return (FloatBuffer) m19891a(fArr.length).put(fArr).flip();
    }

    /* renamed from: a */
    public static void m19892a() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                C11617n.m19858b("GlUtil", "glError " + GLU.gluErrorString(glGetError));
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m19890a(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            C11617n.m19858b("GlUtil", GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        m19892a();
    }
}
