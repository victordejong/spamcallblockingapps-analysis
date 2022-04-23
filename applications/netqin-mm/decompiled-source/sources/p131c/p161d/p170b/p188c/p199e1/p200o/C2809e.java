package p131c.p161d.p170b.p188c.p199e1.p200o;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2892m;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2934c;
/* renamed from: c.d.b.c.e1.o.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/e.class */
public final class C2809e {

    /* renamed from: j */
    public static final String[] f10200j = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: k */
    public static final String[] f10201k = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: l */
    public static final float[] f10202l = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m */
    public static final float[] f10203m = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: n */
    public static final float[] f10204n = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: o */
    public static final float[] f10205o = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: p */
    public static final float[] f10206p = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a */
    public int f10207a;

    /* renamed from: b */
    public C2810a f10208b;

    /* renamed from: c */
    public C2810a f10209c;

    /* renamed from: d */
    public int f10210d;

    /* renamed from: e */
    public int f10211e;

    /* renamed from: f */
    public int f10212f;

    /* renamed from: g */
    public int f10213g;

    /* renamed from: h */
    public int f10214h;

    /* renamed from: i */
    public int f10215i;

    /* renamed from: c.d.b.c.e1.o.e$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/e$a.class */
    public static class C2810a {

        /* renamed from: a */
        public final int f10216a;

        /* renamed from: b */
        public final FloatBuffer f10217b;

        /* renamed from: c */
        public final FloatBuffer f10218c;

        /* renamed from: d */
        public final int f10219d;

        public C2810a(C2934c.C2936b bVar) {
            this.f10216a = bVar.m28446a();
            this.f10217b = C2892m.m28610a(bVar.f10626c);
            this.f10218c = C2892m.m28610a(bVar.f10627d);
            int i = bVar.f10625b;
            if (i == 1) {
                this.f10219d = 5;
            } else if (i != 2) {
                this.f10219d = 4;
            } else {
                this.f10219d = 6;
            }
        }
    }

    /* renamed from: b */
    public static boolean m28984b(C2934c cVar) {
        C2934c.C2935a aVar = cVar.f10619a;
        C2934c.C2935a aVar2 = cVar.f10620b;
        boolean z = false;
        if (aVar.m28448a() == 1) {
            z = false;
            if (aVar.m28447a(0).f10624a == 0) {
                z = false;
                if (aVar2.m28448a() == 1) {
                    z = false;
                    if (aVar2.m28447a(0).f10624a == 0) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m28987a() {
        int a = C2892m.m28609a(f10200j, f10201k);
        this.f10210d = a;
        this.f10211e = GLES20.glGetUniformLocation(a, "uMvpMatrix");
        this.f10212f = GLES20.glGetUniformLocation(this.f10210d, "uTexMatrix");
        this.f10213g = GLES20.glGetAttribLocation(this.f10210d, "aPosition");
        this.f10214h = GLES20.glGetAttribLocation(this.f10210d, "aTexCoords");
        this.f10215i = GLES20.glGetUniformLocation(this.f10210d, "uTexture");
    }

    /* renamed from: a */
    public void m28986a(int i, float[] fArr, boolean z) {
        C2810a aVar = z ? this.f10209c : this.f10208b;
        if (aVar != null) {
            GLES20.glUseProgram(this.f10210d);
            C2892m.m28615a();
            GLES20.glEnableVertexAttribArray(this.f10213g);
            GLES20.glEnableVertexAttribArray(this.f10214h);
            C2892m.m28615a();
            int i2 = this.f10207a;
            GLES20.glUniformMatrix3fv(this.f10212f, 1, false, i2 == 1 ? z ? f10204n : f10203m : i2 == 2 ? z ? f10206p : f10205o : f10202l, 0);
            GLES20.glUniformMatrix4fv(this.f10211e, 1, false, fArr, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i);
            GLES20.glUniform1i(this.f10215i, 0);
            C2892m.m28615a();
            GLES20.glVertexAttribPointer(this.f10213g, 3, 5126, false, 12, (Buffer) aVar.f10217b);
            C2892m.m28615a();
            GLES20.glVertexAttribPointer(this.f10214h, 2, 5126, false, 8, (Buffer) aVar.f10218c);
            C2892m.m28615a();
            GLES20.glDrawArrays(aVar.f10219d, 0, aVar.f10216a);
            C2892m.m28615a();
            GLES20.glDisableVertexAttribArray(this.f10213g);
            GLES20.glDisableVertexAttribArray(this.f10214h);
        }
    }

    /* renamed from: a */
    public void m28985a(C2934c cVar) {
        if (m28984b(cVar)) {
            this.f10207a = cVar.f10621c;
            C2810a aVar = new C2810a(cVar.f10619a.m28447a(0));
            this.f10208b = aVar;
            this.f10209c = cVar.f10622d ? aVar : new C2810a(cVar.f10620b.m28447a(0));
        }
    }
}
