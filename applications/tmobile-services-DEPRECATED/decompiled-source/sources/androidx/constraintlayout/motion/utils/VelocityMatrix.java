package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/VelocityMatrix.class */
public class VelocityMatrix {

    /* renamed from: a */
    float f1659a;

    /* renamed from: b */
    float f1660b;

    /* renamed from: c */
    float f1661c;

    /* renamed from: d */
    float f1662d;

    /* renamed from: e */
    float f1663e;

    /* renamed from: f */
    float f1664f;

    /* renamed from: a */
    public void m20951a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f - 0.5f) * 2.0f;
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = this.f1661c;
        float f8 = this.f1662d;
        float f9 = this.f1659a;
        float f10 = this.f1660b;
        float radians = (float) Math.toRadians(this.f1664f);
        float radians2 = (float) Math.toRadians(this.f1663e);
        double d = (-i) * f5;
        double d2 = radians;
        double sin = Math.sin(d2);
        double d3 = i2 * f6;
        fArr[0] = f3 + f7 + (f9 * f5) + (((float) ((d * sin) - (Math.cos(d2) * d3))) * radians2);
        fArr[1] = f4 + f8 + (f10 * f6) + (radians2 * ((float) (((i * f5) * Math.cos(d2)) - (d3 * Math.sin(d2)))));
    }

    /* renamed from: b */
    public void m20950b() {
        this.f1663e = 0.0f;
        this.f1662d = 0.0f;
        this.f1661c = 0.0f;
        this.f1660b = 0.0f;
        this.f1659a = 0.0f;
    }

    /* renamed from: c */
    public void m20949c(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.f1663e = keyCycleOscillator.m20863b(f);
        }
    }

    /* renamed from: d */
    public void m20948d(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.f1663e = splineSet.m20578b(f);
            this.f1664f = splineSet.m20579a(f);
        }
    }

    /* renamed from: e */
    public void m20947e(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null || keyCycleOscillator2 != null) {
            if (keyCycleOscillator == null) {
                this.f1659a = keyCycleOscillator.m20863b(f);
            }
            if (keyCycleOscillator2 == null) {
                this.f1660b = keyCycleOscillator2.m20863b(f);
            }
        }
    }

    /* renamed from: f */
    public void m20946f(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f1659a = splineSet.m20578b(f);
        }
        if (splineSet2 != null) {
            this.f1660b = splineSet2.m20578b(f);
        }
    }

    /* renamed from: g */
    public void m20945g(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.f1661c = keyCycleOscillator.m20863b(f);
        }
        if (keyCycleOscillator2 != null) {
            this.f1662d = keyCycleOscillator2.m20863b(f);
        }
    }

    /* renamed from: h */
    public void m20944h(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f1661c = splineSet.m20578b(f);
        }
        if (splineSet2 != null) {
            this.f1662d = splineSet2.m20578b(f);
        }
    }
}
