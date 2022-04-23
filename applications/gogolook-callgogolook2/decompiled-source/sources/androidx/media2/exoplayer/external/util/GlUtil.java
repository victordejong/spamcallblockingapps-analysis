package androidx.media2.exoplayer.external.util;

import android.opengl.GLES20;
import android.opengl.GLU;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/GlUtil.class */
public final class GlUtil {
    public static final String TAG = "GlUtil";

    public static void addShader(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
            StringBuilder sb = new StringBuilder(String.valueOf(glGetShaderInfoLog).length() + 10 + String.valueOf(str).length());
            sb.append(glGetShaderInfoLog);
            sb.append(", source: ");
            sb.append(str);
            throwGlError(sb.toString());
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        checkGlError();
    }

    public static void checkGlError() {
        int i = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                String valueOf = String.valueOf(GLU.gluErrorString(i));
                Log.m37487e(TAG, valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
                i = glGetError;
            } else {
                return;
            }
        }
    }

    public static int compileProgram(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        checkGlError();
        addShader(35633, str, glCreateProgram);
        addShader(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            String valueOf = String.valueOf(GLES20.glGetProgramInfoLog(glCreateProgram));
            throwGlError(valueOf.length() != 0 ? "Unable to link shader program: \n".concat(valueOf) : new String("Unable to link shader program: \n"));
        }
        checkGlError();
        return glCreateProgram;
    }

    public static int compileProgram(String[] strArr, String[] strArr2) {
        return compileProgram(TextUtils.join("\n", strArr), TextUtils.join("\n", strArr2));
    }

    public static FloatBuffer createBuffer(int i) {
        return ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer createBuffer(float[] fArr) {
        return (FloatBuffer) createBuffer(fArr.length).put(fArr).flip();
    }

    public static int createExternalTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, IntBuffer.wrap(iArr));
        GLES20.glBindTexture(36197, iArr[0]);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError();
        return iArr[0];
    }

    public static void throwGlError(String str) {
        Log.m37487e(TAG, str);
    }
}
