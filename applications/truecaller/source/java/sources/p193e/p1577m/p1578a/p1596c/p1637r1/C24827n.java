package p193e.p1577m.p1578a.p1596c.p1637r1;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.exoplayer2.video.VideoDecoderOutputBuffer;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.r1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/n.class */
public class C24827n implements GLSurfaceView.Renderer, AbstractC24826m {

    /* renamed from: j */
    public static final float[] f69614j = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

    /* renamed from: k */
    public static final float[] f69615k = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

    /* renamed from: l */
    public static final float[] f69616l = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

    /* renamed from: m */
    public static final String[] f69617m = {"y_tex", "u_tex", "v_tex"};

    /* renamed from: n */
    public static final FloatBuffer f69618n = C26232y.m2460H(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* renamed from: d */
    public int f69622d;

    /* renamed from: f */
    public int f69624f;

    /* renamed from: i */
    public VideoDecoderOutputBuffer f69627i;

    /* renamed from: a */
    public final int[] f69619a = new int[3];

    /* renamed from: b */
    public final AtomicReference<VideoDecoderOutputBuffer> f69620b = new AtomicReference<>();

    /* renamed from: c */
    public FloatBuffer[] f69621c = new FloatBuffer[3];

    /* renamed from: e */
    public int[] f69623e = new int[3];

    /* renamed from: g */
    public int[] f69625g = new int[3];

    /* renamed from: h */
    public int[] f69626h = new int[3];

    public C24827n(GLSurfaceView gLSurfaceView) {
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.f69625g;
            this.f69626h[i] = -1;
            iArr[i] = -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        VideoDecoderOutputBuffer andSet = this.f69620b.getAndSet(null);
        if (andSet == null && this.f69627i == null) {
            return;
        }
        if (andSet != null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.f69627i;
            if (videoDecoderOutputBuffer != null) {
                videoDecoderOutputBuffer.release();
            }
            this.f69627i = andSet;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f69627i;
        float[] fArr = f69615k;
        int i = videoDecoderOutputBuffer2.colorspace;
        if (i == 1) {
            fArr = f69614j;
        } else if (i == 3) {
            fArr = f69616l;
        }
        GLES20.glUniformMatrix3fv(this.f69624f, 1, false, fArr, 0);
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
            GLES20.glActiveTexture(33984 + i2);
            GLES20.glBindTexture(3553, this.f69619a[i2]);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexImage2D(3553, 0, 6409, videoDecoderOutputBuffer2.yuvStrides[i2], i3, 0, 6409, 5121, videoDecoderOutputBuffer2.yuvPlanes[i2]);
            i2++;
        }
        int i4 = (r0[0] + 1) / 2;
        int[] iArr = {videoDecoderOutputBuffer2.width, i4, i4};
        for (int i5 = 0; i5 < 3; i5++) {
            if (this.f69625g[i5] != iArr[i5] || this.f69626h[i5] != videoDecoderOutputBuffer2.yuvStrides[i5]) {
                C26232y.m2286x(videoDecoderOutputBuffer2.yuvStrides[i5] != 0);
                float f = iArr[i5] / videoDecoderOutputBuffer2.yuvStrides[i5];
                this.f69621c[i5] = C26232y.m2460H(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f, 0.0f, f, 1.0f});
                GLES20.glVertexAttribPointer(this.f69623e[i5], 2, 5126, false, 0, (Buffer) this.f69621c[i5]);
                this.f69625g[i5] = iArr[i5];
                this.f69626h[i5] = videoDecoderOutputBuffer2.yuvStrides[i5];
            }
        }
        GLES20.glClear(16384);
        GLES20.glDrawArrays(5, 0, 4);
        C26232y.m2294v();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int m2484B = C26232y.m2484B("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.f69622d = m2484B;
        GLES20.glUseProgram(m2484B);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f69622d, "in_pos");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) f69618n);
        this.f69623e[0] = GLES20.glGetAttribLocation(this.f69622d, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.f69623e[0]);
        this.f69623e[1] = GLES20.glGetAttribLocation(this.f69622d, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.f69623e[1]);
        this.f69623e[2] = GLES20.glGetAttribLocation(this.f69622d, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.f69623e[2]);
        C26232y.m2294v();
        this.f69624f = GLES20.glGetUniformLocation(this.f69622d, "mColorConversion");
        C26232y.m2294v();
        GLES20.glGenTextures(3, this.f69619a, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f69622d, f69617m[i]), i);
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.f69619a[i]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        C26232y.m2294v();
        C26232y.m2294v();
    }
}
