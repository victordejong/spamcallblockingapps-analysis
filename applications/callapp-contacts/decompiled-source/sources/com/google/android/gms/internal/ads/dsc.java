package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsc.class */
public final class dsc {

    /* renamed from: a  reason: collision with root package name */
    public static final dsc f27147a = new dsc(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final dsc k = new dsc(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final dsc l = new dsc(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final dsc m = new dsc(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: b  reason: collision with root package name */
    private final double f27148b;

    /* renamed from: c  reason: collision with root package name */
    private final double f27149c;

    /* renamed from: d  reason: collision with root package name */
    private final double f27150d;
    private final double e;
    private final double f;
    private final double g;
    private final double h;
    private final double i;
    private final double j;

    private dsc(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.f27148b = d6;
        this.f27149c = d7;
        this.f27150d = d8;
        this.e = d2;
        this.f = d3;
        this.g = d4;
        this.h = d5;
        this.i = d9;
        this.j = d10;
    }

    public static dsc a(ByteBuffer byteBuffer) {
        double d2 = anm.d(byteBuffer);
        double d3 = anm.d(byteBuffer);
        double e = anm.e(byteBuffer);
        return new dsc(d2, d3, anm.d(byteBuffer), anm.d(byteBuffer), e, anm.e(byteBuffer), anm.e(byteBuffer), anm.d(byteBuffer), anm.d(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        dsc dscVar = (dsc) obj;
        return Double.compare(dscVar.e, this.e) == 0 && Double.compare(dscVar.f, this.f) == 0 && Double.compare(dscVar.g, this.g) == 0 && Double.compare(dscVar.h, this.h) == 0 && Double.compare(dscVar.i, this.i) == 0 && Double.compare(dscVar.j, this.j) == 0 && Double.compare(dscVar.f27148b, this.f27148b) == 0 && Double.compare(dscVar.f27149c, this.f27149c) == 0 && Double.compare(dscVar.f27150d, this.f27150d) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f27148b);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f27149c);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f27150d);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.e);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.g);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.h);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.i);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.j);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f27147a)) {
            return "Rotate 0°";
        }
        if (equals(k)) {
            return "Rotate 90°";
        }
        if (equals(l)) {
            return "Rotate 180°";
        }
        if (equals(m)) {
            return "Rotate 270°";
        }
        double d2 = this.f27148b;
        double d3 = this.f27149c;
        double d4 = this.f27150d;
        double d5 = this.e;
        double d6 = this.f;
        double d7 = this.g;
        double d8 = this.h;
        double d9 = this.i;
        double d10 = this.j;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d2);
        sb.append(", v=");
        sb.append(d3);
        sb.append(", w=");
        sb.append(d4);
        sb.append(", a=");
        sb.append(d5);
        sb.append(", b=");
        sb.append(d6);
        sb.append(", c=");
        sb.append(d7);
        sb.append(", d=");
        sb.append(d8);
        sb.append(", tx=");
        sb.append(d9);
        sb.append(", ty=");
        sb.append(d10);
        sb.append("}");
        return sb.toString();
    }
}
