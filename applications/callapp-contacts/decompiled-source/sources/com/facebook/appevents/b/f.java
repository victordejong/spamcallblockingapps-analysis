package com.facebook.appevents.b;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/f.class */
final class f implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    a f19499a;

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/f$a.class */
    public interface a {
        void a();
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
        if (com.facebook.internal.b.b.a.a(this)) {
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                if (this.f19499a != null) {
                    double d2 = sensorEvent.values[0] / 9.80665f;
                    double d3 = sensorEvent.values[1] / 9.80665f;
                    double d4 = sensorEvent.values[2] / 9.80665f;
                    if (Math.sqrt((d2 * d2) + (d3 * d3) + (d4 * d4)) > 2.299999952316284d) {
                        this.f19499a.a();
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
