package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aau.class */
final class aau implements SensorEventListener {

    /* renamed from: a */
    final SensorManager f39725a;

    /* renamed from: b */
    Handler f39726b;

    /* renamed from: c */
    aaw f39727c;

    /* renamed from: e */
    private final Display f39729e;

    /* renamed from: h */
    private float[] f39732h;

    /* renamed from: f */
    private final float[] f39730f = new float[9];

    /* renamed from: g */
    private final float[] f39731g = new float[9];

    /* renamed from: d */
    private final Object f39728d = new Object();

    public aau(Context context) {
        this.f39725a = (SensorManager) context.getSystemService("sensor");
        this.f39729e = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: a */
    private final void m18944a(int i, int i2) {
        float[] fArr = this.f39731g;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    /* renamed from: a */
    public final void m18945a() {
        if (this.f39726b == null) {
            return;
        }
        this.f39725a.unregisterListener(this);
        this.f39726b.post(new aax(this));
        this.f39726b = null;
    }

    /* renamed from: a */
    public final boolean m18943a(float[] fArr) {
        synchronized (this.f39728d) {
            float[] fArr2 = this.f39732h;
            if (fArr2 == null) {
                return false;
            }
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            return true;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == BitmapDescriptorFactory.HUE_RED && fArr[1] == BitmapDescriptorFactory.HUE_RED && fArr[2] == BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        synchronized (this.f39728d) {
            if (this.f39732h == null) {
                this.f39732h = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.f39730f, fArr);
        int rotation = this.f39729e.getRotation();
        if (rotation == 1) {
            SensorManager.remapCoordinateSystem(this.f39730f, 2, 129, this.f39731g);
        } else if (rotation == 2) {
            SensorManager.remapCoordinateSystem(this.f39730f, 129, 130, this.f39731g);
        } else if (rotation != 3) {
            System.arraycopy(this.f39730f, 0, this.f39731g, 0, 9);
        } else {
            SensorManager.remapCoordinateSystem(this.f39730f, 130, 1, this.f39731g);
        }
        m18944a(1, 3);
        m18944a(2, 6);
        m18944a(5, 7);
        synchronized (this.f39728d) {
            System.arraycopy(this.f39731g, 0, this.f39732h, 0, 9);
        }
        aaw aawVar = this.f39727c;
        if (aawVar == null) {
            return;
        }
        aawVar.mo18938a();
    }
}
