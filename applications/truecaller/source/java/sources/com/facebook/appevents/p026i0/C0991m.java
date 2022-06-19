package com.facebook.appevents.p026i0;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.facebook.internal.p037u0.p040m.C1220a;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018�� \u00102\u00020\u0001:\u0002\u0010\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexingTrigger;", "Landroid/hardware/SensorEventListener;", "()V", "onShakeListener", "Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;", "onAccuracyChanged", "", "sensor", "Landroid/hardware/Sensor;", "accuracy", "", "onSensorChanged", "event", "Landroid/hardware/SensorEvent;", "setOnShakeListener", "listener", "Companion", "OnShakeListener", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.m */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/m.class */
public final class C0991m implements SensorEventListener {

    /* renamed from: a */
    public AbstractC0992a f2730a;

    @Metadata(d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;", "", "onShake", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.m$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/m$a.class */
    public interface AbstractC0992a {
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(sensor, "sensor");
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(sensorEvent, "event");
            AbstractC0992a abstractC0992a = this.f2730a;
            if (abstractC0992a == null) {
                return;
            }
            float[] fArr = sensorEvent.values;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            double d = f / 9.80665f;
            double d2 = f2 / 9.80665f;
            double d3 = f3 / 9.80665f;
            if (Math.sqrt((d3 * d3) + (d2 * d2) + (d * d)) <= 2.3d) {
                return;
            }
            ((C0972c) abstractC0992a).m41955a();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
