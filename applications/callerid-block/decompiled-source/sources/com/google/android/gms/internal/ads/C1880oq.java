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
/* renamed from: com.google.android.gms.internal.ads.oq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oq.class */
final class C1880oq implements SensorEventListener {

    /* renamed from: a */
    private final SensorManager f7882a;

    /* renamed from: c */
    private final Display f7884c;
    @GuardedBy("sensorThreadLock")

    /* renamed from: f */
    private float[] f7887f;

    /* renamed from: g */
    private Handler f7888g;

    /* renamed from: h */
    private AbstractC1864nq f7889h;

    /* renamed from: d */
    private final float[] f7885d = new float[9];

    /* renamed from: e */
    private final float[] f7886e = new float[9];

    /* renamed from: b */
    private final Object f7883b = new Object();

    C1880oq(Context context) {
        this.f7882a = (SensorManager) context.getSystemService("sensor");
        this.f7884c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    final void m6270a() {
        if (this.f7888g == null) {
            Sensor defaultSensor = this.f7882a.getDefaultSensor(11);
            if (defaultSensor == null) {
                C1894po.m6183c("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            tv1 tv1Var = new tv1(handlerThread.getLooper());
            this.f7888g = tv1Var;
            if (!this.f7882a.registerListener(this, defaultSensor, 0, tv1Var)) {
                C1894po.m6183c("SensorManager.registerListener failed.");
                m6269b();
            }
        }
    }

    /* renamed from: b */
    final void m6269b() {
        if (this.f7888g != null) {
            this.f7882a.unregisterListener(this);
            this.f7888g.post(new RunnableC1851mq(this));
            this.f7888g = null;
        }
    }

    /* renamed from: c */
    final void m6268c(AbstractC1864nq nqVar) {
        this.f7889h = nqVar;
    }

    /* renamed from: d */
    final boolean m6267d(float[] fArr) {
        synchronized (this.f7883b) {
            float[] fArr2 = this.f7887f;
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
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.f7883b) {
                if (this.f7887f == null) {
                    this.f7887f = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.f7885d, fArr);
            int rotation = this.f7884c.getRotation();
            if (rotation == 1) {
                SensorManager.remapCoordinateSystem(this.f7885d, 2, 129, this.f7886e);
            } else if (rotation == 2) {
                SensorManager.remapCoordinateSystem(this.f7885d, 129, 130, this.f7886e);
            } else if (rotation != 3) {
                System.arraycopy(this.f7885d, 0, this.f7886e, 0, 9);
            } else {
                SensorManager.remapCoordinateSystem(this.f7885d, 130, 1, this.f7886e);
            }
            float[] fArr2 = this.f7886e;
            float f = fArr2[1];
            fArr2[1] = fArr2[3];
            fArr2[3] = f;
            float f2 = fArr2[2];
            fArr2[2] = fArr2[6];
            fArr2[6] = f2;
            float f3 = fArr2[5];
            fArr2[5] = fArr2[7];
            fArr2[7] = f3;
            synchronized (this.f7883b) {
                System.arraycopy(this.f7886e, 0, this.f7887f, 0, 9);
            }
            AbstractC1864nq nqVar = this.f7889h;
            if (nqVar != null) {
                nqVar.zza();
            }
        }
    }
}
