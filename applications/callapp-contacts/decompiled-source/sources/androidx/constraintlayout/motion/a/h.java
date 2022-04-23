package androidx.constraintlayout.motion.a;

import androidx.constraintlayout.motion.widget.f;
import androidx.constraintlayout.motion.widget.q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/h.class */
public final class h {
    private static String g = "VelocityMatrix";

    /* renamed from: a  reason: collision with root package name */
    float f1455a;

    /* renamed from: b  reason: collision with root package name */
    float f1456b;

    /* renamed from: c  reason: collision with root package name */
    float f1457c;

    /* renamed from: d  reason: collision with root package name */
    float f1458d;
    float e;
    float f;

    public final void a() {
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f1458d = BitmapDescriptorFactory.HUE_RED;
        this.f1457c = BitmapDescriptorFactory.HUE_RED;
        this.f1456b = BitmapDescriptorFactory.HUE_RED;
        this.f1455a = BitmapDescriptorFactory.HUE_RED;
    }

    public final void a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f - 0.5f) * 2.0f;
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = this.f1457c;
        float f8 = this.f1458d;
        float f9 = this.f1455a;
        float f10 = this.f1456b;
        float radians = (float) Math.toRadians(this.f);
        float radians2 = (float) Math.toRadians(this.e);
        double d2 = (-i) * f5;
        double d3 = radians;
        double sin = Math.sin(d3);
        double d4 = i2 * f6;
        fArr[0] = f3 + f7 + (f9 * f5) + (((float) ((d2 * sin) - (Math.cos(d3) * d4))) * radians2);
        fArr[1] = f4 + f8 + (f10 * f6) + (radians2 * ((float) (((i * f5) * Math.cos(d3)) - (d4 * Math.sin(d3)))));
    }

    public final void a(f fVar, float f) {
        if (fVar != null) {
            this.e = fVar.b(f);
        }
    }

    public final void a(f fVar, f fVar2, float f) {
        if (fVar != null) {
            this.f1457c = fVar.b(f);
        }
        if (fVar2 != null) {
            this.f1458d = fVar2.b(f);
        }
    }

    public final void a(q qVar, float f) {
        if (qVar != null) {
            this.e = qVar.b(f);
            this.f = qVar.a(f);
        }
    }

    public final void a(q qVar, q qVar2, float f) {
        if (qVar != null) {
            this.f1457c = qVar.b(f);
        }
        if (qVar2 != null) {
            this.f1458d = qVar2.b(f);
        }
    }

    public final void b(f fVar, f fVar2, float f) {
        if (fVar != null || fVar2 != null) {
            if (fVar == null) {
                this.f1455a = fVar.b(f);
            }
            if (fVar2 == null) {
                this.f1456b = fVar2.b(f);
            }
        }
    }

    public final void b(q qVar, q qVar2, float f) {
        if (qVar != null) {
            this.f1455a = qVar.b(f);
        }
        if (qVar2 != null) {
            this.f1456b = qVar2.b(f);
        }
    }
}
