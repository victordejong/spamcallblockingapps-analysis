package p193e.p1577m.p1578a.p1596c.p1632o1.p1633h;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24838c;
/* renamed from: e.m.a.c.o1.h.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/d.class */
public final class C24664d implements SensorEventListener {

    /* renamed from: a */
    public final float[] f69084a = new float[16];

    /* renamed from: b */
    public final float[] f69085b = new float[16];

    /* renamed from: c */
    public final float[] f69086c = new float[16];

    /* renamed from: d */
    public final float[] f69087d = new float[3];

    /* renamed from: e */
    public final Display f69088e;

    /* renamed from: f */
    public final AbstractC24665a[] f69089f;

    /* renamed from: g */
    public boolean f69090g;

    /* renamed from: e.m.a.c.o1.h.d$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/o1/h/d$a.class */
    public interface AbstractC24665a {
        /* renamed from: a */
        void mo4778a(float[] fArr, float f);
    }

    public C24664d(Display display, AbstractC24665a... abstractC24665aArr) {
        this.f69088e = display;
        this.f69089f = abstractC24665aArr;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f69084a, sensorEvent.values);
        float[] fArr = this.f69084a;
        int rotation = this.f69088e.getRotation();
        if (rotation != 0) {
            int i = 130;
            int i2 = 129;
            if (rotation == 1) {
                i = 2;
            } else if (rotation == 2) {
                i2 = 130;
                i = 129;
            } else if (rotation != 3) {
                throw new IllegalStateException();
            } else {
                i2 = 1;
            }
            float[] fArr2 = this.f69085b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f69085b, i, i2, fArr);
        }
        SensorManager.remapCoordinateSystem(this.f69084a, 1, 131, this.f69085b);
        SensorManager.getOrientation(this.f69085b, this.f69087d);
        float f = this.f69087d[2];
        Matrix.rotateM(this.f69084a, 0, 90.0f, 1.0f, 0.0f, 0.0f);
        float[] fArr3 = this.f69084a;
        if (!this.f69090g) {
            C24838c.m4427a(this.f69086c, fArr3);
            this.f69090g = true;
        }
        float[] fArr4 = this.f69085b;
        System.arraycopy(fArr3, 0, fArr4, 0, fArr4.length);
        Matrix.multiplyMM(fArr3, 0, this.f69085b, 0, this.f69086c, 0);
        float[] fArr5 = this.f69084a;
        for (AbstractC24665a abstractC24665a : this.f69089f) {
            abstractC24665a.mo4778a(fArr5, f);
        }
    }
}
