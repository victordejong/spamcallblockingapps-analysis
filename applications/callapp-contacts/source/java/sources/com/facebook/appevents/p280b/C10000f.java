package com.facebook.appevents.p280b;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.appevents.b.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/f.class */
final class C10000f implements SensorEventListener {

    /* renamed from: a */
    AbstractC10001a f33247a;

    /* renamed from: com.facebook.appevents.b.f$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/f$a.class */
    public interface AbstractC10001a {
        /* renamed from: a */
        void mo23646a();
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
        if (C10249a.m23108a(this)) {
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (this.f33247a == null) {
                return;
            }
            double d = sensorEvent.values[0] / 9.80665f;
            double d2 = sensorEvent.values[1] / 9.80665f;
            double d3 = sensorEvent.values[2] / 9.80665f;
            if (Math.sqrt((d * d) + (d2 * d2) + (d3 * d3)) <= 2.299999952316284d) {
                return;
            }
            this.f33247a.mo23646a();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
