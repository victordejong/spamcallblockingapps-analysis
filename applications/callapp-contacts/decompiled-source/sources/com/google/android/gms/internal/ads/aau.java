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

    /* renamed from: a  reason: collision with root package name */
    final SensorManager f23022a;

    /* renamed from: b  reason: collision with root package name */
    Handler f23023b;

    /* renamed from: c  reason: collision with root package name */
    aaw f23024c;
    private final Display e;
    private float[] h;
    private final float[] f = new float[9];
    private final float[] g = new float[9];

    /* renamed from: d  reason: collision with root package name */
    private final Object f23025d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public aau(Context context) {
        this.f23022a = (SensorManager) context.getSystemService("sensor");
        this.e = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private final void a(int i, int i2) {
        float[] fArr = this.g;
        float f = fArr[i];
        fArr[i] = fArr[i2];
        fArr[i2] = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f23023b != null) {
            this.f23022a.unregisterListener(this);
            this.f23023b.post(new aax(this));
            this.f23023b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(float[] fArr) {
        synchronized (this.f23025d) {
            float[] fArr2 = this.h;
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
        if (fArr[0] != BitmapDescriptorFactory.HUE_RED || fArr[1] != BitmapDescriptorFactory.HUE_RED || fArr[2] != BitmapDescriptorFactory.HUE_RED) {
            synchronized (this.f23025d) {
                if (this.h == null) {
                    this.h = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.f, fArr);
            int rotation = this.e.getRotation();
            if (rotation == 1) {
                SensorManager.remapCoordinateSystem(this.f, 2, 129, this.g);
            } else if (rotation == 2) {
                SensorManager.remapCoordinateSystem(this.f, 129, 130, this.g);
            } else if (rotation != 3) {
                System.arraycopy(this.f, 0, this.g, 0, 9);
            } else {
                SensorManager.remapCoordinateSystem(this.f, 130, 1, this.g);
            }
            a(1, 3);
            a(2, 6);
            a(5, 7);
            synchronized (this.f23025d) {
                System.arraycopy(this.g, 0, this.h, 0, 9);
            }
            aaw aawVar = this.f23024c;
            if (aawVar != null) {
                aawVar.a();
            }
        }
    }
}
