package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xg2.class */
public final class xg2 {

    /* renamed from: j */
    public static final xg2 f9109j = new xg2(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    public static final xg2 f9110k = new xg2(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    public static final xg2 f9111l = new xg2(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    public static final xg2 f9112m = new xg2(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a */
    public final double f9113a;

    /* renamed from: b */
    public final double f9114b;

    /* renamed from: c */
    public final double f9115c;

    /* renamed from: d */
    public final double f9116d;

    /* renamed from: e */
    public final double f9117e;

    /* renamed from: f */
    public final double f9118f;

    /* renamed from: g */
    public final double f9119g;

    /* renamed from: h */
    public final double f9120h;

    /* renamed from: i */
    public final double f9121i;

    public xg2(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f9113a = d5;
        this.f9114b = d6;
        this.f9115c = d7;
        this.f9116d = d;
        this.f9117e = d2;
        this.f9118f = d3;
        this.f9119g = d4;
        this.f9120h = d8;
        this.f9121i = d9;
    }

    /* renamed from: a */
    public static xg2 m4902a(ByteBuffer byteBuffer) {
        double e = h10.m7313e(byteBuffer);
        double e2 = h10.m7313e(byteBuffer);
        double f = h10.m7312f(byteBuffer);
        return new xg2(e, e2, h10.m7313e(byteBuffer), h10.m7313e(byteBuffer), f, h10.m7312f(byteBuffer), h10.m7312f(byteBuffer), h10.m7313e(byteBuffer), h10.m7313e(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || xg2.class != obj.getClass()) {
            return false;
        }
        xg2 xg2Var = (xg2) obj;
        return Double.compare(xg2Var.f9116d, this.f9116d) == 0 && Double.compare(xg2Var.f9117e, this.f9117e) == 0 && Double.compare(xg2Var.f9118f, this.f9118f) == 0 && Double.compare(xg2Var.f9119g, this.f9119g) == 0 && Double.compare(xg2Var.f9120h, this.f9120h) == 0 && Double.compare(xg2Var.f9121i, this.f9121i) == 0 && Double.compare(xg2Var.f9113a, this.f9113a) == 0 && Double.compare(xg2Var.f9114b, this.f9114b) == 0 && Double.compare(xg2Var.f9115c, this.f9115c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f9113a);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f9114b);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f9115c);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f9116d);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f9117e);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f9118f);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f9119g);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f9120h);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f9121i);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3))) * 31) + ((int) ((doubleToLongBits4 >>> 32) ^ doubleToLongBits4))) * 31) + ((int) ((doubleToLongBits5 >>> 32) ^ doubleToLongBits5))) * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31) + ((int) ((doubleToLongBits7 >>> 32) ^ doubleToLongBits7))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(f9109j)) {
            return "Rotate 0°";
        }
        if (equals(f9110k)) {
            return "Rotate 90°";
        }
        if (equals(f9111l)) {
            return "Rotate 180°";
        }
        if (equals(f9112m)) {
            return "Rotate 270°";
        }
        double d = this.f9113a;
        double d2 = this.f9114b;
        double d3 = this.f9115c;
        double d4 = this.f9116d;
        double d5 = this.f9117e;
        double d6 = this.f9118f;
        double d7 = this.f9119g;
        double d8 = this.f9120h;
        double d9 = this.f9121i;
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
