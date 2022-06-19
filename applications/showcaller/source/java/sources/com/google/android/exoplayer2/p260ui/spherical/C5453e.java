package com.google.android.exoplayer2.p260ui.spherical;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.C5524m;
import com.google.android.exoplayer2.video.p261r.C5574d;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* renamed from: com.google.android.exoplayer2.ui.spherical.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e.class */
final class C5453e {

    /* renamed from: a */
    private static final String[] f17629a = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", "}"};

    /* renamed from: b */
    private static final String[] f17630b = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", "}"};

    /* renamed from: c */
    private static final float[] f17631c = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: d */
    private static final float[] f17632d = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: e */
    private static final float[] f17633e = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: f */
    private static final float[] f17634f = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* renamed from: g */
    private static final float[] f17635g = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* renamed from: h */
    private int f17636h;

    /* renamed from: i */
    private C5454a f17637i;

    /* renamed from: j */
    private C5454a f17638j;

    /* renamed from: k */
    private int f17639k;

    /* renamed from: l */
    private int f17640l;

    /* renamed from: m */
    private int f17641m;

    /* renamed from: n */
    private int f17642n;

    /* renamed from: o */
    private int f17643o;

    /* renamed from: p */
    private int f17644p;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.ui.spherical.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/e$a.class */
    public static class C5454a {

        /* renamed from: a */
        private final int f17645a;

        /* renamed from: b */
        private final FloatBuffer f17646b;

        /* renamed from: c */
        private final FloatBuffer f17647c;

        /* renamed from: d */
        private final int f17648d;

        public C5454a(C5574d.C5576b c5576b) {
            this.f17645a = c5576b.m18493a();
            this.f17646b = C5524m.m18759f(c5576b.f18112c);
            this.f17647c = C5524m.m18759f(c5576b.f18113d);
            int i = c5576b.f18111b;
            if (i == 1) {
                this.f17648d = 5;
            } else if (i != 2) {
                this.f17648d = 4;
            } else {
                this.f17648d = 6;
            }
        }
    }

    /* renamed from: c */
    public static boolean m19072c(C5574d c5574d) {
        C5574d.C5575a c5575a = c5574d.f18105a;
        C5574d.C5575a c5575a2 = c5574d.f18106b;
        boolean z = false;
        if (c5575a.m18494b() == 1) {
            z = false;
            if (c5575a.m18495a(0).f18110a == 0) {
                z = false;
                if (c5575a2.m18494b() == 1) {
                    z = false;
                    if (c5575a2.m18495a(0).f18110a == 0) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public void m19074a(int i, float[] fArr, boolean z) {
        C5454a c5454a = z ? this.f17638j : this.f17637i;
        if (c5454a == null) {
            return;
        }
        GLES20.glUseProgram(this.f17639k);
        C5524m.m18763b();
        GLES20.glEnableVertexAttribArray(this.f17642n);
        GLES20.glEnableVertexAttribArray(this.f17643o);
        C5524m.m18763b();
        int i2 = this.f17636h;
        GLES20.glUniformMatrix3fv(this.f17641m, 1, false, i2 == 1 ? z ? f17633e : f17632d : i2 == 2 ? z ? f17635g : f17634f : f17631c, 0);
        GLES20.glUniformMatrix4fv(this.f17640l, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(this.f17644p, 0);
        C5524m.m18763b();
        GLES20.glVertexAttribPointer(this.f17642n, 3, 5126, false, 12, (Buffer) c5454a.f17646b);
        C5524m.m18763b();
        GLES20.glVertexAttribPointer(this.f17643o, 2, 5126, false, 8, (Buffer) c5454a.f17647c);
        C5524m.m18763b();
        GLES20.glDrawArrays(c5454a.f17648d, 0, c5454a.f17645a);
        C5524m.m18763b();
        GLES20.glDisableVertexAttribArray(this.f17642n);
        GLES20.glDisableVertexAttribArray(this.f17643o);
    }

    /* renamed from: b */
    public void m19073b() {
        int m18761d = C5524m.m18761d(f17629a, f17630b);
        this.f17639k = m18761d;
        this.f17640l = GLES20.glGetUniformLocation(m18761d, "uMvpMatrix");
        this.f17641m = GLES20.glGetUniformLocation(this.f17639k, "uTexMatrix");
        this.f17642n = GLES20.glGetAttribLocation(this.f17639k, "aPosition");
        this.f17643o = GLES20.glGetAttribLocation(this.f17639k, "aTexCoords");
        this.f17644p = GLES20.glGetUniformLocation(this.f17639k, "uTexture");
    }

    /* renamed from: d */
    public void m19071d(C5574d c5574d) {
        if (!m19072c(c5574d)) {
            return;
        }
        this.f17636h = c5574d.f18107c;
        C5454a c5454a = new C5454a(c5574d.f18105a.m18495a(0));
        this.f17637i = c5454a;
        this.f17638j = c5574d.f18108d ? c5454a : new C5454a(c5574d.f18106b.m18495a(0));
    }
}
