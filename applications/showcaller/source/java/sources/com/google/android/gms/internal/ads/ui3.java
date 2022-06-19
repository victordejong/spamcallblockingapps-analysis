package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ui3.class */
public final class ui3 {

    /* renamed from: a */
    public static final ui3 f30631a = new ui3(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: b */
    public static final ui3 f30632b = new ui3(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: c */
    public static final ui3 f30633c = new ui3(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: d */
    public static final ui3 f30634d = new ui3(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: e */
    public final double f30635e;

    /* renamed from: f */
    public final double f30636f;

    /* renamed from: g */
    public final double f30637g;

    /* renamed from: h */
    public final double f30638h;

    /* renamed from: i */
    public final double f30639i;

    /* renamed from: j */
    public final double f30640j;

    /* renamed from: k */
    public final double f30641k;

    /* renamed from: l */
    public final double f30642l;

    /* renamed from: m */
    public final double f30643m;

    public ui3(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f30635e = d5;
        this.f30636f = d6;
        this.f30637g = d7;
        this.f30638h = d;
        this.f30639i = d2;
        this.f30640j = d3;
        this.f30641k = d4;
        this.f30642l = d8;
        this.f30643m = d9;
    }

    /* renamed from: a */
    public static ui3 m10323a(ByteBuffer byteBuffer) {
        double m13019e = n04.m13019e(byteBuffer);
        double m13019e2 = n04.m13019e(byteBuffer);
        double m13018f = n04.m13018f(byteBuffer);
        return new ui3(m13019e, m13019e2, n04.m13019e(byteBuffer), n04.m13019e(byteBuffer), m13018f, n04.m13018f(byteBuffer), n04.m13018f(byteBuffer), n04.m13019e(byteBuffer), n04.m13019e(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ui3.class != obj.getClass()) {
            return false;
        }
        ui3 ui3Var = (ui3) obj;
        return Double.compare(ui3Var.f30638h, this.f30638h) == 0 && Double.compare(ui3Var.f30639i, this.f30639i) == 0 && Double.compare(ui3Var.f30640j, this.f30640j) == 0 && Double.compare(ui3Var.f30641k, this.f30641k) == 0 && Double.compare(ui3Var.f30642l, this.f30642l) == 0 && Double.compare(ui3Var.f30643m, this.f30643m) == 0 && Double.compare(ui3Var.f30635e, this.f30635e) == 0 && Double.compare(ui3Var.f30636f, this.f30636f) == 0 && Double.compare(ui3Var.f30637g, this.f30637g) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f30635e);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f30636f);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f30637g);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f30638h);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f30639i);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f30640j);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f30641k);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f30642l);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f30643m);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3))) * 31) + ((int) ((doubleToLongBits4 >>> 32) ^ doubleToLongBits4))) * 31) + ((int) ((doubleToLongBits5 >>> 32) ^ doubleToLongBits5))) * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31) + ((int) ((doubleToLongBits7 >>> 32) ^ doubleToLongBits7))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(f30631a)) {
            return "Rotate 0°";
        }
        if (equals(f30632b)) {
            return "Rotate 90°";
        }
        if (equals(f30633c)) {
            return "Rotate 180°";
        }
        if (equals(f30634d)) {
            return "Rotate 270°";
        }
        double d = this.f30635e;
        double d2 = this.f30636f;
        double d3 = this.f30637g;
        double d4 = this.f30638h;
        double d5 = this.f30639i;
        double d6 = this.f30640j;
        double d7 = this.f30641k;
        double d8 = this.f30642l;
        double d9 = this.f30643m;
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
