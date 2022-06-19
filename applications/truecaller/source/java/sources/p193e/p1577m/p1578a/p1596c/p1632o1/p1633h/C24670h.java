package p193e.p1577m.p1578a.p1596c.p1632o1.p1633h;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.WindowManager;
import java.nio.Buffer;
import java.util.Objects;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24664d;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24666e;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.View$OnTouchListenerC24672i;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24769b0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24838c;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24839d;
/* renamed from: e.m.a.c.o1.h.h */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/h.class */
public final class C24670h extends GLSurfaceView {

    /* renamed from: a */
    public final SensorManager f69124a;

    /* renamed from: b */
    public final Sensor f69125b;

    /* renamed from: c */
    public final C24664d f69126c;

    /* renamed from: d */
    public final Handler f69127d = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    public final View$OnTouchListenerC24672i f69128e;

    /* renamed from: f */
    public final C24668f f69129f;

    /* renamed from: g */
    public SurfaceTexture f69130g;

    /* renamed from: h */
    public Surface f69131h;

    /* renamed from: i */
    public AbstractC24760q0.AbstractC24765e f69132i;

    /* renamed from: j */
    public boolean f69133j;

    /* renamed from: k */
    public boolean f69134k;

    /* renamed from: l */
    public boolean f69135l;

    /* renamed from: e.m.a.c.o1.h.h$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/h$a.class */
    public class C24671a implements GLSurfaceView.Renderer, View$OnTouchListenerC24672i.AbstractC24673a, C24664d.AbstractC24665a {

        /* renamed from: a */
        public final C24668f f69136a;

        /* renamed from: d */
        public final float[] f69139d;

        /* renamed from: e */
        public final float[] f69140e;

        /* renamed from: f */
        public final float[] f69141f;

        /* renamed from: g */
        public float f69142g;

        /* renamed from: b */
        public final float[] f69137b = new float[16];

        /* renamed from: c */
        public final float[] f69138c = new float[16];

        /* renamed from: i */
        public final float[] f69144i = new float[16];

        /* renamed from: j */
        public final float[] f69145j = new float[16];

        /* renamed from: h */
        public float f69143h = 3.1415927f;

