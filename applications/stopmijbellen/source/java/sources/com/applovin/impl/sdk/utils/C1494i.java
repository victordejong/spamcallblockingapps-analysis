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
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.sdk.utils.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/i.class */
public class C1494i implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    private final C1408l f5599a;

    /* renamed from: b */
    private final SensorManager f5600b;

    /* renamed from: c */
    private final Sensor f5601c;

    /* renamed from: d */
    private final AbstractC1495a f5602d;

    /* renamed from: e */
    private float f5603e;

    /* renamed from: com.applovin.impl.sdk.utils.i$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/i$a.class */
    public interface AbstractC1495a {
        /* renamed from: b */
        void mo5039b();

        /* renamed from: c */
        void mo5038c();
    }

    public C1494i(C1408l c1408l, AbstractC1495a abstractC1495a) {
        this.f5599a = c1408l;
        SensorManager sensorManager = (SensorManager) c1408l.m5532K().getSystemService("sensor");
        this.f5600b = sensorManager;
        this.f5601c = sensorManager.getDefaultSensor(1);
        this.f5602d = abstractC1495a;
    }

    /* renamed from: a */
    public void m5041a() {
        this.f5600b.unregisterListener(this);
        this.f5600b.registerListener(this, this.f5601c, (int) TimeUnit.MILLISECONDS.toMicros(50L));
        this.f5599a.m5487ah().unregisterReceiver(this);
        this.f5599a.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        this.f5599a.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: b */
    public void m5040b() {
        this.f5599a.m5487ah().unregisterReceiver(this);
        this.f5600b.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f5600b.unregisterListener(this);
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            m5041a();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 1) {
            float max = Math.max(Math.min(sensorEvent.values[2] / 9.81f, 1.0f), -1.0f);
            float f = this.f5603e;
            float f2 = (max * 0.5f) + (f * 0.5f);
            this.f5603e = f2;
            if (f < 0.8f && f2 > 0.8f) {
                this.f5602d.mo5038c();
            } else if (f <= -0.8f || f2 >= -0.8f) {
            } else {
                this.f5602d.mo5039b();
            }
        }
    }
}
