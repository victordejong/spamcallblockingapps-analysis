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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pt0.class */
public final class pt0 implements SensorEventListener {
    @Nullable

    /* renamed from: a */
    private final SensorManager f8157a;
    @Nullable

    /* renamed from: b */
    private final Sensor f8158b;

    /* renamed from: c */
    private float f8159c = 0.0f;

    /* renamed from: d */
    private Float f8160d = Float.valueOf(0.0f);

    /* renamed from: e */
    private long f8161e = C1407r.m8913k().m8247a();

    /* renamed from: f */
    private int f8162f = 0;

    /* renamed from: g */
    private boolean f8163g = false;

    /* renamed from: h */
    private boolean f8164h = false;
    @Nullable

    /* renamed from: i */
    private ot0 f8165i = null;
    @GuardedBy("this")

    /* renamed from: j */
    private boolean f8166j = false;

    pt0(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.f8157a = sensorManager;
        if (sensorManager != null) {
            this.f8158b = sensorManager.getDefaultSensor(4);
        } else {
            this.f8158b = null;
        }
    }

    /* renamed from: a */
    public final void m6166a(ot0 ot0Var) {
        this.f8165i = ot0Var;
    }

    /* renamed from: b */
    public final void m6165b() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7523v5)).booleanValue()) {
                return;
            }
            if (!this.f8166j && (sensorManager = this.f8157a) != null && (sensor = this.f8158b) != null) {
                sensorManager.registerListener(this, sensor, 2);
                this.f8166j = true;
                y0.k("Listening for flick gestures.");
            }
            if (this.f8157a != null && this.f8158b != null) {
                return;
            }
            C1894po.m6180f("Flick detection failed to initialize. Failed to obtain gyroscope.");
        }
    }

    /* renamed from: c */
    public final void m6164c() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            if (this.f8166j && (sensorManager = this.f8157a) != null && (sensor = this.f8158b) != null) {
                sensorManager.unregisterListener(this, sensor);
                this.f8166j = false;
                y0.k("Stopped listening for flick gestures.");
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7523v5)).booleanValue()) {
            return;
        }
        long m8247a = C1407r.m8913k().m8247a();
        if (this.f8161e + ((Integer) C1674c.m7906c().m6878b(C1842m3.f7537x5)).intValue() < m8247a) {
            this.f8162f = 0;
            this.f8161e = m8247a;
            this.f8163g = false;
            this.f8164h = false;
            this.f8159c = this.f8160d.floatValue();
        }
        Float valueOf = Float.valueOf(this.f8160d.floatValue() + (sensorEvent.values[1] * 4.0f));
        this.f8160d = valueOf;
        float floatValue = valueOf.floatValue();
        float f = this.f8159c;
        AbstractC1714e3<Float> abstractC1714e3 = C1842m3.f7530w5;
        if (floatValue > f + ((Float) C1674c.m7906c().m6878b(abstractC1714e3)).floatValue()) {
            this.f8159c = this.f8160d.floatValue();
            this.f8164h = true;
        } else if (this.f8160d.floatValue() < this.f8159c - ((Float) C1674c.m7906c().m6878b(abstractC1714e3)).floatValue()) {
            this.f8159c = this.f8160d.floatValue();
            this.f8163g = true;
        }
        if (this.f8160d.isInfinite()) {
            this.f8160d = Float.valueOf(0.0f);
            this.f8159c = 0.0f;
        }
        if (!this.f8163g || !this.f8164h) {
            return;
        }
        y0.k("Flick detected.");
        this.f8161e = m8247a;
        int i = this.f8162f + 1;
        this.f8162f = i;
        this.f8163g = false;
        this.f8164h = false;
        zt0 zt0Var = this.f8165i;
        if (zt0Var == null) {
            return;
        }
        if (i != ((Integer) C1674c.m7906c().m6878b(C1842m3.f7544y5)).intValue()) {
            return;
        }
        zt0 zt0Var2 = zt0Var;
        zt0Var2.h(new yt0(zt0Var2));
    }
}