        public C24671a(C24668f c24668f) {
            C24670h.this = r4;
            float[] fArr = new float[16];
            this.f69139d = fArr;
            float[] fArr2 = new float[16];
            this.f69140e = fArr2;
            float[] fArr3 = new float[16];
            this.f69141f = fArr3;
            this.f69136a = c24668f;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24664d.AbstractC24665a
        /* renamed from: a */
        public void mo4778a(float[] fArr, float f) {
            synchronized (this) {
                float[] fArr2 = this.f69139d;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                this.f69143h = -f;
                m4779b();
            }
        }

        /* renamed from: b */
        public final void m4779b() {
            Matrix.setRotateM(this.f69140e, 0, -this.f69142g, (float) Math.cos(this.f69143h), (float) Math.sin(this.f69143h), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            Long m4635d;
            synchronized (this) {
                Matrix.multiplyMM(this.f69145j, 0, this.f69139d, 0, this.f69141f, 0);
                Matrix.multiplyMM(this.f69144i, 0, this.f69140e, 0, this.f69145j, 0);
            }
            Matrix.multiplyMM(this.f69138c, 0, this.f69137b, 0, this.f69144i, 0);
            C24668f c24668f = this.f69136a;
            float[] fArr = this.f69138c;
            Objects.requireNonNull(c24668f);
            GLES20.glClear(16384);
            C26232y.m2294v();
            if (c24668f.f69111a.compareAndSet(true, false)) {
                SurfaceTexture surfaceTexture = c24668f.f69120j;
                Objects.requireNonNull(surfaceTexture);
                surfaceTexture.updateTexImage();
                C26232y.m2294v();
                if (c24668f.f69112b.compareAndSet(true, false)) {
                    Matrix.setIdentityM(c24668f.f69117g, 0);
                }
                long timestamp = c24668f.f69120j.getTimestamp();
                C24769b0<Long> c24769b0 = c24668f.f69115e;
                synchronized (c24769b0) {
                    m4635d = c24769b0.m4635d(timestamp, false);
                }
                Long l = m4635d;
                if (l != null) {
                    C24838c c24838c = c24668f.f69114d;
                    float[] fArr2 = c24668f.f69117g;
                    float[] m4634e = c24838c.f69657c.m4634e(l.longValue());
                    if (m4634e != null) {
                        float[] fArr3 = c24838c.f69656b;
                        float f = m4634e[0];
                        float f2 = -m4634e[1];
                        float f3 = -m4634e[2];
                        float length = Matrix.length(f, f2, f3);
                        if (length != 0.0f) {
                            Matrix.setRotateM(fArr3, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
                        } else {
                            Matrix.setIdentityM(fArr3, 0);
                        }
                        if (!c24838c.f69658d) {
                            C24838c.m4427a(c24838c.f69655a, c24838c.f69656b);
                            c24838c.f69658d = true;
                        }
                        Matrix.multiplyMM(fArr2, 0, c24838c.f69655a, 0, c24838c.f69656b, 0);
                    }
                }
                C24839d m4634e2 = c24668f.f69116f.m4634e(timestamp);
                if (m4634e2 != null) {
                    C24666e c24666e = c24668f.f69113c;
                    Objects.requireNonNull(c24666e);
                    if (C24666e.m4782a(m4634e2)) {
                        c24666e.f69098a = m4634e2.f69661c;
                        C24666e.C24667a c24667a = new C24666e.C24667a(m4634e2.f69659a.f69663a[0]);
                        c24666e.f69099b = c24667a;
                        if (!m4634e2.f69662d) {
                            c24667a = new C24666e.C24667a(m4634e2.f69660b.f69663a[0]);
                        }
                        c24666e.f69100c = c24667a;
                    }
                }
            }
            Matrix.multiplyMM(c24668f.f69118h, 0, fArr, 0, c24668f.f69117g, 0);
            C24666e c24666e2 = c24668f.f69113c;
            int i = c24668f.f69119i;
            float[] fArr4 = c24668f.f69118h;
            C24666e.C24667a c24667a2 = c24666e2.f69099b;
            if (c24667a2 == null) {
                return;
            }
            GLES20.glUseProgram(c24666e2.f69101d);
            C26232y.m2294v();
            GLES20.glEnableVertexAttribArray(c24666e2.f69104g);
            GLES20.glEnableVertexAttribArray(c24666e2.f69105h);
            C26232y.m2294v();
            int i2 = c24666e2.f69098a;
            GLES20.glUniformMatrix3fv(c24666e2.f69103f, 1, false, i2 == 1 ? C24666e.f69094m : i2 == 2 ? C24666e.f69096o : C24666e.f69093l, 0);
            GLES20.glUniformMatrix4fv(c24666e2.f69102e, 1, false, fArr4, 0);
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, i);
            GLES20.glUniform1i(c24666e2.f69106i, 0);
            C26232y.m2294v();
            GLES20.glVertexAttribPointer(c24666e2.f69104g, 3, 5126, false, 12, (Buffer) c24667a2.f69108b);
            C26232y.m2294v();
            GLES20.glVertexAttribPointer(c24666e2.f69105h, 2, 5126, false, 8, (Buffer) c24667a2.f69109c);
            C26232y.m2294v();
            GLES20.glDrawArrays(c24667a2.f69110d, 0, c24667a2.f69107a);
            C26232y.m2294v();
            GLES20.glDisableVertexAttribArray(c24666e2.f69104g);
            GLES20.glDisableVertexAttribArray(c24666e2.f69105h);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            boolean z = false;
            if (f > 1.0f) {
                z = true;
            }
            Matrix.perspectiveM(this.f69137b, 0, z ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d) : 90.0f, f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            synchronized (this) {
                final C24670h c24670h = C24670h.this;
                final SurfaceTexture m4781d = this.f69136a.m4781d();
                c24670h.f69127d.post(new Runnable() { // from class: e.m.a.c.o1.h.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        C24670h c24670h2 = C24670h.this;
                        SurfaceTexture surfaceTexture = m4781d;
                        SurfaceTexture surfaceTexture2 = c24670h2.f69130g;
                        Surface surface = c24670h2.f69131h;
                        c24670h2.f69130g = surfaceTexture;
                        Surface surface2 = new Surface(surfaceTexture);
                        c24670h2.f69131h = surface2;
                        AbstractC24760q0.AbstractC24765e abstractC24765e = c24670h2.f69132i;
                        if (abstractC24765e != null) {
                            abstractC24765e.setVideoSurface(surface2);
                        }
                        if (surfaceTexture2 != null) {
                            surfaceTexture2.release();
                        }
                        if (surface != null) {
                            surface.release();
                        }
                    }
                });
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24670h(Context context) {
        super(context, null);
        Sensor sensor = null;
        Object systemService = context.getSystemService("sensor");
        Objects.requireNonNull(systemService);
        SensorManager sensorManager = (SensorManager) systemService;
        this.f69124a = sensorManager;
        sensor = C24773d0.f69427a >= 18 ? sensorManager.getDefaultSensor(15) : sensor;
        this.f69125b = sensor == null ? sensorManager.getDefaultSensor(11) : sensor;
        C24668f c24668f = new C24668f();
        this.f69129f = c24668f;
        C24671a c24671a = new C24671a(c24668f);
        View$OnTouchListenerC24672i view$OnTouchListenerC24672i = new View$OnTouchListenerC24672i(context, c24671a, 25.0f);
        this.f69128e = view$OnTouchListenerC24672i;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Objects.requireNonNull(windowManager);
        this.f69126c = new C24664d(windowManager.getDefaultDisplay(), view$OnTouchListenerC24672i, c24671a);
        this.f69133j = true;
        setEGLContextClientVersion(2);
        setRenderer(c24671a);
        setOnTouchListener(view$OnTouchListenerC24672i);
    }

    /* renamed from: a */
    public final void m4780a() {
        boolean z = this.f69133j && this.f69134k;
        Sensor sensor = this.f69125b;
        if (sensor == null || z == this.f69135l) {
            return;
        }
        if (z) {
            this.f69124a.registerListener(this.f69126c, sensor, 0);
        } else {
            this.f69124a.unregisterListener(this.f69126c);
        }
        this.f69135l = z;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f69127d.post(new Runnable() { // from class: e.m.a.c.o1.h.b
            @Override // java.lang.Runnable
            public final void run() {
                C24670h c24670h = C24670h.this;
                Surface surface = c24670h.f69131h;
                if (surface != null) {
                    AbstractC24760q0.AbstractC24765e abstractC24765e = c24670h.f69132i;
                    if (abstractC24765e != null) {
                        abstractC24765e.clearVideoSurface(surface);
                    }
                    SurfaceTexture surfaceTexture = c24670h.f69130g;
                    Surface surface2 = c24670h.f69131h;
                    if (surfaceTexture != null) {
                        surfaceTexture.release();
                    }
                    if (surface2 != null) {
                        surface2.release();
                    }
                    c24670h.f69130g = null;
                    c24670h.f69131h = null;
                }
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f69134k = false;
        m4780a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f69134k = true;
        m4780a();
    }

    public void setDefaultStereoMode(int i) {
        this.f69129f.f69121k = i;
    }

    public void setSingleTapListener(AbstractC24669g abstractC24669g) {
        this.f69128e.f69153g = abstractC24669g;
    }

    public void setUseSensorRotation(boolean z) {
        this.f69133j = z;
        m4780a();
    }

    public void setVideoComponent(AbstractC24760q0.AbstractC24765e abstractC24765e) {
        AbstractC24760q0.AbstractC24765e abstractC24765e2 = this.f69132i;
        if (abstractC24765e == abstractC24765e2) {
            return;
        }
        if (abstractC24765e2 != null) {
            Surface surface = this.f69131h;
            if (surface != null) {
                abstractC24765e2.clearVideoSurface(surface);
            }
            this.f69132i.clearVideoFrameMetadataListener(this.f69129f);
            this.f69132i.clearCameraMotionListener(this.f69129f);
        }
        this.f69132i = abstractC24765e;
        if (abstractC24765e == null) {
            return;
        }
        abstractC24765e.setVideoFrameMetadataListener(this.f69129f);
        this.f69132i.setCameraMotionListener(this.f69129f);
        this.f69132i.setVideoSurface(this.f69131h);
    }
}
