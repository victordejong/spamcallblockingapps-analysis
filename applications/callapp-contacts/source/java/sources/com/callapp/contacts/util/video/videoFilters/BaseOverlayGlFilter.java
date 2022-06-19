package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.p461c.AbstractC16622a;
import com.linkedin.android.litr.p461c.C16628c;
import com.linkedin.android.litr.p461c.p462a.C16623a;
import com.linkedin.android.litr.p467e.C16638a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter.class */
abstract class BaseOverlayGlFilter implements AbstractC16622a {

    /* renamed from: a */
    private final C16628c f28483a;

    /* renamed from: b */
    private int f28484b;

    /* renamed from: c */
    private int f28485c;

    /* renamed from: d */
    private int f28486d;

    /* renamed from: e */
    private int f28487e;

    /* renamed from: f */
    private int f28488f;

    /* renamed from: g */
    private float[] f28489g;

    /* renamed from: h */
    private int f28490h;

    /* renamed from: i */
    private float[] f28491i;

    public BaseOverlayGlFilter(RectF rectF) {
        PointF pointF;
        PointF pointF2;
        this.f28491i = new float[16];
        if (rectF == null) {
            pointF = new PointF(1.0f, 1.0f);
            pointF2 = new PointF(0.5f, 0.5f);
        } else {
            pointF = new PointF(rectF.right - rectF.left, rectF.bottom - rectF.top);
            pointF2 = new PointF((rectF.left + rectF.right) / 2.0f, (rectF.top + rectF.bottom) / 2.0f);
        }
        this.f28483a = new C16628c(pointF, pointF2, BitmapDescriptorFactory.HUE_RED);
    }

    public BaseOverlayGlFilter(C16628c c16628c) {
        this.f28491i = new float[16];
        this.f28483a = c16628c;
    }

    /* renamed from: a */
    public static int m26883a(Bitmap bitmap) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        GLES20.glBindTexture(3553, i);
        C16638a.m6837a("glBindTexture overlayTextureID");
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        C16638a.m6837a("glTexParameter");
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        return i;
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public void mo6874a() {
        Matrix.setIdentityM(this.f28491i, 0);
        Matrix.scaleM(this.f28491i, 0, 1.0f, -1.0f, 1.0f);
        int m6838a = C16638a.m6838a(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
        this.f28484b = m6838a;
        if (m6838a != 0) {
            int m6838a2 = C16638a.m6838a(35632, "precision mediump float;\nuniform sampler2D uTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTextureCoord);\n}\n");
            this.f28485c = m6838a2;
            if (m6838a2 == 0) {
                mo6870b();
                throw new RuntimeException("failed loading fragment shader");
            }
            int m6839a = C16638a.m6839a(this.f28484b, m6838a2);
            this.f28486d = m6839a;
            if (m6839a == 0) {
                mo6870b();
                throw new RuntimeException("failed creating glOverlayProgram");
            }
            this.f28487e = GLES20.glGetUniformLocation(m6839a, "uMVPMatrix");
            C16638a.m6837a("glGetUniformLocation uMVPMatrix");
            if (this.f28487e == -1) {
                throw new RuntimeException("Could not get attrib location for uMVPMatrix");
            }
            this.f28488f = GLES20.glGetUniformLocation(this.f28486d, "uSTMatrix");
            C16638a.m6837a("glGetUniformLocation uSTMatrix");
            if (this.f28488f == -1) {
                throw new RuntimeException("Could not get attrib location for uSTMatrix");
            }
            return;
        }
        throw new RuntimeException("failed loading vertex shader");
    }

    /* renamed from: a */
    public final void m26884a(int i) {
        GLES20.glUseProgram(this.f28486d);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glUniformMatrix4fv(this.f28487e, 1, false, this.f28489g, this.f28490h);
        GLES20.glUniformMatrix4fv(this.f28488f, 1, false, this.f28491i, 0);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glDrawArrays(5, 0, 4);
        C16638a.m6837a("glDrawArrays");
        GLES20.glDisable(3042);
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public void mo6871a(float[] fArr, int i) {
        this.f28489g = C16623a.m6875a(fArr, this.f28483a);
        this.f28490h = 0;
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: b */
    public void mo6870b() {
        GLES20.glDeleteProgram(this.f28486d);
        GLES20.glDeleteShader(this.f28484b);
        GLES20.glDeleteShader(this.f28485c);
        this.f28486d = 0;
        this.f28484b = 0;
        this.f28485c = 0;
    }
}
