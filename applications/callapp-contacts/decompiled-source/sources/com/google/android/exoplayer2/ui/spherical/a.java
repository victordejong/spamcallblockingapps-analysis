package com.google.android.exoplayer2.ui.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.google.android.exoplayer2.video.a.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/a.class */
final class a implements SensorEventListener {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f22067a = new float[16];

    /* renamed from: b  reason: collision with root package name */
    private final float[] f22068b = new float[16];

    /* renamed from: c  reason: collision with root package name */
    private final float[] f22069c = new float[16];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f22070d = new float[3];
    private final Display e;
    private final AbstractC0445a[] f;
    private boolean g;

    /* renamed from: com.google.android.exoplayer2.ui.spherical.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/spherical/a$a.class */
    public interface AbstractC0445a {
        void a(float[] fArr, float f);
    }

    public a(Display display, AbstractC0445a... aVarArr) {
        this.e = display;
        this.f = aVarArr;
    }

    private void a(float[] fArr, float f) {
        for (AbstractC0445a aVar : this.f) {
            aVar.a(fArr, f);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f22067a, sensorEvent.values);
        float[] fArr = this.f22067a;
        int rotation = this.e.getRotation();
        if (rotation != 0) {
            int i = 130;
            int i2 = 129;
            if (rotation == 1) {
                i = 2;
            } else if (rotation == 2) {
                i = 129;
                i2 = 130;
            } else if (rotation == 3) {
                i2 = 1;
            } else {
                throw new IllegalStateException();
            }
            float[] fArr2 = this.f22068b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f22068b, i, i2, fArr);
        }
        SensorManager.remapCoordinateSystem(this.f22067a, 1, 131, this.f22068b);
        SensorManager.getOrientation(this.f22068b, this.f22070d);
        float f = this.f22070d[2];
        Matrix.rotateM(this.f22067a, 0, 90.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        float[] fArr3 = this.f22067a;
        if (!this.g) {
            c.a(this.f22069c, fArr3);
            this.g = true;
        }
        float[] fArr4 = this.f22068b;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        Matrix.multiplyMM(fArr3, 0, this.f22068b, 0, this.f22069c, 0);
        a(this.f22067a, f);
    }
}
