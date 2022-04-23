package p131c.p161d.p170b.p188c.p199e1.p200o;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import p131c.p161d.p170b.p188c.p204h1.p205r.C2933b;
/* renamed from: c.d.b.c.e1.o.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/d.class */
public final class C2807d implements SensorEventListener {

    /* renamed from: a */
    public final float[] f10193a = new float[16];

    /* renamed from: b */
    public final float[] f10194b = new float[16];

    /* renamed from: c */
    public final float[] f10195c = new float[16];

    /* renamed from: d */
    public final float[] f10196d = new float[3];

    /* renamed from: e */
    public final Display f10197e;

    /* renamed from: f */
    public final AbstractC2808a[] f10198f;

    /* renamed from: g */
    public boolean f10199g;

    /* renamed from: c.d.b.c.e1.o.d$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/e1/o/d$a.class */
    public interface AbstractC2808a {
        /* renamed from: a */
        void mo18290a(float[] fArr, float f);
    }

    public C2807d(Display display, AbstractC2808a... aVarArr) {
        this.f10197e = display;
        this.f10198f = aVarArr;
    }

    /* renamed from: c */
    public static void m28988c(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    /* renamed from: a */
    public final float m28992a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f10194b);
        SensorManager.getOrientation(this.f10194b, this.f10196d);
        return this.f10196d[2];
    }

    /* renamed from: a */
    public final void m28991a(float[] fArr, float f) {
        for (AbstractC2808a aVar : this.f10198f) {
            aVar.mo18290a(fArr, f);
        }
    }

    /* renamed from: a */
    public final void m28990a(float[] fArr, int i) {
        if (i != 0) {
            int i2 = 130;
            int i3 = 129;
            if (i == 1) {
                i2 = 2;
            } else if (i == 2) {
                i2 = 129;
                i3 = 130;
            } else if (i == 3) {
                i3 = 1;
            } else {
                throw new IllegalStateException();
            }
            float[] fArr2 = this.f10194b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f10194b, i2, i3, fArr);
        }
    }

    /* renamed from: b */
    public final void m28989b(float[] fArr) {
        if (!this.f10199g) {
            C2933b.m28452a(this.f10195c, fArr);
            this.f10199g = true;
        }
        float[] fArr2 = this.f10194b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f10194b, 0, this.f10195c, 0);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f10193a, sensorEvent.values);
        m28990a(this.f10193a, this.f10197e.getRotation());
        float a = m28992a(this.f10193a);
        m28988c(this.f10193a);
        m28989b(this.f10193a);
        m28991a(this.f10193a, a);
    }
}
