package com.googlecode.mp4parser.p425c;

import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.c.h */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/h.class */
public final class C16289h {

    /* renamed from: j */
    public static final C16289h f57536j = new C16289h(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    public static final C16289h f57537k = new C16289h(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    public static final C16289h f57538l = new C16289h(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    public static final C16289h f57539m = new C16289h(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a */
    double f57540a;

    /* renamed from: b */
    double f57541b;

    /* renamed from: c */
    double f57542c;

    /* renamed from: d */
    double f57543d;

    /* renamed from: e */
    double f57544e;

    /* renamed from: f */
    double f57545f;

    /* renamed from: g */
    double f57546g;

    /* renamed from: h */
    double f57547h;

    /* renamed from: i */
    double f57548i;

    public C16289h(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f57540a = d5;
        this.f57541b = d6;
        this.f57542c = d7;
        this.f57543d = d;
        this.f57544e = d2;
        this.f57545f = d3;
        this.f57546g = d4;
        this.f57547h = d8;
        this.f57548i = d9;
    }

    /* renamed from: a */
    public static C16289h m7508a(ByteBuffer byteBuffer) {
        double m37846e = C3515e.m37846e(byteBuffer);
        double m37846e2 = C3515e.m37846e(byteBuffer);
        double m37845f = C3515e.m37845f(byteBuffer);
        return new C16289h(m37846e, m37846e2, C3515e.m37846e(byteBuffer), C3515e.m37846e(byteBuffer), m37845f, C3515e.m37845f(byteBuffer), C3515e.m37845f(byteBuffer), C3515e.m37846e(byteBuffer), C3515e.m37846e(byteBuffer));
    }

    /* renamed from: b */
    public final void m7507b(ByteBuffer byteBuffer) {
        C3516f.m37841a(byteBuffer, this.f57543d);
        C3516f.m37841a(byteBuffer, this.f57544e);
        C3516f.m37837b(byteBuffer, this.f57540a);
        C3516f.m37841a(byteBuffer, this.f57545f);
        C3516f.m37841a(byteBuffer, this.f57546g);
        C3516f.m37837b(byteBuffer, this.f57541b);
        C3516f.m37841a(byteBuffer, this.f57547h);
        C3516f.m37841a(byteBuffer, this.f57548i);
        C3516f.m37837b(byteBuffer, this.f57542c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16289h c16289h = (C16289h) obj;
        return Double.compare(c16289h.f57543d, this.f57543d) == 0 && Double.compare(c16289h.f57544e, this.f57544e) == 0 && Double.compare(c16289h.f57545f, this.f57545f) == 0 && Double.compare(c16289h.f57546g, this.f57546g) == 0 && Double.compare(c16289h.f57547h, this.f57547h) == 0 && Double.compare(c16289h.f57548i, this.f57548i) == 0 && Double.compare(c16289h.f57540a, this.f57540a) == 0 && Double.compare(c16289h.f57541b, this.f57541b) == 0 && Double.compare(c16289h.f57542c, this.f57542c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f57540a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f57541b);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f57542c);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f57543d);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f57544e);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f57545f);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f57546g);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f57547h);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f57548i);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f57536j)) {
            return "Rotate 0°";
        }
        if (equals(f57537k)) {
            return "Rotate 90°";
        }
        if (equals(f57538l)) {
            return "Rotate 180°";
        }
        if (equals(f57539m)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f57540a + ", v=" + this.f57541b + ", w=" + this.f57542c + ", a=" + this.f57543d + ", b=" + this.f57544e + ", c=" + this.f57545f + ", d=" + this.f57546g + ", tx=" + this.f57547h + ", ty=" + this.f57548i + '}';
    }
}
