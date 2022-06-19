package androidx.constraintlayout.motion.p029a;

import androidx.constraintlayout.motion.widget.AbstractC0598f;
import androidx.constraintlayout.motion.widget.AbstractC0631q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.constraintlayout.motion.a.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/a/h.class */
public final class C0580h {

    /* renamed from: g */
    private static String f2428g = "VelocityMatrix";

    /* renamed from: a */
    float f2429a;

    /* renamed from: b */
    float f2430b;

    /* renamed from: c */
    float f2431c;

    /* renamed from: d */
    float f2432d;

    /* renamed from: e */
    float f2433e;

    /* renamed from: f */
    float f2434f;

    /* renamed from: a */
    public final void m45057a() {
        this.f2433e = BitmapDescriptorFactory.HUE_RED;
        this.f2432d = BitmapDescriptorFactory.HUE_RED;
        this.f2431c = BitmapDescriptorFactory.HUE_RED;
        this.f2430b = BitmapDescriptorFactory.HUE_RED;
        this.f2429a = BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    public final void m45056a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f - 0.5f) * 2.0f;
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = this.f2431c;
        float f8 = this.f2432d;
        float f9 = this.f2429a;
        float f10 = this.f2430b;
        float radians = (float) Math.toRadians(this.f2434f);
        float radians2 = (float) Math.toRadians(this.f2433e);
        double d = (-i) * f5;
        double d2 = radians;
        double sin = Math.sin(d2);
        double d3 = i2 * f6;
        fArr[0] = f3 + f7 + (f9 * f5) + (((float) ((d * sin) - (Math.cos(d2) * d3))) * radians2);
        fArr[1] = f4 + f8 + (f10 * f6) + (radians2 * ((float) (((i * f5) * Math.cos(d2)) - (d3 * Math.sin(d2)))));
    }

    /* renamed from: a */
    public final void m45055a(AbstractC0598f abstractC0598f, float f) {
        if (abstractC0598f != null) {
            this.f2433e = abstractC0598f.m44908b(f);
        }
    }

    /* renamed from: a */
    public final void m45054a(AbstractC0598f abstractC0598f, AbstractC0598f abstractC0598f2, float f) {
        if (abstractC0598f != null) {
            this.f2431c = abstractC0598f.m44908b(f);
        }
        if (abstractC0598f2 != null) {
            this.f2432d = abstractC0598f2.m44908b(f);
        }
    }

    /* renamed from: a */
    public final void m45053a(AbstractC0631q abstractC0631q, float f) {
        if (abstractC0631q != null) {
            this.f2433e = abstractC0631q.m44797b(f);
            this.f2434f = abstractC0631q.m44798a(f);
        }
    }

    /* renamed from: a */
    public final void m45052a(AbstractC0631q abstractC0631q, AbstractC0631q abstractC0631q2, float f) {
        if (abstractC0631q != null) {
            this.f2431c = abstractC0631q.m44797b(f);
        }
        if (abstractC0631q2 != null) {
            this.f2432d = abstractC0631q2.m44797b(f);
        }
    }

    /* renamed from: b */
    public final void m45051b(AbstractC0598f abstractC0598f, AbstractC0598f abstractC0598f2, float f) {
        if (abstractC0598f == null && abstractC0598f2 == null) {
            return;
        }
        if (abstractC0598f == null) {
            this.f2429a = abstractC0598f.m44908b(f);
        }
        if (abstractC0598f2 != null) {
            return;
        }
        this.f2430b = abstractC0598f2.m44908b(f);
    }

    /* renamed from: b */
    public final void m45050b(AbstractC0631q abstractC0631q, AbstractC0631q abstractC0631q2, float f) {
        if (abstractC0631q != null) {
            this.f2429a = abstractC0631q.m44797b(f);
        }
        if (abstractC0631q2 != null) {
            this.f2430b = abstractC0631q2.m44797b(f);
        }
    }
}
