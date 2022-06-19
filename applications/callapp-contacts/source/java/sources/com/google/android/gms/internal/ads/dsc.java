package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsc.class */
public final class dsc {

    /* renamed from: a */
    public static final dsc f47494a = new dsc(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    private static final dsc f47495k = new dsc(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    private static final dsc f47496l = new dsc(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    private static final dsc f47497m = new dsc(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: b */
    private final double f47498b;

    /* renamed from: c */
    private final double f47499c;

    /* renamed from: d */
    private final double f47500d;

    /* renamed from: e */
    private final double f47501e;

    /* renamed from: f */
    private final double f47502f;

    /* renamed from: g */
    private final double f47503g;

    /* renamed from: h */
    private final double f47504h;

    /* renamed from: i */
    private final double f47505i;

    /* renamed from: j */
    private final double f47506j;

    private dsc(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f47498b = d5;
        this.f47499c = d6;
        this.f47500d = d7;
        this.f47501e = d;
        this.f47502f = d2;
        this.f47503g = d3;
        this.f47504h = d4;
        this.f47505i = d8;
        this.f47506j = d9;
    }

    /* renamed from: a */
    public static dsc m15780a(ByteBuffer byteBuffer) {
        double m18531d = anm.m18531d(byteBuffer);
        double m18531d2 = anm.m18531d(byteBuffer);
        double m18530e = anm.m18530e(byteBuffer);
        return new dsc(m18531d, m18531d2, anm.m18531d(byteBuffer), anm.m18531d(byteBuffer), m18530e, anm.m18530e(byteBuffer), anm.m18530e(byteBuffer), anm.m18531d(byteBuffer), anm.m18531d(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dsc dscVar = (dsc) obj;
        return Double.compare(dscVar.f47501e, this.f47501e) == 0 && Double.compare(dscVar.f47502f, this.f47502f) == 0 && Double.compare(dscVar.f47503g, this.f47503g) == 0 && Double.compare(dscVar.f47504h, this.f47504h) == 0 && Double.compare(dscVar.f47505i, this.f47505i) == 0 && Double.compare(dscVar.f47506j, this.f47506j) == 0 && Double.compare(dscVar.f47498b, this.f47498b) == 0 && Double.compare(dscVar.f47499c, this.f47499c) == 0 && Double.compare(dscVar.f47500d, this.f47500d) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f47498b);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f47499c);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f47500d);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f47501e);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f47502f);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f47503g);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f47504h);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f47505i);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f47506j);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f47494a)) {
            return "Rotate 0°";
        }
        if (equals(f47495k)) {
            return "Rotate 90°";
        }
        if (equals(f47496l)) {
            return "Rotate 180°";
        }
        if (equals(f47497m)) {
            return "Rotate 270°";
        }
        double d = this.f47498b;
        double d2 = this.f47499c;
        double d3 = this.f47500d;
        double d4 = this.f47501e;
        double d5 = this.f47502f;
        double d6 = this.f47503g;
        double d7 = this.f47504h;
        double d8 = this.f47505i;
        double d9 = this.f47506j;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d);
        sb.append(", v=");
        sb.append(d2);
        sb.append(", w=");
        sb.append(d3);
        sb.append(", a=");
        sb.append(d4);
        sb.append(", b=");
        sb.append(d5);
        sb.append(", c=");
        sb.append(d6);
        sb.append(", d=");
        sb.append(d7);
        sb.append(", tx=");
        sb.append(d8);
        sb.append(", ty=");
        sb.append(d9);
        sb.append("}");
        return sb.toString();
    }
}
