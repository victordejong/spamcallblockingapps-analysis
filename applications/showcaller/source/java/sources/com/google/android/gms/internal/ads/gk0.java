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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gk0.class */
final class gk0 implements SensorEventListener {

    /* renamed from: a */
    private final SensorManager f23374a;

    /* renamed from: c */
    private final Display f23376c;

    /* renamed from: f */
    private float[] f23379f;

    /* renamed from: g */
    private Handler f23380g;

    /* renamed from: h */
    private fk0 f23381h;

    /* renamed from: d */
    private final float[] f23377d = new float[9];

    /* renamed from: e */
    private final float[] f23378e = new float[9];

    /* renamed from: b */
    private final Object f23375b = new Object();

    public gk0(Context context) {
        this.f23374a = (SensorManager) context.getSystemService("sensor");
        this.f23376c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    public final void m14920a() {
        if (this.f23380g != null) {
            return;
        }
        Sensor defaultSensor = this.f23374a.getDefaultSensor(11);
        if (defaultSensor == null) {
            ei0.m15467c("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        au2 au2Var = new au2(handlerThread.getLooper());
        this.f23380g = au2Var;
        if (this.f23374a.registerListener(this, defaultSensor, 0, au2Var)) {
            return;
        }
        ei0.m15467c("SensorManager.registerListener failed.");
        m14919b();
    }

    /* renamed from: b */
    public final void m14919b() {
        if (this.f23380g == null) {
            return;
        }
        this.f23374a.unregisterListener(this);
        this.f23380g.post(new ek0(this));
        this.f23380g = null;
    }

    /* renamed from: c */
    public final void m14918c(fk0 fk0Var) {
        this.f23381h = fk0Var;
    }

    /* renamed from: d */
    public final boolean m14917d(float[] fArr) {
        synchronized (this.f23375b) {
            float[] fArr2 = this.f23379f;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, 9);
            return true;
        }
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
        synchronized (this.f23375b) {
            if (this.f23379f == null) {
                this.f23379f = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f23377d, fArr);
        int rotation = this.f23376c.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f23377d, 2, 129, this.f23378e);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f23377d, 129, 130, this.f23378e);
        } else if (rotation != 3) {
            System.arraycopy(this.f23377d, 0, this.f23378e, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f23377d, 130, 1, this.f23378e);
        }
        float[] fArr2 = this.f23378e;
        float f = fArr2[1];
        fArr2[1] = fArr2[3];
        fArr2[3] = f;
        float f2 = fArr2[2];
        fArr2[2] = fArr2[6];
        fArr2[6] = f2;
        float f3 = fArr2[5];
        fArr2[5] = fArr2[7];
        fArr2[7] = f3;
        synchronized (this.f23375b) {
            System.arraycopy(this.f23378e, 0, this.f23379f, 0, 9);
        }
        fk0 fk0Var = this.f23381h;
        if (fk0Var == null) {
            return;
        }
        fk0Var.zza();
    }
}
