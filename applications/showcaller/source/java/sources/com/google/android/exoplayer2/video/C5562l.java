package com.google.android.exoplayer2.video;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5524m;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* renamed from: com.google.android.exoplayer2.video.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/l.class */
class C5562l implements GLSurfaceView.Renderer, AbstractC5561k {

    /* renamed from: d */
    private static final float[] f18059d = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

    /* renamed from: e */
    private static final float[] f18060e = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

    /* renamed from: f */
    private static final float[] f18061f = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

    /* renamed from: g */
    private static final String[] f18062g = {"y_tex", "u_tex", "v_tex"};

    /* renamed from: h */
    private static final FloatBuffer f18063h = C5524m.m18759f(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* renamed from: i */
    private final GLSurfaceView f18064i;

    /* renamed from: m */
    private int f18068m;

    /* renamed from: o */
    private int f18070o;

    /* renamed from: r */
    private VideoDecoderOutputBuffer f18073r;

    /* renamed from: j */
    private final int[] f18065j = new int[3];

    /* renamed from: k */
    private final AtomicReference<VideoDecoderOutputBuffer> f18066k = new AtomicReference<>();

    /* renamed from: l */
    private FloatBuffer[] f18067l = new FloatBuffer[3];

    /* renamed from: n */
    private int[] f18069n = new int[3];

    /* renamed from: p */
    private int[] f18071p = new int[3];

    /* renamed from: q */
    private int[] f18072q = new int[3];

    public C5562l(GLSurfaceView gLSurfaceView) {
        this.f18064i = gLSurfaceView;
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.f18071p;
            this.f18072q[i] = -1;
            iArr[i] = -1;
        }
    }

    /* renamed from: a */
    private void m18554a() {
        GLES20.glGenTextures(3, this.f18065j, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f18068m, f18062g[i]), i);
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.f18065j[i]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        C5524m.m18763b();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        VideoDecoderOutputBuffer andSet = this.f18066k.getAndSet(null);
        if (andSet == null && this.f18073r == null) {
            return;
        }
        if (andSet != null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f18073r;
            if (videoDecoderOutputBuffer != null) {
                videoDecoderOutputBuffer.release();
            }
            this.f18073r = andSet;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f18073r;
        float[] fArr = f18060e;
        int i = videoDecoderOutputBuffer2.colorspace;
        if (i == 1) {
            fArr = f18059d;
        } else if (i == 3) {
            fArr = f18061f;
        }
        GLES20.glUniformMatrix3fv(this.f18070o, 1, false, fArr, 0);
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
            GLES20.glActiveTexture(33984 + i2);
            GLES20.glBindTexture(3553, this.f18065j[i2]);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexImage2D(3553, 0, 6409, videoDecoderOutputBuffer2.yuvStrides[i2], i3, 0, 6409, 5121, videoDecoderOutputBuffer2.yuvPlanes[i2]);
            i2++;
        }
        int i4 = (r0[0] + 1) / 2;
        int[] iArr = {videoDecoderOutputBuffer2.width, i4, i4};
        for (int i5 = 0; i5 < 3; i5++) {
            if (this.f18071p[i5] != iArr[i5] || this.f18072q[i5] != videoDecoderOutputBuffer2.yuvStrides[i5]) {
                C5508e.m18910f(videoDecoderOutputBuffer2.yuvStrides[i5] != 0);
                float f = iArr[i5] / videoDecoderOutputBuffer2.yuvStrides[i5];
                this.f18067l[i5] = C5524m.m18759f(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f, 0.0f, f, 1.0f});
                GLES20.glVertexAttribPointer(this.f18069n[i5], 2, 5126, false, 0, (Buffer) this.f18067l[i5]);
                this.f18071p[i5] = iArr[i5];
                this.f18072q[i5] = videoDecoderOutputBuffer2.yuvStrides[i5];
            }
        }
        GLES20.glClear(16384);
        GLES20.glDrawArrays(5, 0, 4);
        C5524m.m18763b();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int m18762c = C5524m.m18762c("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.f18068m = m18762c;
        GLES20.glUseProgram(m18762c);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f18068m, "in_pos");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) f18063h);
        this.f18069n[0] = GLES20.glGetAttribLocation(this.f18068m, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.f18069n[0]);
        this.f18069n[1] = GLES20.glGetAttribLocation(this.f18068m, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.f18069n[1]);
        this.f18069n[2] = GLES20.glGetAttribLocation(this.f18068m, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.f18069n[2]);
        C5524m.m18763b();
        this.f18070o = GLES20.glGetUniformLocation(this.f18068m, "mColorConversion");
        C5524m.m18763b();
        m18554a();
        C5524m.m18763b();
    }
}
