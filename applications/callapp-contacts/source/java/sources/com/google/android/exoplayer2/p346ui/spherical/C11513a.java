package com.google.android.exoplayer2.p346ui.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.google.android.exoplayer2.video.p347a.C11643c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.exoplayer2.ui.spherical.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/a.class */
final class C11513a implements SensorEventListener {

    /* renamed from: a */
    private final float[] f38278a = new float[16];

    /* renamed from: b */
    private final float[] f38279b = new float[16];

    /* renamed from: c */
    private final float[] f38280c = new float[16];

    /* renamed from: d */
    private final float[] f38281d = new float[3];

    /* renamed from: e */
    private final Display f38282e;

    /* renamed from: f */
    private final AbstractC11514a[] f38283f;

    /* renamed from: g */
    private boolean f38284g;

    /* renamed from: com.google.android.exoplayer2.ui.spherical.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/a$a.class */
    public interface AbstractC11514a {
        /* renamed from: a */
        void mo20215a(float[] fArr, float f);
    }

    public C11513a(Display display, AbstractC11514a... abstractC11514aArr) {
        this.f38282e = display;
        this.f38283f = abstractC11514aArr;
    }

    /* renamed from: a */
    private void m20220a(float[] fArr, float f) {
        for (AbstractC11514a abstractC11514a : this.f38283f) {
            abstractC11514a.mo20215a(fArr, f);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f38278a, sensorEvent.values);
        float[] fArr = this.f38278a;
        int rotation = this.f38282e.getRotation();
        if (rotation != 0) {
            int i = 130;
            int i2 = 129;
            if (rotation == 1) {
                i = 2;
            } else if (rotation == 2) {
                i = 129;
                i2 = 130;
            } else if (rotation != 3) {
                throw new IllegalStateException();
            } else {
                i2 = 1;
            }
            float[] fArr2 = this.f38279b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f38279b, i, i2, fArr);
        }
        SensorManager.remapCoordinateSystem(this.f38278a, 1, 131, this.f38279b);
        SensorManager.getOrientation(this.f38279b, this.f38281d);
        float f = this.f38281d[2];
        Matrix.rotateM(this.f38278a, 0, 90.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        float[] fArr3 = this.f38278a;
        if (!this.f38284g) {
            C11643c.m19745a(this.f38280c, fArr3);
            this.f38284g = true;
        }
        float[] fArr4 = this.f38279b;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        Matrix.multiplyMM(fArr3, 0, this.f38279b, 0, this.f38280c, 0);
        m20220a(this.f38278a, f);
    }
}
