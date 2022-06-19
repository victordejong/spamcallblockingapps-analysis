package com.google.android.exoplayer2.p260ui.spherical;

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
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.p260ui.spherical.C5451d;
import com.google.android.exoplayer2.p260ui.spherical.View$OnTouchListenerC5457h;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView.class */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: d */
    private final SensorManager f17598d;

    /* renamed from: e */
    private final Sensor f17599e;

    /* renamed from: f */
    private final C5451d f17600f;

    /* renamed from: g */
    private final Handler f17601g;

    /* renamed from: h */
    private final View$OnTouchListenerC5457h f17602h;

    /* renamed from: i */
    private final C5455f f17603i;

    /* renamed from: j */
    private SurfaceTexture f17604j;

    /* renamed from: k */
    private Surface f17605k;

    /* renamed from: l */
    private AbstractC5162o0.AbstractC5165c f17606l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a.class */
    public class C5447a implements GLSurfaceView.Renderer, View$OnTouchListenerC5457h.AbstractC5458a, C5451d.AbstractC5452a {

        /* renamed from: d */
        private final C5455f f17607d;

        /* renamed from: g */
        private final float[] f17610g;

        /* renamed from: h */
        private final float[] f17611h;

        /* renamed from: i */
        private final float[] f17612i;

        /* renamed from: j */
        private float f17613j;

        /* renamed from: e */
        private final float[] f17608e = new float[16];

        /* renamed from: f */
        private final float[] f17609f = new float[16];

        /* renamed from: l */
        private final float[] f17615l = new float[16];

        /* renamed from: m */
        private final float[] f17616m = new float[16];

        /* renamed from: k */
        private float f17614k = 3.1415927f;

        public C5447a(C5455f c5455f) {
            SphericalGLSurfaceView.this = r4;
            float[] fArr = new float[16];
            this.f17610g = fArr;
            float[] fArr2 = new float[16];
            this.f17611h = fArr2;
            float[] fArr3 = new float[16];
            this.f17612i = fArr3;
            this.f17607d = c5455f;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
        }

        /* renamed from: c */
        private float m19081c(float f) {
            if (f > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d);
            }
            return 90.0f;
        }

        /* renamed from: d */
        private void m19080d() {
            Matrix.setRotateM(this.f17611h, 0, -this.f17613j, (float) Math.cos(this.f17614k), (float) Math.sin(this.f17614k), 0.0f);
        }

        @Override // com.google.android.exoplayer2.p260ui.spherical.C5451d.AbstractC5452a
        /* renamed from: a */
        public void mo19060a(float[] fArr, float f) {
            synchronized (this) {
                float[] fArr2 = this.f17610g;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                this.f17614k = -f;
                m19080d();
            }
        }

        @Override // com.google.android.exoplayer2.p260ui.spherical.View$OnTouchListenerC5457h.AbstractC5458a
        /* renamed from: b */
        public void mo19058b(PointF pointF) {
            synchronized (this) {
                this.f17613j = pointF.y;
                m19080d();
                Matrix.setRotateM(this.f17612i, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f17616m, 0, this.f17610g, 0, this.f17612i, 0);
                Matrix.multiplyMM(this.f17615l, 0, this.f17611h, 0, this.f17616m, 0);
            }
            Matrix.multiplyMM(this.f17609f, 0, this.f17608e, 0, this.f17615l, 0);
            this.f17607d.m19066d(this.f17609f, false);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            Matrix.perspectiveM(this.f17608e, 0, m19081c(f), f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            synchronized (this) {
                SphericalGLSurfaceView.this.m19083f(this.f17607d.m19065e());
            }
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17601g = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) C5508e.m18911e(context.getSystemService("sensor"));
        this.f17598d = sensorManager;
        Sensor defaultSensor = C5515h0.f17876a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f17599e = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        C5455f c5455f = new C5455f();
        this.f17603i = c5455f;
        C5447a c5447a = new C5447a(c5455f);
        View$OnTouchListenerC5457h view$OnTouchListenerC5457h = new View$OnTouchListenerC5457h(context, c5447a, 25.0f);
        this.f17602h = view$OnTouchListenerC5457h;
        this.f17600f = new C5451d(((WindowManager) C5508e.m18911e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), view$OnTouchListenerC5457h, c5447a);
        setEGLContextClientVersion(2);
        setRenderer(c5447a);
        setOnTouchListener(view$OnTouchListenerC5457h);
    }

    /* renamed from: b */
    public /* synthetic */ void m19086c() {
        Surface surface = this.f17605k;
        if (surface != null) {
            AbstractC5162o0.AbstractC5165c abstractC5165c = this.f17606l;
            if (abstractC5165c != null) {
                abstractC5165c.mo18433i(surface);
            }
            m19082g(this.f17604j, this.f17605k);
            this.f17604j = null;
            this.f17605k = null;
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m19084e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f17604j;
        Surface surface = this.f17605k;
        this.f17604j = surfaceTexture;
        Surface surface2 = new Surface(surfaceTexture);
        this.f17605k = surface2;
        AbstractC5162o0.AbstractC5165c abstractC5165c = this.f17606l;
        if (abstractC5165c != null) {
            abstractC5165c.mo18449a(surface2);
        }
        m19082g(surfaceTexture2, surface);
    }

    /* renamed from: f */
    public void m19083f(final SurfaceTexture surfaceTexture) {
        this.f17601g.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical.c
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m19084e(surfaceTexture);
            }
        });
    }

    /* renamed from: g */
    private static void m19082g(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f17601g.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical.b
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m19086c();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        if (this.f17599e != null) {
            this.f17598d.unregisterListener(this.f17600f);
        }
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        Sensor sensor = this.f17599e;
        if (sensor != null) {
            this.f17598d.registerListener(this.f17600f, sensor, 0);
        }
    }

    public void setDefaultStereoMode(int i) {
        this.f17603i.m19062h(i);
    }

    public void setSingleTapListener(AbstractC5456g abstractC5456g) {
        this.f17602h.m19059b(abstractC5456g);
    }

    public void setVideoComponent(AbstractC5162o0.AbstractC5165c abstractC5165c) {
        AbstractC5162o0.AbstractC5165c abstractC5165c2 = this.f17606l;
        if (abstractC5165c == abstractC5165c2) {
            return;
        }
        if (abstractC5165c2 != null) {
            Surface surface = this.f17605k;
            if (surface != null) {
                abstractC5165c2.mo18433i(surface);
            }
            this.f17606l.mo18477C(this.f17603i);
            this.f17606l.mo18427l(this.f17603i);
        }
        this.f17606l = abstractC5165c;
        if (abstractC5165c == null) {
            return;
        }
        abstractC5165c.mo18445c(this.f17603i);
        this.f17606l.mo18447b(this.f17603i);
        this.f17606l.mo18449a(this.f17605k);
    }
}
