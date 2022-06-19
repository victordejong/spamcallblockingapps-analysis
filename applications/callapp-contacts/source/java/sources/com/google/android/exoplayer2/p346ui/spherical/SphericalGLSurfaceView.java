package com.google.android.exoplayer2.p346ui.spherical;

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
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.p346ui.spherical.C11513a;
import com.google.android.exoplayer2.p346ui.spherical.C11515b;
import com.google.android.exoplayer2.p346ui.spherical.View$OnTouchListenerC11519e;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11610j;
import com.google.android.exoplayer2.video.AbstractC11658i;
import com.google.android.exoplayer2.video.p347a.AbstractC11641a;
import com.google.android.exoplayer2.video.p347a.C11643c;
import com.google.android.exoplayer2.video.p347a.C11644d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView.class */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: a */
    private final SensorManager f38255a;

    /* renamed from: b */
    private final Sensor f38256b;

    /* renamed from: c */
    private final C11513a f38257c;

    /* renamed from: d */
    private final Handler f38258d;

    /* renamed from: e */
    private final View$OnTouchListenerC11519e f38259e;

    /* renamed from: f */
    private final C11517c f38260f;

    /* renamed from: g */
    private SurfaceTexture f38261g;

    /* renamed from: h */
    private Surface f38262h;

    /* renamed from: i */
    private AbstractC10842ac.AbstractC10846d f38263i;

    /* renamed from: j */
    private boolean f38264j;

    /* renamed from: k */
    private boolean f38265k;

    /* renamed from: l */
    private boolean f38266l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView$a.class */
    public final class C11512a implements GLSurfaceView.Renderer, C11513a.AbstractC11514a, View$OnTouchListenerC11519e.AbstractC11520a {

        /* renamed from: b */
        private final C11517c f38268b;

        /* renamed from: e */
        private final float[] f38271e;

        /* renamed from: f */
        private final float[] f38272f;

        /* renamed from: g */
        private final float[] f38273g;

        /* renamed from: h */
        private float f38274h;

        /* renamed from: c */
        private final float[] f38269c = new float[16];

        /* renamed from: d */
        private final float[] f38270d = new float[16];

        /* renamed from: j */
        private final float[] f38276j = new float[16];

        /* renamed from: k */
        private final float[] f38277k = new float[16];

        /* renamed from: i */
        private float f38275i = 3.1415927f;

        public C11512a(C11517c c11517c) {
            SphericalGLSurfaceView.this = r4;
            float[] fArr = new float[16];
            this.f38271e = fArr;
            float[] fArr2 = new float[16];
            this.f38272f = fArr2;
            float[] fArr3 = new float[16];
            this.f38273g = fArr3;
            this.f38268b = c11517c;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
        }

        /* renamed from: a */
        private void m20221a() {
            Matrix.setRotateM(this.f38272f, 0, -this.f38274h, (float) Math.cos(this.f38275i), (float) Math.sin(this.f38275i), BitmapDescriptorFactory.HUE_RED);
        }

        @Override // com.google.android.exoplayer2.p346ui.spherical.View$OnTouchListenerC11519e.AbstractC11520a
        /* renamed from: a */
        public final void mo20214a(PointF pointF) {
            synchronized (this) {
                this.f38274h = pointF.y;
                m20221a();
                Matrix.setRotateM(this.f38273g, 0, -pointF.x, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // com.google.android.exoplayer2.p346ui.spherical.C11513a.AbstractC11514a
        /* renamed from: a */
        public final void mo20215a(float[] fArr, float f) {
            synchronized (this) {
                float[] fArr2 = this.f38271e;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                this.f38275i = -f;
                m20221a();
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f38277k, 0, this.f38271e, 0, this.f38273g, 0);
                Matrix.multiplyMM(this.f38276j, 0, this.f38272f, 0, this.f38277k, 0);
            }
            Matrix.multiplyMM(this.f38270d, 0, this.f38269c, 0, this.f38276j, 0);
            C11517c c11517c = this.f38268b;
            float[] fArr = this.f38270d;
            GLES20.glClear(16384);
            C11610j.m19892a();
            if (c11517c.f38305a.compareAndSet(true, false)) {
                ((SurfaceTexture) C11593a.m20020b(c11517c.f38314j)).updateTexImage();
                C11610j.m19892a();
                if (c11517c.f38306b.compareAndSet(true, false)) {
                    Matrix.setIdentityM(c11517c.f38311g, 0);
                }
                long timestamp = c11517c.f38314j.getTimestamp();
                Long m20012b = c11517c.f38309e.m20012b(timestamp);
                if (m20012b != null) {
                    C11643c c11643c = c11517c.f38308d;
                    float[] fArr2 = c11517c.f38311g;
                    float[] m20016a = c11643c.f38787c.m20016a(m20012b.longValue());
                    if (m20016a != null) {
                        float[] fArr3 = c11643c.f38786b;
                        float f = m20016a[0];
                        float f2 = -m20016a[1];
                        float f3 = -m20016a[2];
                        float length = Matrix.length(f, f2, f3);
                        if (length != BitmapDescriptorFactory.HUE_RED) {
                            Matrix.setRotateM(fArr3, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
                        } else {
                            Matrix.setIdentityM(fArr3, 0);
                        }
                        if (!c11643c.f38788d) {
                            C11643c.m19745a(c11643c.f38785a, c11643c.f38786b);
                            c11643c.f38788d = true;
                        }
                        Matrix.multiplyMM(fArr2, 0, c11643c.f38785a, 0, c11643c.f38786b, 0);
                    }
                }
                C11644d m20016a2 = c11517c.f38310f.m20016a(timestamp);
                if (m20016a2 != null) {
                    C11515b c11515b = c11517c.f38307c;
                    if (C11515b.m20219a(m20016a2)) {
                        c11515b.f38292h = m20016a2.f38791c;
                        c11515b.f38293i = new C11515b.C11516a(m20016a2.f38789a.f38793a[0]);
                        c11515b.f38294j = m20016a2.f38792d ? c11515b.f38293i : new C11515b.C11516a(m20016a2.f38790b.f38793a[0]);
                    }
                }
            }
            Matrix.multiplyMM(c11517c.f38312h, 0, fArr, 0, c11517c.f38311g, 0);
            C11515b c11515b2 = c11517c.f38307c;
            int i = c11517c.f38313i;
            float[] fArr4 = c11517c.f38312h;
            C11515b.C11516a c11516a = c11515b2.f38293i;
            if (c11516a != null) {
                GLES20.glUseProgram(c11515b2.f38295k);
                C11610j.m19892a();
                GLES20.glEnableVertexAttribArray(c11515b2.f38298n);
                GLES20.glEnableVertexAttribArray(c11515b2.f38299o);
                C11610j.m19892a();
                GLES20.glUniformMatrix3fv(c11515b2.f38297m, 1, false, c11515b2.f38292h == 1 ? C11515b.f38288d : c11515b2.f38292h == 2 ? C11515b.f38290f : C11515b.f38287c, 0);
                GLES20.glUniformMatrix4fv(c11515b2.f38296l, 1, false, fArr4, 0);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(36197, i);
                GLES20.glUniform1i(c11515b2.f38300p, 0);
                C11610j.m19892a();
                GLES20.glVertexAttribPointer(c11515b2.f38298n, 3, 5126, false, 12, (Buffer) c11516a.f38302b);
                C11610j.m19892a();
                GLES20.glVertexAttribPointer(c11515b2.f38299o, 2, 5126, false, 8, (Buffer) c11516a.f38303c);
                C11610j.m19892a();
                GLES20.glDrawArrays(c11516a.f38304d, 0, c11516a.f38301a);
                C11610j.m19892a();
                GLES20.glDisableVertexAttribArray(c11515b2.f38298n);
                GLES20.glDisableVertexAttribArray(c11515b2.f38299o);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            boolean z = false;
            if (f > 1.0f) {
                z = true;
            }
            Matrix.perspectiveM(this.f38269c, 0, z ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f)) * 2.0d) : 90.0f, f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            synchronized (this) {
                SphericalGLSurfaceView.m20223a(SphericalGLSurfaceView.this, this.f38268b.m20218a());
            }
        }
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38258d = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) C11593a.m20020b(context.getSystemService("sensor"));
        this.f38255a = sensorManager;
        Sensor defaultSensor = C11599af.f38648a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f38256b = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        C11517c c11517c = new C11517c();
        this.f38260f = c11517c;
        C11512a c11512a = new C11512a(c11517c);
        View$OnTouchListenerC11519e view$OnTouchListenerC11519e = new View$OnTouchListenerC11519e(context, c11512a, 25.0f);
        this.f38259e = view$OnTouchListenerC11519e;
        this.f38257c = new C11513a(((WindowManager) C11593a.m20020b((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), view$OnTouchListenerC11519e, c11512a);
        this.f38264j = true;
        setEGLContextClientVersion(2);
        setRenderer(c11512a);
        setOnTouchListener(view$OnTouchListenerC11519e);
    }

    /* renamed from: a */
    private void m20226a() {
        boolean z = this.f38264j && this.f38265k;
        Sensor sensor = this.f38256b;
        if (sensor == null || z == this.f38266l) {
            return;
        }
        if (z) {
            this.f38255a.registerListener(this.f38257c, sensor, 0);
        } else {
            this.f38255a.unregisterListener(this.f38257c);
        }
        this.f38266l = z;
    }

    /* renamed from: a */
    public /* synthetic */ void m20225a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f38261g;
        Surface surface = this.f38262h;
        this.f38261g = surfaceTexture;
        Surface surface2 = new Surface(surfaceTexture);
        this.f38262h = surface2;
        AbstractC10842ac.AbstractC10846d abstractC10846d = this.f38263i;
        if (abstractC10846d != null) {
            abstractC10846d.mo22201b(surface2);
        }
        m20224a(surfaceTexture2, surface);
    }

    /* renamed from: a */
    private static void m20224a(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m20223a(SphericalGLSurfaceView sphericalGLSurfaceView, final SurfaceTexture surfaceTexture) {
        sphericalGLSurfaceView.f38258d.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$SphericalGLSurfaceView$5JQ5hiX0q5klIr57po54Sf_heBU
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m20225a(surfaceTexture);
            }
        });
    }

    /* renamed from: b */
    public /* synthetic */ void m20222b() {
        Surface surface = this.f38262h;
        if (surface != null) {
            AbstractC10842ac.AbstractC10846d abstractC10846d = this.f38263i;
            if (abstractC10846d != null) {
                abstractC10846d.mo22217a(surface);
            }
            m20224a(this.f38261g, this.f38262h);
            this.f38261g = null;
            this.f38262h = null;
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f38258d.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.spherical._$$Lambda$SphericalGLSurfaceView$9Cl1VRarzs8yx0h_Uqj_kM_RWiU
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.m20222b();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f38265k = false;
        m20226a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f38265k = true;
        m20226a();
    }

    public final void setDefaultStereoMode(int i) {
        this.f38260f.f38315k = i;
    }

    public final void setSingleTapListener(AbstractC11518d abstractC11518d) {
        this.f38259e.f38318a = abstractC11518d;
    }

    public final void setUseSensorRotation(boolean z) {
        this.f38264j = z;
        m20226a();
    }

    public final void setVideoComponent(AbstractC10842ac.AbstractC10846d abstractC10846d) {
        AbstractC10842ac.AbstractC10846d abstractC10846d2 = this.f38263i;
        if (abstractC10846d == abstractC10846d2) {
            return;
        }
        if (abstractC10846d2 != null) {
            Surface surface = this.f38262h;
            if (surface != null) {
                abstractC10846d2.mo22217a(surface);
            }
            this.f38263i.mo22195b((AbstractC11658i) this.f38260f);
            this.f38263i.mo22196b((AbstractC11641a) this.f38260f);
        }
        this.f38263i = abstractC10846d;
        if (abstractC10846d == null) {
            return;
        }
        abstractC10846d.mo22205a((AbstractC11658i) this.f38260f);
        this.f38263i.mo22207a((AbstractC11641a) this.f38260f);
        this.f38263i.mo22201b(this.f38262h);
    }
}
