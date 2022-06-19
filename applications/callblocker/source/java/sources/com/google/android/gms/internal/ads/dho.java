package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dho.class */
public final class dho {

    /* renamed from: a */
    public static final dho f14366a = new dho(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k */
    private static final dho f14367k = new dho(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l */
    private static final dho f14368l = new dho(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m */
    private static final dho f14369m = new dho(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: b */
    private final double f14370b;

    /* renamed from: c */
    private final double f14371c;

    /* renamed from: d */
    private final double f14372d;

    /* renamed from: e */
    private final double f14373e;

    /* renamed from: f */
    private final double f14374f;

    /* renamed from: g */
    private final double f14375g;

    /* renamed from: h */
    private final double f14376h;

    /* renamed from: i */
    private final double f14377i;

    /* renamed from: j */
    private final double f14378j;

    private dho(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f14370b = d5;
        this.f14371c = d6;
        this.f14372d = d7;
        this.f14373e = d;
        this.f14374f = d2;
        this.f14375g = d3;
        this.f14376h = d4;
        this.f14377i = d8;
        this.f14378j = d9;
    }

    /* renamed from: a */
    public static dho m9454a(ByteBuffer byteBuffer) {
        double m13541d = aej.m13541d(byteBuffer);
        double m13541d2 = aej.m13541d(byteBuffer);
        double m13540e = aej.m13540e(byteBuffer);
        return new dho(m13541d, m13541d2, aej.m13541d(byteBuffer), aej.m13541d(byteBuffer), m13540e, aej.m13540e(byteBuffer), aej.m13540e(byteBuffer), aej.m13541d(byteBuffer), aej.m13541d(byteBuffer));
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dho dhoVar = (dho) obj;
                if (Double.compare(dhoVar.f14373e, this.f14373e) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14374f, this.f14374f) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14375g, this.f14375g) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14376h, this.f14376h) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14377i, this.f14377i) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14378j, this.f14378j) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14370b, this.f14370b) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14371c, this.f14371c) != 0) {
                    z = false;
                } else if (Double.compare(dhoVar.f14372d, this.f14372d) != 0) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f14370b);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f14371c);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f14372d);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f14373e);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f14374f);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f14375g);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f14376h);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.f14377i);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.f14378j);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        String sb;
        if (equals(f14366a)) {
            sb = "Rotate 0°";
        } else if (equals(f14367k)) {
            sb = "Rotate 90°";
        } else if (equals(f14368l)) {
            sb = "Rotate 180°";
        } else if (equals(f14369m)) {
            sb = "Rotate 270°";
        } else {
            double d = this.f14370b;
            double d2 = this.f14371c;
            double d3 = this.f14372d;
            double d4 = this.f14373e;
            double d5 = this.f14374f;
            double d6 = this.f14375g;
            double d7 = this.f14376h;
            double d8 = this.f14377i;
            sb = new StringBuilder(260).append("Matrix{u=").append(d).append(", v=").append(d2).append(", w=").append(d3).append(", a=").append(d4).append(", b=").append(d5).append(", c=").append(d6).append(", d=").append(d7).append(", tx=").append(d8).append(", ty=").append(this.f14378j).append("}").toString();
        }
        return sb;
    }
}
