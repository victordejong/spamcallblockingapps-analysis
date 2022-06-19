package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1314b;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.utils.m */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/m.class */
public class C1532m implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private final int f5688a;

    /* renamed from: b */
    private final float f5689b;

    /* renamed from: c */
    private final SensorManager f5690c;

    /* renamed from: d */
    private final Sensor f5691d;

    /* renamed from: e */
    private final Sensor f5692e;

    /* renamed from: f */
    private final C1408l f5693f;

    /* renamed from: g */
    private float[] f5694g;

    /* renamed from: h */
    private float f5695h;

    public C1532m(C1408l c1408l) {
        this.f5693f = c1408l;
        SensorManager sensorManager = (SensorManager) c1408l.m5532K().getSystemService("sensor");
        this.f5690c = sensorManager;
        this.f5691d = sensorManager.getDefaultSensor(9);
        this.f5692e = sensorManager.getDefaultSensor(4);
        this.f5688a = ((Integer) c1408l.m5511a(C1314b.f4892dQ)).intValue();
        this.f5689b = ((Float) c1408l.m5511a(C1314b.f4891dP)).floatValue();
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public void m4969a() {
        this.f5690c.unregisterListener(this);
        if (((Boolean) this.f5693f.m5533J().m5826a(C1314b.f4889dN)).booleanValue()) {
            this.f5690c.registerListener(this, this.f5691d, (int) TimeUnit.MILLISECONDS.toMicros(this.f5688a));
        }
        if (((Boolean) this.f5693f.m5533J().m5826a(C1314b.f4890dO)).booleanValue()) {
            this.f5690c.registerListener(this, this.f5692e, (int) TimeUnit.MILLISECONDS.toMicros(this.f5688a));
        }
    }

    /* renamed from: b */
    public float m4968b() {
        return this.f5695h;
    }

    /* renamed from: c */
    public float m4967c() {
        float[] fArr = this.f5694g;
        if (fArr == null) {
            return 0.0f;
        }
        return (float) Math.toDegrees(Math.acos(fArr[2] / 9.81f));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f5690c.unregisterListener(this);
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            m4969a();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.f5694g = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() != 4) {
        } else {
            float f = this.f5695h * this.f5689b;
            this.f5695h = f;
            float abs = Math.abs(sensorEvent.values[0]);
            this.f5695h = Math.abs(sensorEvent.values[2]) + Math.abs(sensorEvent.values[1]) + abs + f;
        }
    }
}
