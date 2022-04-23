package com.google.android.exoplayer2.video;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/f.class */
public final class f implements GLSurfaceView.Renderer, h {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f22406a = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.392f, 2.017f, 1.596f, -0.813f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: b  reason: collision with root package name */
    private static final float[] f22407b = {1.164f, 1.164f, 1.164f, BitmapDescriptorFactory.HUE_RED, -0.213f, 2.112f, 1.793f, -0.533f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: c  reason: collision with root package name */
    private static final float[] f22408c = {1.168f, 1.168f, 1.168f, BitmapDescriptorFactory.HUE_RED, -0.188f, 2.148f, 1.683f, -0.652f, BitmapDescriptorFactory.HUE_RED};

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f22409d = {"y_tex", "u_tex", "v_tex"};
    private static final FloatBuffer e = j.a(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});
    private final GLSurfaceView f;
    private int j;
    private int l;
    private g o;
    private final int[] g = new int[3];
    private final AtomicReference<g> h = new AtomicReference<>();
    private FloatBuffer[] i = new FloatBuffer[3];
    private int[] k = new int[3];
    private int[] m = new int[3];
    private int[] n = new int[3];

    public f(GLSurfaceView gLSurfaceView) {
        this.f = gLSurfaceView;
        for (int i = 0; i < 3; i++) {
            int[] iArr = this.m;
            this.n[i] = -1;
            iArr[i] = -1;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        g andSet = this.h.getAndSet(null);
        if (!(andSet == null && this.o == null)) {
            if (andSet != null) {
                g gVar = this.o;
                if (gVar != null) {
                    gVar.f();
                }
                this.o = andSet;
            }
            g gVar2 = (g) a.b(this.o);
            float[] fArr = f22407b;
            int i = gVar2.h;
            if (i == 1) {
                fArr = f22406a;
            } else if (i == 3) {
                fArr = f22408c;
            }
            GLES20.glUniformMatrix3fv(this.l, 1, false, fArr, 0);
            int[] iArr = (int[]) a.b(gVar2.g);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) a.b(gVar2.f);
            int i2 = 0;
            while (i2 < 3) {
                int i3 = i2 == 0 ? gVar2.e : (gVar2.e + 1) / 2;
                GLES20.glActiveTexture(33984 + i2);
                GLES20.glBindTexture(3553, this.g[i2]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i2], i3, 0, 6409, 5121, byteBufferArr[i2]);
                i2++;
            }
            int i4 = (r0[0] + 1) / 2;
            int[] iArr2 = {gVar2.f22410d, i4, i4};
            for (int i5 = 0; i5 < 3; i5++) {
                if (this.m[i5] != iArr2[i5] || this.n[i5] != iArr[i5]) {
                    a.b(iArr[i5] != 0);
                    float f = iArr2[i5] / iArr[i5];
                    this.i[i5] = j.a(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, f, BitmapDescriptorFactory.HUE_RED, f, 1.0f});
                    GLES20.glVertexAttribPointer(this.k[i5], 2, 5126, false, 0, (Buffer) this.i[i5]);
                    this.m[i5] = iArr2[i5];
                    this.n[i5] = iArr[i5];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            j.a();
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int a2 = j.a("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
        this.j = a2;
        GLES20.glUseProgram(a2);
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.j, "in_pos");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        GLES20.glVertexAttribPointer(glGetAttribLocation, 2, 5126, false, 0, (Buffer) e);
        this.k[0] = GLES20.glGetAttribLocation(this.j, "in_tc_y");
        GLES20.glEnableVertexAttribArray(this.k[0]);
        this.k[1] = GLES20.glGetAttribLocation(this.j, "in_tc_u");
        GLES20.glEnableVertexAttribArray(this.k[1]);
        this.k[2] = GLES20.glGetAttribLocation(this.j, "in_tc_v");
        GLES20.glEnableVertexAttribArray(this.k[2]);
        j.a();
        this.l = GLES20.glGetUniformLocation(this.j, "mColorConversion");
        j.a();
        GLES20.glGenTextures(3, this.g, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glUniform1i(GLES20.glGetUniformLocation(this.j, f22409d[i]), i);
            GLES20.glActiveTexture(33984 + i);
            GLES20.glBindTexture(3553, this.g[i]);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
        }
        j.a();
        j.a();
    }
}
