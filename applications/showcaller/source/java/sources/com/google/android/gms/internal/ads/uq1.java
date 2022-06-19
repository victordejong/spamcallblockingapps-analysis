package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uq1.class */
public final class uq1 implements SensorEventListener {

    /* renamed from: a */
    private final Context f30930a;

    /* renamed from: b */
    private SensorManager f30931b;

    /* renamed from: c */
    private Sensor f30932c;

    /* renamed from: d */
    private long f30933d;

    /* renamed from: e */
    private int f30934e;

    /* renamed from: f */
    private tq1 f30935f;

    /* renamed from: g */
    private boolean f30936g;

    public uq1(Context context) {
        this.f30930a = context;
    }

    /* renamed from: a */
    public final void m10202a(tq1 tq1Var) {
        this.f30935f = tq1Var;
    }

    /* renamed from: b */
    public final void m10201b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25805t6)).booleanValue()) {
                return;
            }
            if (this.f30931b == null) {
                SensorManager sensorManager2 = (SensorManager) this.f30930a.getSystemService("sensor");
                this.f30931b = sensorManager2;
                if (sensorManager2 == null) {
                    ei0.m15464f("Shake detection failed to initialize. Failed to obtain accelerometer.");
                    return;
                }
                this.f30932c = sensorManager2.getDefaultSensor(1);
            }
            if (!this.f30936g && (sensorManager = this.f30931b) != null && (sensor = this.f30932c) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f30933d = C5667s.m18153k().mo16807a() - ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25821v6)).intValue();
                this.f30936g = true;
                C5722o1.m17990k("Listening for shake gestures.");
            }
        }
    }

    /* renamed from: c */
    public final void m10200c() {
        synchronized (this) {
            if (this.f30936g) {
                SensorManager sensorManager = this.f30931b;
                if (sensorManager != null) {
                    sensorManager.unregisterListener(this, this.f30932c);
                    C5722o1.m17990k("Stopped listening for shake gestures.");
                }
                this.f30936g = false;
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25805t6)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            if (((float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3))) < ((Float) C7192yr.m8714c().m14263c(C6679kw.f25813u6)).floatValue()) {
                return;
            }
            long mo16807a = C5667s.m18153k().mo16807a();
            if (this.f30933d + ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25821v6)).intValue() > mo16807a) {
                return;
            }
            if (this.f30933d + ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25829w6)).intValue() < mo16807a) {
                this.f30934e = 0;
            }
            C5722o1.m17990k("Shake detected.");
            this.f30933d = mo16807a;
            int i = this.f30934e + 1;
            this.f30934e = i;
            tq1 tq1Var = this.f30935f;
            if (tq1Var == null) {
                return;
            }
            if (i != ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25837x6)).intValue()) {
                return;
            }
            lq1 lq1Var = (lq1) tq1Var;
            lq1Var.m13445k(new iq1(lq1Var), zzdyb.GESTURE);
        }
    }
}
