package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaa.class */
final class aaa implements SensorEventListener {

    /* renamed from: a */
    private final SensorManager f7575a;

    /* renamed from: c */
    private final Display f7577c;
    @GuardedBy("sensorThreadLock")

    /* renamed from: f */
    private float[] f7580f;

    /* renamed from: g */
    private Handler f7581g;

    /* renamed from: h */
    private aac f7582h;

    /* renamed from: d */
    private final float[] f7578d = new float[9];

    /* renamed from: e */
    private final float[] f7579e = new float[9];

    /* renamed from: b */
    private final Object f7576b = new Object();

    public aaa(Context context) {
        this.f7575a = (SensorManager) context.getSystemService("sensor");
        this.f7577c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    private final void m13760a(int i, int i2) {
        float f = this.f7579e[i];
        this.f7579e[i] = this.f7579e[i2];
        this.f7579e[i2] = f;
    }

    /* renamed from: a */
    public final void m13761a() {
        if (this.f7581g != null) {
            return;
        }
        Sensor defaultSensor = this.f7575a.getDefaultSensor(11);
        if (defaultSensor == null) {
            C3556uu.m6749c("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.f7581g = new cnz(handlerThread.getLooper());
        if (this.f7575a.registerListener(this, defaultSensor, 0, this.f7581g)) {
            return;
        }
        C3556uu.m6749c("SensorManager.registerListener failed.");
        m13757b();
    }

    /* renamed from: a */
    public final void m13759a(aac aacVar) {
        this.f7582h = aacVar;
    }

    /* renamed from: a */
    public final boolean m13758a(float[] fArr) {
        boolean z = false;
        synchronized (this.f7576b) {
            if (this.f7580f != null) {
                System.arraycopy(this.f7580f, 0, fArr, 0, this.f7580f.length);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m13757b() {
        if (this.f7581g == null) {
            return;
        }
        this.f7575a.unregisterListener(this);
        this.f7581g.post(new RunnableC3696zz(this));
        this.f7581g = null;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.f7576b) {
            if (this.f7580f == null) {
                this.f7580f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f7578d, fArr);
        switch (this.f7577c.getRotation()) {
            case 1:
                SensorManager.remapCoordinateSystem(this.f7578d, 2, 129, this.f7579e);
                break;
            case 2:
                SensorManager.remapCoordinateSystem(this.f7578d, 129, 130, this.f7579e);
                break;
            case 3:
                SensorManager.remapCoordinateSystem(this.f7578d, 130, 1, this.f7579e);
                break;
            default:
                System.arraycopy(this.f7578d, 0, this.f7579e, 0, 9);
                break;
        }
        m13760a(1, 3);
        m13760a(2, 6);
        m13760a(5, 7);
        synchronized (this.f7576b) {
            System.arraycopy(this.f7579e, 0, this.f7580f, 0, 9);
        }
        if (this.f7582h == null) {
            return;
        }
        this.f7582h.mo13745c();
    }
}
