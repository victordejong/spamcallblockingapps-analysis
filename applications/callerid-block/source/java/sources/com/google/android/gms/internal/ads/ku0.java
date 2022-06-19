package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ku0.class */
public final class ku0 implements SensorEventListener {

    /* renamed from: a */
    private final Context f7067a;
    @Nullable

    /* renamed from: b */
    private SensorManager f7068b;

    /* renamed from: c */
    private Sensor f7069c;

    /* renamed from: d */
    private long f7070d;

    /* renamed from: e */
    private int f7071e;

    /* renamed from: f */
    private ju0 f7072f;
    @GuardedBy("this")

    /* renamed from: g */
    private boolean f7073g;

    ku0(Context context) {
        this.f7067a = context;
    }

    /* renamed from: a */
    public final void m6754a(ju0 ju0Var) {
        this.f7072f = ju0Var;
    }

    /* renamed from: b */
    public final void m6753b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7488q5)).booleanValue()) {
                return;
            }
            if (this.f7068b == null) {
                SensorManager sensorManager2 = (SensorManager) this.f7067a.getSystemService("sensor");
                this.f7068b = sensorManager2;
                if (sensorManager2 == null) {
                    C1894po.m6180f("Shake detection failed to initialize. Failed to obtain accelerometer.");
                    return;
                }
                this.f7069c = sensorManager2.getDefaultSensor(1);
            }
            if (!this.f7073g && (sensorManager = this.f7068b) != null && (sensor = this.f7069c) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f7070d = C1407r.m8913k().m8247a() - ((Integer) C1674c.m7906c().m6878b(C1842m3.f7502s5)).intValue();
                this.f7073g = true;
                y0.k("Listening for shake gestures.");
            }
        }
    }

    /* renamed from: c */
    public final void m6752c() {
        synchronized (this) {
            if (this.f7073g) {
                SensorManager sensorManager = this.f7068b;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.f7069c);
                    y0.k("Stopped listening for shake gestures.");
                }
                this.f7073g = false;
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7488q5)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) < ((Float) C1674c.m7906c().m6878b(C1842m3.f7495r5)).floatValue()) {
                return;
            }
            long m8247a = C1407r.m8913k().m8247a();
            if (this.f7070d + ((Integer) C1674c.m7906c().m6878b(C1842m3.f7502s5)).intValue() > m8247a) {
                return;
            }
            if (this.f7070d + ((Integer) C1674c.m7906c().m6878b(C1842m3.f7509t5)).intValue() < m8247a) {
                this.f7071e = 0;
            }
            y0.k("Shake detected.");
            this.f7070d = m8247a;
            int i = this.f7071e + 1;
            this.f7071e = i;
            zt0 zt0Var = this.f7072f;
            if (zt0Var == null) {
                return;
            }
            if (i != ((Integer) C1674c.m7906c().m6878b(C1842m3.f7516u5)).intValue()) {
                return;
            }
            zt0 zt0Var2 = zt0Var;
            zt0Var2.h(new xt0(zt0Var2));
        }
    }
}
