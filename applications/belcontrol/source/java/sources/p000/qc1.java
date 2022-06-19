package p000;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.PowerManager;
import android.os.Trace;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
@TargetApi(23)
/* renamed from: qc1 */
/* loaded from: classes3-dex2jar.jar:qc1.class */
public class qc1 implements SensorEventListener {

    /* renamed from: f */
    public static final int[] f7817f = {8};

    /* renamed from: a */
    public final SensorManager f7818a;

    /* renamed from: b */
    public final tc1 f7819b;

    /* renamed from: c */
    public boolean f7820c = false;

    /* renamed from: d */
    public boolean f7821d;

    public qc1(Context context) {
        this.f7818a = (SensorManager) context.getSystemService(SensorManager.class);
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        this.f7819b = new tc1(context);
        this.f7821d = ((PowerManager) context.getSystemService(PowerManager.class)).isInteractive();
    }

    /* renamed from: a */
    public boolean m828a() {
        return this.f7819b.m514d();
    }

    /* renamed from: b */
    public void m827b() {
        this.f7821d = false;
        m821h();
    }

    /* renamed from: c */
    public void m826c() {
        this.f7821d = true;
        m822g();
    }

    /* renamed from: d */
    public final void m825d() {
        this.f7820c = true;
        if (this.f7819b.m514d()) {
            m823f(f7817f);
        }
    }

    /* renamed from: e */
    public void m824e(MotionEvent motionEvent) {
        if (this.f7820c) {
            this.f7819b.mo32b(motionEvent);
        }
    }

    /* renamed from: f */
    public final void m823f(int[] iArr) {
        Trace.beginSection("FalsingManager.registerSensors");
        for (int i : iArr) {
            Trace.beginSection("get sensor " + i);
            Sensor defaultSensor = this.f7818a.getDefaultSensor(i);
            Trace.endSection();
            if (defaultSensor != null) {
                Trace.beginSection("register");
                this.f7818a.registerListener(this, defaultSensor, 1);
                Trace.endSection();
            }
        }
        Trace.endSection();
    }

    /* renamed from: g */
    public final boolean m822g() {
        if (this.f7820c || !m820i()) {
            return false;
        }
        m825d();
        return true;
    }

    /* renamed from: h */
    public final void m821h() {
        if (!this.f7820c || m820i()) {
            return;
        }
        this.f7820c = false;
        this.f7818a.unregisterListener(this);
    }

    /* renamed from: i */
    public final boolean m820i() {
        return m828a() && this.f7821d;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this) {
            this.f7819b.mo33a(sensorEvent);
        }
    }
}
