package p012b.p076s.p078b.p079a.p080a1;

import android.opengl.GLES20;
import android.opengl.GLU;
/* renamed from: b.s.b.a.a1.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/h.class */
public final class C1173h {
    /* renamed from: a */
    public static void m34421a() {
        int i = 0;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                String valueOf = String.valueOf(GLU.gluErrorString(i));
                C1175j.m34417b("GlUtil", valueOf.length() != 0 ? "glError ".concat(valueOf) : new String("glError "));
                i = glGetError;
            } else {
                return;
            }
        }
    }
}
