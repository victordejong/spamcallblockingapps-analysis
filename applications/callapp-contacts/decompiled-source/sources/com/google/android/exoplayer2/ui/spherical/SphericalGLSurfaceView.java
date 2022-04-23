package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.WindowManager;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.ui.spherical.a;
import com.google.android.exoplayer2.ui.spherical.b;
import com.google.android.exoplayer2.ui.spherical.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.video.a.c;
import com.google.android.exoplayer2.video.a.d;
import com.google.android.exoplayer2.video.i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView.class */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    private final SensorManager f22059a;

    /* renamed from: b  reason: collision with root package name */
    private final Sensor f22060b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.ui.spherical.a f22061c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f22062d;
    private final e e;
    private final c f;
    private SurfaceTexture g;
    private Surface h;
    private ac.d i;
    private boolean j;
    private boolean k;
    private boolean l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a.class */
    final class a implements GLSurfaceView.Renderer, a.AbstractC0445a, e.a {

        /* renamed from: b  reason: collision with root package name */
        private final c f22064b;
        private final float[] e;
        private final float[] f;
        private final float[] g;
        private float h;

        /* renamed from: c  reason: collision with root package name */
        private final float[] f22065c = new float[16];

        /* renamed from: d  reason: collision with root package name */
        private final float[] f22066d = new float[16];
        private final float[] j = new float[16];
        private final float[] k = new float[16];
        private float i = 3.1415927f;

        public a(c cVar) {
            float[] fArr = new float[16];
            this.e = fArr;
            float[] fArr2 = new float[16];
            this.f = fArr2;
            float[] fArr3 = new float[16];
            this.g = fArr3;
            this.f22064b = cVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
        }

        private void a() {
            Matrix.setRotateM(this.f, 0, -this.h, (float) Math.cos(this.i), (float) Math.sin(this.i), BitmapDescriptorFactory.HUE_RED);
        }

        @Override // com.google.android.exoplayer2.ui.spherical.e.a
        public final void a(PointF pointF) {
            synchronized (this) {
                this.h = pointF.y;
                a();
                Matrix.setRotateM(this.g, 0, -pointF.x, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // com.google.android.exoplayer2.ui.spherical.a.AbstractC0445a
        public final void a(float[] fArr, float f) {
            synchronized (this) {
                float[] fArr2 = this.e;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                this.i = -f;
                a();
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.k, 0, this.e, 0, this.g, 0);
                Matrix.multiplyMM(this.j, 0, this.f, 0, this.k, 0);
            }
            Matrix.multiplyMM(this.f22066d, 0, this.f22065c, 0, this.j, 0);
            c cVar = this.f22064b;
            float[] fArr = this.f22066d;
            GLES20.glClear(16384);
            j.a();
            if (cVar.f22079a.compareAndSet(true, false)) {
                ((SurfaceTexture) com.google.android.exoplayer2.util.a.b(cVar.j)).updateTexImage();
                j.a();
                if (cVar.f22080b.compareAndSet(true, false)) {
                    Matrix.setIdentityM(cVar.g, 0);
                }
                long timestamp = cVar.j.getTimestamp();
                Long b2 = cVar.e.b(timestamp);
                if (b2 != null) {
                    c cVar2 = cVar.f22082d;
                    float[] fArr2 = cVar.g;
                    float[] a2 = cVar2.f22375c.a(b2.longValue());
                    if (a2 != null) {
                        float[] fArr3 = cVar2.f22374b;
                        float f = a2[0];
                        float f2 = -a2[1];
                        float f3 = -a2[2];
                        float length = Matrix.length(f, f2, f3);
                        if (length != BitmapDescriptorFactory.HUE_RED) {
                            Matrix.setRotateM(fArr3, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
                        } else {
                            Matrix.setIdentityM(fArr3, 0);
                        }
                        if (!cVar2.f22376d) {
                            c.a(cVar2.f22373a, cVar2.f22374b);
                            cVar2.f22376d = true;
                        }
                        Matrix.multiplyMM(fArr2, 0, cVar2.f22373a, 0, cVar2.f22374b, 0);
                    }
                }
                d a3 = cVar.f.a(timestamp);
                if (a3 != null) {
                    b bVar = cVar.f22081c;
                    if (b.a(a3)) {
                        bVar.h = a3.f22379c;
                        bVar.i = new b.a(a3.f22377a.f22381a[0]);
                        bVar.j = a3.f22380d ? bVar.i : new b.a(a3.f22378b.f22381a[0]);
                    }
                }
            }
            Matrix.multiplyMM(cVar.h, 0, fArr, 0, cVar.g, 0);
            b bVar2 = cVar.f22081c;
            int i = cVar.i;
            float[] fArr4 = cVar.h;
            b.a aVar = bVar2.i;
            if (aVar != null) {
                GLES20.glUseProgram(bVar2.k);
                j.a();
                GLES20.glEnableVertexAttribArray(bVar2.n);
                GLES20.glEnableVertexAttribArray(bVar2.o);
                j.a();
                GLES20.glUniformMatrix3fv(bVar2.m, 1, false, bVar2.h == 1 ? b.f22074d : bVar2.h == 2 ? b.f : b.f22073c, 0);
                GLES20.glUniformMatrix4fv(bVar2.l, 1, false, fArr4, 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(36197, i);
                GLES20.glUniform1i(bVar2.p, 0);
                j.a();
                GLES20.glVertexAttribPointer(bVar2.n, 3, 5126, false, 12, (Buffer) aVar.f22076b);
                j.a();
                GLES20.glVertexAttribPointer(bVar2.o, 2, 5126, false, 8, (Buffer) aVar.f22077c);
                j.a();
                GLES20.glDrawArrays(aVar.f22078d, 0, aVar.f22075a);
                j.a();
                GLES20.glDisableVertexAttribArray(bVar2.n);
                GLES20.glDisableVertexAttribArray(bVar2.o);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
            boolean z = false;
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            if (f > 1.0f) {
                z = true;
            }
            Matrix.perspectiveM(this.f22065c, 0, z ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d) : 90.0f, f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            synchronized (this) {
                SphericalGLSurfaceView.a(SphericalGLSurfaceView.this, this.f22064b.a());
            }
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22062d = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.b(context.getSystemService("sensor"));
        this.f22059a = sensorManager;
        Sensor defaultSensor = af.f22275a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f22060b = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        c cVar = new c();
        this.f = cVar;
        a aVar = new a(cVar);
        e eVar = new e(context, aVar, 25.0f);
        this.e = eVar;
        this.f22061c = new com.google.android.exoplayer2.ui.spherical.a(((WindowManager) com.google.android.exoplayer2.util.a.b((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), eVar, aVar);
        this.j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(eVar);
    }

    private void a() {
        boolean z = this.j && this.k;
        Sensor sensor = this.f22060b;
        if (sensor != null && z != this.l) {
            if (z) {
                this.f22059a.registerListener(this.f22061c, sensor, 0);
            } else {
                this.f22059a.unregisterListener(this.f22061c);
            }
            this.l = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.g;
        Surface surface = this.h;
        this.g = surfaceTexture;
        Surface surface2 = new Surface(surfaceTexture);
        this.h = surface2;
        ac.d dVar = this.i;
        if (dVar != null) {
            dVar.b(surface2);
        }
        a(surfaceTexture2, surface);
    }

    private static void a(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    static /* synthetic */ void a(final SphericalGLSurfaceView sphericalGLSurfaceView, final SurfaceTexture surfaceTexture) {
        sphericalGLSurfaceView.f22062d.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$SphericalGLSurfaceView$5JQ5hiX0q5klIr57po54Sf_heBU
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.a(surfaceTexture);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        Surface surface = this.h;
        if (surface != null) {
            ac.d dVar = this.i;
            if (dVar != null) {
                dVar.a(surface);
            }
            a(this.g, this.h);
            this.g = null;
            this.h = null;
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f22062d.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$SphericalGLSurfaceView$9Cl1VRarzs8yx0h_Uqj_kM_RWiU
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.b();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.k = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.k = true;
        a();
    }

    public final void setDefaultStereoMode(int i) {
        this.f.k = i;
    }

    public final void setSingleTapListener(d dVar) {
        this.e.f22083a = dVar;
    }

    public final void setUseSensorRotation(boolean z) {
        this.j = z;
        a();
    }

    public final void setVideoComponent(ac.d dVar) {
        ac.d dVar2 = this.i;
        if (dVar != dVar2) {
            if (dVar2 != null) {
                Surface surface = this.h;
                if (surface != null) {
                    dVar2.a(surface);
                }
                this.i.b((i) this.f);
                this.i.b((com.google.android.exoplayer2.video.a.a) this.f);
            }
            this.i = dVar;
            if (dVar != null) {
                dVar.a((i) this.f);
                this.i.a((com.google.android.exoplayer2.video.a.a) this.f);
                this.i.b(this.h);
            }
        }
    }
}
