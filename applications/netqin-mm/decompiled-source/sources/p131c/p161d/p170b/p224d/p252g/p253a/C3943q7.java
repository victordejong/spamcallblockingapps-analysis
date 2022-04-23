package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzdvo;
/* renamed from: c.d.b.d.g.a.q7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q7.class */
public final class C3943q7 implements SensorEventListener {

    /* renamed from: a */
    public final SensorManager f14593a;

    /* renamed from: c */
    public final Display f14595c;

    /* renamed from: f */
    public float[] f14598f;

    /* renamed from: g */
    public Handler f14599g;

    /* renamed from: h */
    public AbstractC3983r7 f14600h;

    /* renamed from: d */
    public final float[] f14596d = new float[9];

    /* renamed from: e */
    public final float[] f14597e = new float[9];

    /* renamed from: b */
    public final Object f14594b = new Object();

    public C3943q7(Context context) {
        this.f14593a = (SensorManager) context.getSystemService("sensor");
        this.f14595c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    public final void m26528a() {
        if (this.f14599g == null) {
            Sensor defaultSensor = this.f14593a.getDefaultSensor(11);
            if (defaultSensor == null) {
                zzbbq.m15856b("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            zzdvo zzdvoVar = new zzdvo(handlerThread.getLooper());
            this.f14599g = zzdvoVar;
            if (!this.f14593a.registerListener(this, defaultSensor, 0, zzdvoVar)) {
                zzbbq.m15856b("SensorManager.registerListener failed.");
                m26524b();
            }
        }
    }

    /* renamed from: a */
    public final void m26527a(int i, int i2) {
        float[] fArr = this.f14597e;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    /* renamed from: a */
    public final void m26526a(AbstractC3983r7 r7Var) {
        this.f14600h = r7Var;
    }

    /* renamed from: a */
    public final boolean m26525a(float[] fArr) {
        synchronized (this.f14594b) {
            if (this.f14598f == null) {
                return false;
            }
            System.arraycopy(this.f14598f, 0, fArr, 0, this.f14598f.length);
            return true;
        }
    }

    /* renamed from: b */
    public final void m26524b() {
        if (this.f14599g != null) {
            this.f14593a.unregisterListener(this);
            this.f14599g.post(new RunnableC3906p7(this));
            this.f14599g = null;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.f14594b) {
                if (this.f14598f == null) {
                    this.f14598f = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.f14596d, fArr);
            int rotation = this.f14595c.getRotation();
            if (rotation == 1) {
                SensorManager.remapCoordinateSystem(this.f14596d, 2, 129, this.f14597e);
            } else if (rotation == 2) {
                SensorManager.remapCoordinateSystem(this.f14596d, 129, 130, this.f14597e);
            } else if (rotation != 3) {
                System.arraycopy(this.f14596d, 0, this.f14597e, 0, 9);
            } else {
                SensorManager.remapCoordinateSystem(this.f14596d, 130, 1, this.f14597e);
            }
            m26527a(1, 3);
            m26527a(2, 6);
            m26527a(5, 7);
            synchronized (this.f14594b) {
                System.arraycopy(this.f14597e, 0, this.f14598f, 0, 9);
            }
            AbstractC3983r7 r7Var = this.f14600h;
            if (r7Var != null) {
                r7Var.mo15765a();
            }
        }
    }
}
