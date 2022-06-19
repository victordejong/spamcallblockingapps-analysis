package p193e.p1577m.p1578a.p1596c.p1632o1.p1633h;

import java.nio.FloatBuffer;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24839d;
/* renamed from: e.m.a.c.o1.h.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/e.class */
public final class C24666e {

    /* renamed from: j */
    public static final String[] f69091j = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: k */
    public static final String[] f69092k = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: l */
    public static final float[] f69093l = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: m */
    public static final float[] f69094m = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: n */
    public static final float[] f69095n = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: o */
    public static final float[] f69096o = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: p */
    public static final float[] f69097p = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: a */
    public int f69098a;

    /* renamed from: b */
    public C24667a f69099b;

    /* renamed from: c */
    public C24667a f69100c;

    /* renamed from: d */
    public int f69101d;

    /* renamed from: e */
    public int f69102e;

    /* renamed from: f */
    public int f69103f;

    /* renamed from: g */
    public int f69104g;

    /* renamed from: h */
    public int f69105h;

    /* renamed from: i */
    public int f69106i;

    /* renamed from: e.m.a.c.o1.h.e$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/e$a.class */
    public static class C24667a {

        /* renamed from: a */
        public final int f69107a;

        /* renamed from: b */
        public final FloatBuffer f69108b;

        /* renamed from: c */
        public final FloatBuffer f69109c;

        /* renamed from: d */
        public final int f69110d;

        public C24667a(C24839d.C24841b c24841b) {
            float[] fArr = c24841b.f69666c;
            this.f69107a = fArr.length / 3;
            this.f69108b = C26232y.m2460H(fArr);
            this.f69109c = C26232y.m2460H(c24841b.f69667d);
            int i = c24841b.f69665b;
            if (i == 1) {
                this.f69110d = 5;
            } else if (i != 2) {
                this.f69110d = 4;
            } else {
                this.f69110d = 6;
            }
        }
    }

    /* renamed from: a */
    public static boolean m4782a(C24839d c24839d) {
        C24839d.C24840a c24840a = c24839d.f69659a;
        C24839d.C24840a c24840a2 = c24839d.f69660b;
        C24839d.C24841b[] c24841bArr = c24840a.f69663a;
        boolean z = false;
        if (c24841bArr.length == 1) {
            z = false;
            if (c24841bArr[0].f69664a == 0) {
                C24839d.C24841b[] c24841bArr2 = c24840a2.f69663a;
                z = false;
                if (c24841bArr2.length == 1) {
                    z = false;
                    if (c24841bArr2[0].f69664a == 0) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
