package com.linkedin.android.litr.preview;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.linkedin.android.litr.p461c.AbstractC16624b;
import com.linkedin.android.litr.p461c.p463b.p464a.C16625a;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* renamed from: com.linkedin.android.litr.preview.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c.class */
public class C16661c implements GLSurfaceView.Renderer {

    /* renamed from: b */
    private static final String f58624b = "c";

    /* renamed from: a */
    AbstractC16664b f58625a;

    /* renamed from: c */
    private final AbstractC16663a f58626c;

    /* renamed from: f */
    private SurfaceTexture f58629f;

    /* renamed from: g */
    private int f58630g;

    /* renamed from: d */
    private float[] f58627d = new float[16];

    /* renamed from: e */
    private float[] f58628e = new float[16];

    /* renamed from: i */
    private SurfaceTexture.OnFrameAvailableListener f58632i = new SurfaceTexture.OnFrameAvailableListener() { // from class: com.linkedin.android.litr.preview.c.1
        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
            C16661c.this.f58625a.mo6796a();
        }
    };

    /* renamed from: h */
    private AbstractC16624b f58631h = new C16625a();

    /* renamed from: com.linkedin.android.litr.preview.c$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c$a.class */
    public interface AbstractC16663a {
    }

    /* renamed from: com.linkedin.android.litr.preview.c$b */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c$b.class */
    interface AbstractC16664b {
        /* renamed from: a */
        void mo6796a();
    }

    public C16661c(AbstractC16663a abstractC16663a) {
        this.f58626c = abstractC16663a;
        Matrix.setIdentityM(this.f58627d, 0);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            this.f58629f.updateTexImage();
            this.f58629f.getTransformMatrix(this.f58627d);
        }
        GLES20.glClear(16384);
        this.f58631h.mo6873a(this.f58630g, this.f58627d);
        this.f58631h.mo6872a(this.f58629f.getTimestamp());
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        float f = i / i2;
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        Matrix.orthoM(fArr, 0, -f, f, -1.0f, 1.0f, -1.0f, 1.0f);
        float[] fArr2 = new float[16];
        Matrix.setIdentityM(fArr2, 0);
        Matrix.setLookAtM(fArr2, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
        Matrix.setIdentityM(this.f58628e, 0);
        Matrix.multiplyMM(this.f58628e, 0, fArr, 0, fArr2, 0);
        AbstractC16624b abstractC16624b = this.f58631h;
        float[] fArr3 = this.f58628e;
        abstractC16624b.mo6871a(Arrays.copyOf(fArr3, fArr3.length), 0);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.f58630g = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f58630g);
        this.f58629f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this.f58632i);
        GLES20.glBindTexture(36197, this.f58630g);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        GLES20.glBindTexture(3553, 0);
        this.f58631h.mo6874a();
        GLES20.glGetIntegerv(3379, iArr, 0);
    }
}
