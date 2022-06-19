package com.google.android.exoplayer2.video;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11610j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* renamed from: com.google.android.exoplayer2.video.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/f.class */
public final class C11655f implements GLSurfaceView.Renderer, AbstractC11657h {

    /* renamed from: a */
    private static final float[] f38864a = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.392f, 2.017f, 1.596f, -0.813f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: b */
    private static final float[] f38865b = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.213f, 2.112f, 1.793f, -0.533f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: c */
    private static final float[] f38866c = {1.168f, 1.168f, 1.168f, BitmapDescriptorFactory.HUE_RED, -0.188f, 2.148f, 1.683f, -0.652f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: d */
    private static final String[] f38867d = {"y_tex", "u_tex", "v_tex"};

    /* renamed from: e */
    private static final FloatBuffer f38868e = C11610j.m19888a(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* renamed from: f */
    private final GLSurfaceView f38869f;

    /* renamed from: j */
    private int f38873j;

    /* renamed from: l */
    private int f38875l;

    /* renamed from: o */
    private C11656g f38878o;

    /* renamed from: g */
    private final int[] f38870g = new int[3];

    /* renamed from: h */
    private final AtomicReference<C11656g> f38871h = new AtomicReference<>();

    /* renamed from: i */
    private FloatBuffer[] f38872i = new FloatBuffer[3];

    /* renamed from: k */
    private int[] f38874k = new int[3];

    /* renamed from: m */
    private int[] f38876m = new int[3];

    /* renamed from: n */
    private int[] f38877n = new int[3];

    public C11655f(GLSurfaceView gLSurfaceView) {
        this.f38869f = gLSurfaceView;
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.f38876m;
            this.f38877n[i] = -1;
            iArr[i] = -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        C11656g andSet = this.f38871h.getAndSet(null);
        if (andSet == null && this.f38878o == null) {
            return;
        }
        if (andSet != null) {
            C11656g c11656g = this.f38878o;
            if (c11656g != null) {
                c11656g.mo19678f();
            }
            this.f38878o = andSet;
        }
        C11656g c11656g2 = (C11656g) C11593a.m20020b(this.f38878o);
        float[] fArr = f38865b;
        int i = c11656g2.f38883h;
        if (i == 1) {
            fArr = f38864a;
        } else if (i == 3) {
            fArr = f38866c;
        }
        GLES20.glUniformMatrix3fv(this.f38875l, 1, false, fArr, 0);
        int[] iArr = (int[]) C11593a.m20020b(c11656g2.f38882g);
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) C11593a.m20020b(c11656g2.f38881f);
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 == 0 ? c11656g2.f38880e : (c11656g2.f38880e + 1) / 2;
            GLES20.glActiveTexture(33984 + i2);
            GLES20.glBindTexture(3553, this.f38870g[i2]);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexImage2D(3553, 0, 6409, iArr[i2], i3, 0, 6409, 5121, byteBufferArr[i2]);
            i2++;
        }
        int i4 = (r0[0] + 1) / 2;
        int[] iArr2 = {c11656g2.f38879d, i4, i4};
        for (int i5 = 0; i5 < 3; i5++) {
            if (this.f38876m[i5] != iArr2[i5] || this.f38877n[i5] != iArr[i5]) {
                C11593a.m20019b(iArr[i5] != 0);
                float f = iArr2[i5] / iArr[i5];
                this.f38872i[i5] = C11610j.m19888a(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, f, BitmapDescriptorFactory.HUE_RED, f, 1.0f});
                GLES20.glVertexAttribPointer(this.f38874k[i5], 2, 5126, false, 0, (Buffer) this.f38872i[i5]);
                this.f38876m[i5] = iArr2[i5];
                this.f38877n[i5] = iArr[i5];
            }
        }
        GLES20.glClear(16384);
        GLES20.glDrawArrays(5, 0, 4);
        C11610j.m19892a();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int m19889a = C11610j.m19889a("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.f38873j = m19889a;
        GLES20.glUseProgram(m19889a);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.f38873j, "in_pos");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) f38868e);
        this.f38874k[0] = GLES20.glGetAttribLocation(this.f38873j, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.f38874k[0]);
        this.f38874k[1] = GLES20.glGetAttribLocation(this.f38873j, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.f38874k[1]);
        this.f38874k[2] = GLES20.glGetAttribLocation(this.f38873j, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.f38874k[2]);
        C11610j.m19892a();
        this.f38875l = GLES20.glGetUniformLocation(this.f38873j, "mColorConversion");
        C11610j.m19892a();
        GLES20.glGenTextures(3, this.f38870g, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.f38873j, f38867d[i]), i);
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.f38870g[i]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        C11610j.m19892a();
        C11610j.m19892a();
    }
}
