package com.facebook.p094a.p096b;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
/* renamed from: com.facebook.a.b.f */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/f.class */
class C1846f implements SensorEventListener {

    /* renamed from: a */
    private AbstractC1847a f5620a;

    /* renamed from: com.facebook.a.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/f$a.class */
    public interface AbstractC1847a {
        /* renamed from: a */
        void mo16109a();
    }

    /* renamed from: a */
    public void m16110a(AbstractC1847a abstractC1847a) {
        this.f5620a = abstractC1847a;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.f5620a != null) {
            float f = sensorEvent.values[0];
            double d = f / 9.80665f;
            double d2 = sensorEvent.values[1] / 9.80665f;
            double d3 = sensorEvent.values[2] / 9.80665f;
            if (Math.sqrt((d2 * d2) + (d * d) + (d3 * d3)) <= 2.299999952316284d) {
                return;
            }
            this.f5620a.mo16109a();
        }
    }
}
