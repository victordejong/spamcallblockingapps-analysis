package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zp1.class */
public final class zp1 implements SensorEventListener {

    /* renamed from: a */
    private final SensorManager f33056a;

    /* renamed from: b */
    private final Sensor f33057b;

    /* renamed from: c */
    private float f33058c = 0.0f;

    /* renamed from: d */
    private Float f33059d = Float.valueOf(0.0f);

    /* renamed from: e */
    private long f33060e = C5667s.m18153k().mo16807a();

    /* renamed from: f */
    private int f33061f = 0;

    /* renamed from: g */
    private boolean f33062g = false;

    /* renamed from: h */
    private boolean f33063h = false;

    /* renamed from: i */
    private yp1 f33064i = null;

    /* renamed from: j */
    private boolean f33065j = false;

    public zp1(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f33056a = sensorManager;
        if (sensorManager != null) {
            this.f33057b = sensorManager.getDefaultSensor(4);
        } else {
            this.f33057b = null;
        }
    }

    /* renamed from: a */
    public final void m8266a(yp1 yp1Var) {
        this.f33064i = yp1Var;
    }

    /* renamed from: b */
    public final void m8265b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25845y6)).booleanValue()) {
                return;
            }
            if (!this.f33065j && (sensorManager = this.f33056a) != null && (sensor = this.f33057b) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f33065j = true;
                C5722o1.m17990k("Listening for flick gestures.");
            }
            if (this.f33056a != null && this.f33057b != null) {
                return;
            }
            ei0.m15464f("Flick detection failed to initialize. Failed to obtain gyroscope.");
        }
    }

    /* renamed from: c */
    public final void m8264c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (this.f33065j && (sensorManager = this.f33056a) != null && (sensor = this.f33057b) != null) {
                sensorManager.unregisterListener(this, sensor);
                this.f33065j = false;
                C5722o1.m17990k("Stopped listening for flick gestures.");
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25845y6)).booleanValue()) {
            return;
        }
        long mo16807a = C5667s.m18153k().mo16807a();
        if (this.f33060e + ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25442A6)).intValue() < mo16807a) {
            this.f33061f = 0;
            this.f33060e = mo16807a;
            this.f33062g = false;
            this.f33063h = false;
            this.f33058c = this.f33059d.floatValue();
        }
        Float valueOf = Float.valueOf(this.f33059d.floatValue() + (sensorEvent.values[1] * 4.0f));
        this.f33059d = valueOf;
        float floatValue = valueOf.floatValue();
        float f = this.f33058c;
        AbstractC6381cw<Float> abstractC6381cw = C6679kw.f25853z6;
        if (floatValue > f + ((Float) C7192yr.m8714c().m14263c(abstractC6381cw)).floatValue()) {
            this.f33058c = this.f33059d.floatValue();
            this.f33063h = true;
        } else if (this.f33059d.floatValue() < this.f33058c - ((Float) C7192yr.m8714c().m14263c(abstractC6381cw)).floatValue()) {
            this.f33058c = this.f33059d.floatValue();
            this.f33062g = true;
        }
        if (this.f33059d.isInfinite()) {
            this.f33059d = Float.valueOf(0.0f);
            this.f33058c = 0.0f;
        }
        if (!this.f33062g || !this.f33063h) {
            return;
        }
        C5722o1.m17990k("Flick detected.");
        this.f33060e = mo16807a;
        int i = this.f33061f + 1;
        this.f33061f = i;
        this.f33062g = false;
        this.f33063h = false;
        yp1 yp1Var = this.f33064i;
        if (yp1Var == null) {
            return;
        }
        if (i != ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25450B6)).intValue()) {
            return;
        }
        lq1 lq1Var = (lq1) yp1Var;
        lq1Var.m13445k(new kq1(lq1Var), zzdyb.GESTURE);
    }
}
