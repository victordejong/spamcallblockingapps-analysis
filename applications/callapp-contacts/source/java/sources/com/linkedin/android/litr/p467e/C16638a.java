package com.linkedin.android.litr.p467e;

import android.opengl.GLES20;
import android.util.Log;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.linkedin.android.litr.e.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/a.class */
public class C16638a {

    /* renamed from: a */
    private static final String f58547a = "a";

    /* renamed from: a */
    public static int m6839a(int i, int i2) {
        int glCreateProgram = GLES20.glCreateProgram();
        m6837a("glCreateProgram");
        if (glCreateProgram == 0) {
            Log.e(f58547a, "Could not create glProgram");
        }
        GLES20.glAttachShader(glCreateProgram, i);
        m6837a("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, i2);
        m6837a("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        int i3 = glCreateProgram;
        if (iArr[0] != 1) {
            String str = f58547a;
            Log.e(str, "Could not link glProgram: ");
            Log.e(str, GLES20.glGetProgramInfoLog(glCreateProgram));
            GLES20.glDeleteProgram(glCreateProgram);
            i3 = 0;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m6838a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        m6837a("glCreateShader type=".concat(String.valueOf(i)));
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        int i2 = glCreateShader;
        if (iArr[0] == 0) {
            String str2 = f58547a;
            Log.e(str2, "Could not compile shader " + i + ":");
            StringBuilder sb = new StringBuilder(StringUtils.SPACE);
            sb.append(GLES20.glGetShaderInfoLog(glCreateShader));
            Log.e(str2, sb.toString());
            GLES20.glDeleteShader(glCreateShader);
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: a */
    public static void m6837a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        String str2 = f58547a;
        Log.e(str2, str + ": glError " + glGetError);
        throw new RuntimeException(str + ": glError " + glGetError);
    }
}
