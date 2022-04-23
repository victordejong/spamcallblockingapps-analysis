package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.c.a;
import com.linkedin.android.litr.c.c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter.class */
abstract class BaseOverlayGlFilter implements a {

    /* renamed from: a  reason: collision with root package name */
    private final c f16349a;

    /* renamed from: b  reason: collision with root package name */
    private int f16350b;

    /* renamed from: c  reason: collision with root package name */
    private int f16351c;

    /* renamed from: d  reason: collision with root package name */
    private int f16352d;
    private int e;
    private int f;
    private float[] g;
    private int h;
    private float[] i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseOverlayGlFilter(RectF rectF) {
        PointF pointF;
        PointF pointF2;
        this.i = new float[16];
        if (rectF == null) {
            pointF = new PointF(1.0f, 1.0f);
            pointF2 = new PointF(0.5f, 0.5f);
        } else {
            pointF = new PointF(rectF.right - rectF.left, rectF.bottom - rectF.top);
            pointF2 = new PointF((rectF.left + rectF.right) / 2.0f, (rectF.top + rectF.bottom) / 2.0f);
        }
        this.f16349a = new c(pointF, pointF2, BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseOverlayGlFilter(c cVar) {
        this.i = new float[16];
        this.f16349a = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Bitmap bitmap) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        GLES20.glBindTexture(3553, i);
        com.linkedin.android.litr.e.a.a("glBindTexture overlayTextureID");
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        com.linkedin.android.litr.e.a.a("glTexParameter");
        GLUtils.texImage2D(3553, 0, bitmap, 0);
        return i;
    }

    @Override // com.linkedin.android.litr.c.a
    public void a() {
        Matrix.setIdentityM(this.i, 0);
        Matrix.scaleM(this.i, 0, 1.0f, -1.0f, 1.0f);
        int a2 = com.linkedin.android.litr.e.a.a(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n");
        this.f16350b = a2;
        if (a2 != 0) {
            int a3 = com.linkedin.android.litr.e.a.a(35632, "precision mediump float;\nuniform sampler2D uTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTextureCoord);\n}\n");
            this.f16351c = a3;
            if (a3 != 0) {
                int a4 = com.linkedin.android.litr.e.a.a(this.f16350b, a3);
                this.f16352d = a4;
                if (a4 != 0) {
                    this.e = GLES20.glGetUniformLocation(a4, "uMVPMatrix");
                    com.linkedin.android.litr.e.a.a("glGetUniformLocation uMVPMatrix");
                    if (this.e != -1) {
                        this.f = GLES20.glGetUniformLocation(this.f16352d, "uSTMatrix");
                        com.linkedin.android.litr.e.a.a("glGetUniformLocation uSTMatrix");
                        if (this.f == -1) {
                            throw new RuntimeException("Could not get attrib location for uSTMatrix");
                        }
                        return;
                    }
                    throw new RuntimeException("Could not get attrib location for uMVPMatrix");
                }
                b();
                throw new RuntimeException("failed creating glOverlayProgram");
            }
            b();
            throw new RuntimeException("failed loading fragment shader");
        }
        throw new RuntimeException("failed loading vertex shader");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        GLES20.glUseProgram(this.f16352d);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, i);
        GLES20.glUniformMatrix4fv(this.e, 1, false, this.g, this.h);
        GLES20.glUniformMatrix4fv(this.f, 1, false, this.i, 0);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glDrawArrays(5, 0, 4);
        com.linkedin.android.litr.e.a.a("glDrawArrays");
        GLES20.glDisable(3042);
    }

    @Override // com.linkedin.android.litr.c.a
    public void a(float[] fArr, int i) {
        this.g = com.linkedin.android.litr.c.a.a.a(fArr, this.f16349a);
        this.h = 0;
    }

    @Override // com.linkedin.android.litr.c.a
    public void b() {
        GLES20.glDeleteProgram(this.f16352d);
        GLES20.glDeleteShader(this.f16350b);
        GLES20.glDeleteShader(this.f16351c);
        this.f16352d = 0;
        this.f16350b = 0;
        this.f16351c = 0;
    }
}
