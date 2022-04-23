package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.y.n */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/n.class */
public class C2421n implements SensorEventListener, AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    public final int f9331a;

    /* renamed from: b */
    public final float f9332b;

    /* renamed from: c */
    public final SensorManager f9333c;

    /* renamed from: d */
    public final Sensor f9334d;

    /* renamed from: e */
    public final Sensor f9335e;

    /* renamed from: f */
    public final C2341l f9336f;

    /* renamed from: g */
    public float[] f9337g;

    /* renamed from: h */
    public float f9338h;

    public C2421n(C2341l lVar) {
        this.f9336f = lVar;
        SensorManager sensorManager = (SensorManager) lVar.m30264d().getSystemService("sensor");
        this.f9333c = sensorManager;
        this.f9334d = sensorManager.getDefaultSensor(9);
        this.f9335e = this.f9333c.getDefaultSensor(4);
        this.f9331a = ((Integer) lVar.m30291a(C2251d.C2256e.f8756u3)).intValue();
        this.f9332b = ((Float) lVar.m30291a(C2251d.C2256e.f8751t3)).floatValue();
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public void m29863a() {
        this.f9333c.unregisterListener(this);
        if (((Boolean) this.f9336f.m30268c().m30592a(C2251d.C2256e.f8739r3)).booleanValue()) {
            this.f9333c.registerListener(this, this.f9334d, (int) TimeUnit.MILLISECONDS.toMicros(this.f9331a));
        }
        if (((Boolean) this.f9336f.m30268c().m30592a(C2251d.C2256e.f8745s3)).booleanValue()) {
            this.f9333c.registerListener(this, this.f9335e, (int) TimeUnit.MILLISECONDS.toMicros(this.f9331a));
        }
    }

    /* renamed from: b */
    public float m29862b() {
        return this.f9338h;
    }

    /* renamed from: c */
    public float m29861c() {
        float[] fArr = this.f9337g;
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
            this.f9333c.unregisterListener(this);
        } else if ("com.applovin.application_resumed".equals(action)) {
            m29863a();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 9) {
            this.f9337g = sensorEvent.values;
        } else if (sensorEvent.sensor.getType() == 4) {
            float f = this.f9338h * this.f9332b;
            this.f9338h = f;
            this.f9338h = f + Math.abs(sensorEvent.values[0]) + Math.abs(sensorEvent.values[1]) + Math.abs(sensorEvent.values[2]);
        }
    }
}
