package com.google.android.exoplayer2.p260ui.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.google.android.exoplayer2.video.p261r.C5573c;
/* renamed from: com.google.android.exoplayer2.ui.spherical.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/d.class */
final class C5451d implements SensorEventListener {

    /* renamed from: a */
    private final float[] f17622a = new float[16];

    /* renamed from: b */
    private final float[] f17623b = new float[16];

    /* renamed from: c */
    private final float[] f17624c = new float[16];

    /* renamed from: d */
    private final float[] f17625d = new float[3];

    /* renamed from: e */
    private final Display f17626e;

    /* renamed from: f */
    private final AbstractC5452a[] f17627f;

    /* renamed from: g */
    private boolean f17628g;

    /* renamed from: com.google.android.exoplayer2.ui.spherical.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/d$a.class */
    public interface AbstractC5452a {
        /* renamed from: a */
        void mo19060a(float[] fArr, float f);
    }

    public C5451d(Display display, AbstractC5452a... abstractC5452aArr) {
        this.f17626e = display;
        this.f17627f = abstractC5452aArr;
    }

    /* renamed from: a */
    private float m19079a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f17623b);
        SensorManager.getOrientation(this.f17623b, this.f17625d);
        return this.f17625d[2];
    }

    /* renamed from: b */
    private void m19078b(float[] fArr, float f) {
        for (AbstractC5452a abstractC5452a : this.f17627f) {
            abstractC5452a.mo19060a(fArr, f);
        }
    }

    /* renamed from: c */
    private void m19077c(float[] fArr) {
        if (!this.f17628g) {
            C5573c.m18502a(this.f17624c, fArr);
            this.f17628g = true;
        }
        float[] fArr2 = this.f17623b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f17623b, 0, this.f17624c, 0);
    }

    /* renamed from: d */
    private void m19076d(float[] fArr, int i) {
        int i2;
        if (i != 0) {
            int i3 = 129;
            if (i == 1) {
                i2 = 2;
            } else if (i == 2) {
                i2 = 129;
                i3 = 130;
            } else if (i != 3) {
                throw new IllegalStateException();
            } else {
                i3 = 1;
                i2 = 130;
            }
            float[] fArr2 = this.f17623b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f17623b, i2, i3, fArr);
        }
    }

    /* renamed from: e */
    private static void m19075e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f17622a, sensorEvent.values);
        m19076d(this.f17622a, this.f17626e.getRotation());
        float m19079a = m19079a(this.f17622a);
        m19075e(this.f17622a);
        m19077c(this.f17622a);
        m19078b(this.f17622a, m19079a);
    }
}
