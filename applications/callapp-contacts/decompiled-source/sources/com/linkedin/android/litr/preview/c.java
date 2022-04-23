package com.linkedin.android.litr.preview;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c.class */
public class c implements GLSurfaceView.Renderer {

    /* renamed from: b  reason: collision with root package name */
    private static final String f33760b = "c";

    /* renamed from: a  reason: collision with root package name */
    b f33761a;

    /* renamed from: c  reason: collision with root package name */
    private final a f33762c;
    private SurfaceTexture f;
    private int g;

    /* renamed from: d  reason: collision with root package name */
    private float[] f33763d = new float[16];
    private float[] e = new float[16];
    private SurfaceTexture.OnFrameAvailableListener i = new SurfaceTexture.OnFrameAvailableListener() { // from class: com.linkedin.android.litr.preview.c.1
        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
            c.this.f33761a.a();
        }
    };
    private com.linkedin.android.litr.c.b h = new com.linkedin.android.litr.c.b.a.a();

    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c$a.class */
    public interface a {
    }

    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/preview/c$b.class */
    interface b {
        void a();
    }

    public c(a aVar) {
        this.f33762c = aVar;
        Matrix.setIdentityM(this.f33763d, 0);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            this.f.updateTexImage();
            this.f.getTransformMatrix(this.f33763d);
        }
        GLES20.glClear(16384);
        this.h.a(this.g, this.f33763d);
        this.h.a(this.f.getTimestamp());
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
        Matrix.setIdentityM(this.e, 0);
        Matrix.multiplyMM(this.e, 0, fArr, 0, fArr2, 0);
        com.linkedin.android.litr.c.b bVar = this.h;
        float[] fArr3 = this.e;
        bVar.a(Arrays.copyOf(fArr3, fArr3.length), 0);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.g = iArr[0];
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.g);
        this.f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this.i);
        GLES20.glBindTexture(36197, this.g);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        GLES20.glBindTexture(3553, 0);
        this.h.a();
        GLES20.glGetIntegerv(3379, iArr, 0);
    }
}
