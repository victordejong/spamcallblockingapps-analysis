package com.google.android.exoplayer2.p492ui.spherical;

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
import com.google.android.exoplayer2.p492ui.spherical.SphericalGLSurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.p199e1.p200o.AbstractC2812g;
import p131c.p161d.p170b.p188c.p199e1.p200o.C2807d;
import p131c.p161d.p170b.p188c.p199e1.p200o.C2811f;
import p131c.p161d.p170b.p188c.p199e1.p200o.View$OnTouchListenerC2813h;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2925n;
import p131c.p161d.p170b.p188c.p204h1.p205r.AbstractC2932a;
/* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView.class */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: a */
    public final SensorManager f22512a;

    /* renamed from: b */
    public final Sensor f22513b;

    /* renamed from: c */
    public final C2807d f22514c;

    /* renamed from: d */
    public final Handler f22515d;

    /* renamed from: e */
    public final View$OnTouchListenerC2813h f22516e;

    /* renamed from: f */
    public final C2811f f22517f;

    /* renamed from: g */
    public SurfaceTexture f22518g;

    /* renamed from: h */
    public Surface f22519h;

    /* renamed from: i */
    public AbstractC2941j0.AbstractC2945d f22520i;

    /* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a.class */
    public class C7198a implements GLSurfaceView.Renderer, View$OnTouchListenerC2813h.AbstractC2814a, C2807d.AbstractC2808a {

        /* renamed from: a */
        public final C2811f f22521a;

        /* renamed from: d */
        public final float[] f22524d;

        /* renamed from: g */
        public float f22527g;

        /* renamed from: b */
        public final float[] f22522b = new float[16];

        /* renamed from: c */
        public final float[] f22523c = new float[16];

        /* renamed from: e */
        public final float[] f22525e = new float[16];

        /* renamed from: f */
        public final float[] f22526f = new float[16];

        /* renamed from: i */
        public final float[] f22529i = new float[16];

        /* renamed from: j */
        public final float[] f22530j = new float[16];

        /* renamed from: h */
        public float f22528h = 3.1415927f;

        public C7198a(C2811f fVar) {
            float[] fArr = new float[16];
            this.f22524d = fArr;
            this.f22521a = fVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(this.f22525e, 0);
            Matrix.setIdentityM(this.f22526f, 0);
        }

        /* renamed from: a */
        public final float m18292a(float f) {
            if (!(f > 1.0f)) {
                return 90.0f;
            }
            double tan = Math.tan(Math.toRadians(45.0d));
            double d = f;
            Double.isNaN(d);
            return (float) (Math.toDegrees(Math.atan(tan / d)) * 2.0d);
        }

        /* renamed from: a */
        public final void m18293a() {
            Matrix.setRotateM(this.f22525e, 0, -this.f22527g, (float) Math.cos(this.f22528h), (float) Math.sin(this.f22528h), 0.0f);
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.p200o.View$OnTouchListenerC2813h.AbstractC2814a
        /* renamed from: a */
        public void mo18291a(PointF pointF) {
            synchronized (this) {
                this.f22527g = pointF.y;
                m18293a();
                Matrix.setRotateM(this.f22526f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.p200o.C2807d.AbstractC2808a
        /* renamed from: a */
        public void mo18290a(float[] fArr, float f) {
            synchronized (this) {
                System.arraycopy(fArr, 0, this.f22524d, 0, this.f22524d.length);
                this.f22528h = -f;
                m18293a();
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f22530j, 0, this.f22524d, 0, this.f22526f, 0);
                Matrix.multiplyMM(this.f22529i, 0, this.f22525e, 0, this.f22530j, 0);
            }
            Matrix.multiplyMM(this.f22523c, 0, this.f22522b, 0, this.f22529i, 0);
            this.f22521a.m28975a(this.f22523c, false);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            Matrix.perspectiveM(this.f22522b, 0, m18292a(f), f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            synchronized (this) {
                SphericalGLSurfaceView.this.m18294b(this.f22521a.m28979a());
            }
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22515d = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        C2877e.m28737a(systemService);
        SensorManager sensorManager = (SensorManager) systemService;
        this.f22512a = sensorManager;
        Sensor defaultSensor = C2885h0.f10477a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f22513b = defaultSensor == null ? this.f22512a.getDefaultSensor(11) : defaultSensor;
        C2811f fVar = new C2811f();
        this.f22517f = fVar;
        C7198a aVar = new C7198a(fVar);
        this.f22516e = new View$OnTouchListenerC2813h(context, aVar, 25.0f);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        C2877e.m28737a(windowManager);
        this.f22514c = new C2807d(windowManager.getDefaultDisplay(), this.f22516e, aVar);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(this.f22516e);
    }

    /* renamed from: a */
    public static void m18296a(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m18298a() {
        Surface surface = this.f22519h;
        if (surface != null) {
            AbstractC2941j0.AbstractC2945d dVar = this.f22520i;
            if (dVar != null) {
                dVar.m28428b(surface);
            }
            m18296a(this.f22518g, this.f22519h);
            this.f22518g = null;
            this.f22519h = null;
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m18297a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f22518g;
        Surface surface = this.f22519h;
        this.f22518g = surfaceTexture;
        Surface surface2 = new Surface(surfaceTexture);
        this.f22519h = surface2;
        AbstractC2941j0.AbstractC2945d dVar = this.f22520i;
        if (dVar != null) {
            dVar.m28435a(surface2);
        }
        m18296a(surfaceTexture2, surface);
    }

    /* renamed from: b */
    public final void m18294b(final SurfaceTexture surfaceTexture) {
        this.f22515d.post(new Runnable() { // from class: c.d.b.c.e1.o.b
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m18297a(surfaceTexture);
            }
        });
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f22515d.post(new Runnable() { // from class: c.d.b.c.e1.o.c
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m18298a();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        if (this.f22513b != null) {
            this.f22512a.unregisterListener(this.f22514c);
        }
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        Sensor sensor = this.f22513b;
        if (sensor != null) {
            this.f22512a.registerListener(this.f22514c, sensor, 0);
        }
    }

    public void setDefaultStereoMode(int i) {
        this.f22517f.m28978a(i);
    }

    public void setSingleTapListener(AbstractC2812g gVar) {
        this.f22516e.m28974a(gVar);
    }

    public void setVideoComponent(AbstractC2941j0.AbstractC2945d dVar) {
        AbstractC2941j0.AbstractC2945d dVar2 = this.f22520i;
        if (dVar != dVar2) {
            if (dVar2 != null) {
                Surface surface = this.f22519h;
                if (surface != null) {
                    dVar2.m28428b(surface);
                }
                this.f22520i.m28425b((AbstractC2925n) this.f22517f);
                this.f22520i.m28423b((AbstractC2932a) this.f22517f);
            }
            this.f22520i = dVar;
            if (dVar != null) {
                dVar.m28431a((AbstractC2925n) this.f22517f);
                this.f22520i.m28429a((AbstractC2932a) this.f22517f);
                this.f22520i.m28435a(this.f22519h);
            }
        }
    }
}
