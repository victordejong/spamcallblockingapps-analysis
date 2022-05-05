package com.adbert.p009a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.adbert.p009a.p012c.EnumC1388h;
/* renamed from: com.adbert.a.i */
/* loaded from: classes-dex2jar.jar:com/adbert/a/i.class */
public class C1407i implements SensorEventListener {

    /* renamed from: a */
    public SensorManager f664a;

    /* renamed from: b */
    public Sensor f665b;

    /* renamed from: c */
    public AbstractC1408a f666c;

    /* renamed from: d */
    public Context f667d;

    /* renamed from: e */
    public float f668e;

    /* renamed from: f */
    public float f669f;

    /* renamed from: g */
    public float f670g;

    /* renamed from: h */
    public double f671h;

    /* renamed from: i */
    public long f672i;

    /* renamed from: com.adbert.a.i$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/i$a.class */
    public interface AbstractC1408a {
        /* renamed from: a */
        void mo37092a();

        /* renamed from: a */
        void mo37091a(int i);

        /* renamed from: a */
        void mo37090a(String str);
    }

    public C1407i(Context context) {
        this.f667d = context;
        this.f664a = (SensorManager) context.getSystemService("sensor");
    }

    public C1407i(Context context, EnumC1388h hVar, AbstractC1408a aVar) {
        this.f666c = aVar;
        this.f667d = context;
        this.f664a = (SensorManager) context.getSystemService("sensor");
        this.f665b = this.f664a.getDefaultSensor(hVar.m37183a());
        if (this.f665b == null) {
            aVar.mo37090a("Sensor is not supported");
        } else {
            m37116a();
        }
    }

    /* renamed from: a */
    private void m37115a(float f, float f2, float f3) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.f672i;
        if (j >= 70) {
            this.f672i = currentTimeMillis;
            float f4 = f - this.f668e;
            float f5 = f2 - this.f669f;
            float f6 = f3 - this.f670g;
            this.f668e = f;
            this.f669f = f2;
            this.f670g = f3;
            this.f671h = (Math.sqrt(((f4 * f4) + (f5 * f5)) + (f6 * f6)) / j) * 10000.0d;
            if (this.f671h >= 2000.0d) {
                this.f666c.mo37092a();
            }
        }
    }

    /* renamed from: a */
    public void m37116a() {
        Sensor sensor = this.f665b;
        if (sensor != null) {
            this.f664a.registerListener(this, sensor, 0);
        }
    }

    /* renamed from: a */
    public boolean m37114a(EnumC1388h hVar) {
        this.f665b = this.f664a.getDefaultSensor(hVar.m37183a());
        return this.f665b != null;
    }

    /* renamed from: b */
    public void m37113b() {
        if (this.f665b != null) {
            this.f664a.unregisterListener(this);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 5) {
            this.f666c.mo37091a((int) sensorEvent.values[0]);
        } else if (sensorEvent.sensor.getType() == 1) {
            float[] fArr = sensorEvent.values;
            m37115a(fArr[0], fArr[1], fArr[2]);
        } else if (sensorEvent.sensor.getType() == 8 && ((int) sensorEvent.values[0]) == 0) {
            this.f666c.mo37092a();
        }
    }
}
