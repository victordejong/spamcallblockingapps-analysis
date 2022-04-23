package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import android.opengl.GLU;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/j.class */
public final class j {
    private j() {
    }

    public static int a(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        a();
        a(35633, str, glCreateProgram);
        a(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            n.b("GlUtil", "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(glCreateProgram));
        }
        a();
        return glCreateProgram;
    }

    private static FloatBuffer a(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer a(float[] fArr) {
        return (FloatBuffer) a(fArr.length).put(fArr).flip();
    }

    public static void a() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                n.b("GlUtil", "glError " + GLU.gluErrorString(glGetError));
            } else {
                return;
            }
        }
    }

    private static void a(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            n.b("GlUtil", GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        a();
    }
}
