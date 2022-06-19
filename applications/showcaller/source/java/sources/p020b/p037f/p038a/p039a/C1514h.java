package p020b.p037f.p038a.p039a;

import androidx.constraintlayout.motion.widget.AbstractC0386g;
import androidx.constraintlayout.motion.widget.AbstractC0419r;
/* renamed from: b.f.a.a.h */
/* loaded from: classes-dex2jar.jar:b/f/a/a/h.class */
public class C1514h {

    /* renamed from: a */
    float f6043a;

    /* renamed from: b */
    float f6044b;

    /* renamed from: c */
    float f6045c;

    /* renamed from: d */
    float f6046d;

    /* renamed from: e */
    float f6047e;

    /* renamed from: f */
    float f6048f;

    /* renamed from: a */
    public void m29859a(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f - 0.5f) * 2.0f;
        float f6 = (f2 - 0.5f) * 2.0f;
        float f7 = this.f6045c;
        float f8 = this.f6046d;
        float f9 = this.f6043a;
        float f10 = this.f6044b;
        float radians = (float) Math.toRadians(this.f6048f);
        float radians2 = (float) Math.toRadians(this.f6047e);
        double d = (-i) * f5;
        double d2 = radians;
        double sin = Math.sin(d2);
        double d3 = i2 * f6;
        fArr[0] = f3 + f7 + (f9 * f5) + (((float) ((d * sin) - (Math.cos(d2) * d3))) * radians2);
        fArr[1] = f4 + f8 + (f10 * f6) + (radians2 * ((float) (((i * f5) * Math.cos(d2)) - (d3 * Math.sin(d2)))));
    }

    /* renamed from: b */
    public void m29858b() {
        this.f6047e = 0.0f;
        this.f6046d = 0.0f;
        this.f6045c = 0.0f;
        this.f6044b = 0.0f;
        this.f6043a = 0.0f;
    }

    /* renamed from: c */
    public void m29857c(AbstractC0386g abstractC0386g, float f) {
        if (abstractC0386g != null) {
            this.f6047e = abstractC0386g.m34413b(f);
        }
    }

    /* renamed from: d */
    public void m29856d(AbstractC0419r abstractC0419r, float f) {
        if (abstractC0419r != null) {
            this.f6047e = abstractC0419r.m34215b(f);
            this.f6048f = abstractC0419r.m34216a(f);
        }
    }

    /* renamed from: e */
    public void m29855e(AbstractC0386g abstractC0386g, AbstractC0386g abstractC0386g2, float f) {
        if (abstractC0386g == null && abstractC0386g2 == null) {
            return;
        }
        if (abstractC0386g == null) {
            this.f6043a = abstractC0386g.m34413b(f);
        }
        if (abstractC0386g2 != null) {
            return;
        }
        this.f6044b = abstractC0386g2.m34413b(f);
    }

    /* renamed from: f */
    public void m29854f(AbstractC0419r abstractC0419r, AbstractC0419r abstractC0419r2, float f) {
        if (abstractC0419r != null) {
            this.f6043a = abstractC0419r.m34215b(f);
        }
        if (abstractC0419r2 != null) {
            this.f6044b = abstractC0419r2.m34215b(f);
        }
    }

    /* renamed from: g */
    public void m29853g(AbstractC0386g abstractC0386g, AbstractC0386g abstractC0386g2, float f) {
        if (abstractC0386g != null) {
            this.f6045c = abstractC0386g.m34413b(f);
        }
        if (abstractC0386g2 != null) {
            this.f6046d = abstractC0386g2.m34413b(f);
        }
    }

    /* renamed from: h */
    public void m29852h(AbstractC0419r abstractC0419r, AbstractC0419r abstractC0419r2, float f) {
        if (abstractC0419r != null) {
            this.f6045c = abstractC0419r.m34215b(f);
        }
        if (abstractC0419r2 != null) {
            this.f6046d = abstractC0419r2.m34215b(f);
        }
    }
}
