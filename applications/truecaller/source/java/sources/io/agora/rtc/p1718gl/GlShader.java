package io.agora.rtc.p1718gl;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: io.agora.rtc.gl.GlShader */
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/gl/GlShader.class */
public class GlShader {
    private static final String TAG = "GlShader";
    private int program;

    public GlShader(String str, String str2) {
        int compileShader = compileShader(35633, str);
        int compileShader2 = compileShader(35632, str2);
        int glCreateProgram = GLES20.glCreateProgram();
        this.program = glCreateProgram;
        if (glCreateProgram == 0) {
            StringBuilder m8728C = C22128a.m8728C("glCreateProgram() failed. GLES20 error: ");
            m8728C.append(GLES20.glGetError());
            throw new RuntimeException(m8728C.toString());
        }
        GLES20.glAttachShader(glCreateProgram, compileShader);
        GLES20.glAttachShader(this.program, compileShader2);
        GLES20.glLinkProgram(this.program);
        int[] iArr = {0};
        GLES20.glGetProgramiv(this.program, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GLES20.glGetProgramInfoLog(this.program);
            throw new RuntimeException(GLES20.glGetProgramInfoLog(this.program));
        }
        GLES20.glDeleteShader(compileShader);
        GLES20.glDeleteShader(compileShader2);
        GlUtil.checkNoGLES2Error("Creating GlShader");
    }

    private static int compileShader(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            StringBuilder m8728C = C22128a.m8728C("glCreateShader() failed. GLES20 error: ");
            m8728C.append(GLES20.glGetError());
            throw new RuntimeException(m8728C.toString());
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 1) {
            GlUtil.checkNoGLES2Error("compileShader");
            return glCreateShader;
        }
        GLES20.glGetShaderInfoLog(glCreateShader);
        throw new RuntimeException(GLES20.glGetShaderInfoLog(glCreateShader));
    }

    public int getAttribLocation(String str) {
        int i = this.program;
        if (i != -1) {
            int glGetAttribLocation = GLES20.glGetAttribLocation(i, str);
            if (glGetAttribLocation < 0) {
                throw new RuntimeException(C22128a.m8725C2("Could not locate '", str, "' in program"));
            }
            return glGetAttribLocation;
        }
        throw new RuntimeException("The program has been released");
    }

    public int getUniformLocation(String str) {
        int i = this.program;
        if (i != -1) {
            int glGetUniformLocation = GLES20.glGetUniformLocation(i, str);
            if (glGetUniformLocation < 0) {
                throw new RuntimeException(C22128a.m8725C2("Could not locate uniform '", str, "' in program"));
            }
            return glGetUniformLocation;
        }
        throw new RuntimeException("The program has been released");
    }

    public void release() {
        int i = this.program;
        if (i != -1) {
            GLES20.glDeleteProgram(i);
            this.program = -1;
        }
    }

    public void setVertexAttribArray(String str, int i, int i2, FloatBuffer floatBuffer) {
        if (this.program != -1) {
            int attribLocation = getAttribLocation(str);
            GLES20.glEnableVertexAttribArray(attribLocation);
            GLES20.glVertexAttribPointer(attribLocation, i, 5126, false, i2, (Buffer) floatBuffer);
            GlUtil.checkNoGLES2Error("setVertexAttribArray");
            return;
        }
        throw new RuntimeException("The program has been released");
    }

    public void setVertexAttribArray(String str, int i, FloatBuffer floatBuffer) {
        setVertexAttribArray(str, i, 0, floatBuffer);
    }

    public void useProgram() {
        int i = this.program;
        if (i != -1) {
            GLES20.glUseProgram(i);
            GlUtil.checkNoGLES2Error("glUseProgram");
            return;
        }
        throw new RuntimeException("The program has been released");
    }
}
