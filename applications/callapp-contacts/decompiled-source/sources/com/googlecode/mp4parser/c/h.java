package com.googlecode.mp4parser.c;

import com.b.a.e;
import com.b.a.f;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/h.class */
public final class h {
    public static final h j = new h(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final h k = new h(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final h l = new h(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final h m = new h(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a  reason: collision with root package name */
    double f33173a;

    /* renamed from: b  reason: collision with root package name */
    double f33174b;

    /* renamed from: c  reason: collision with root package name */
    double f33175c;

    /* renamed from: d  reason: collision with root package name */
    double f33176d;
    double e;
    double f;
    double g;
    double h;
    double i;

    public h(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.f33173a = d6;
        this.f33174b = d7;
        this.f33175c = d8;
        this.f33176d = d2;
        this.e = d3;
        this.f = d4;
        this.g = d5;
        this.h = d9;
        this.i = d10;
    }

    public static h a(ByteBuffer byteBuffer) {
        double e = e.e(byteBuffer);
        double e2 = e.e(byteBuffer);
        double f = e.f(byteBuffer);
        return new h(e, e2, e.e(byteBuffer), e.e(byteBuffer), f, e.f(byteBuffer), e.f(byteBuffer), e.e(byteBuffer), e.e(byteBuffer));
    }

    public final void b(ByteBuffer byteBuffer) {
        f.a(byteBuffer, this.f33176d);
        f.a(byteBuffer, this.e);
        f.b(byteBuffer, this.f33173a);
        f.a(byteBuffer, this.f);
        f.a(byteBuffer, this.g);
        f.b(byteBuffer, this.f33174b);
        f.a(byteBuffer, this.h);
        f.a(byteBuffer, this.i);
        f.b(byteBuffer, this.f33175c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return Double.compare(hVar.f33176d, this.f33176d) == 0 && Double.compare(hVar.e, this.e) == 0 && Double.compare(hVar.f, this.f) == 0 && Double.compare(hVar.g, this.g) == 0 && Double.compare(hVar.h, this.h) == 0 && Double.compare(hVar.i, this.i) == 0 && Double.compare(hVar.f33173a, this.f33173a) == 0 && Double.compare(hVar.f33174b, this.f33174b) == 0 && Double.compare(hVar.f33175c, this.f33175c) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f33173a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f33174b);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f33175c);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f33176d);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.e);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.g);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.h);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.i);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(j)) {
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
        return "Matrix{u=" + this.f33173a + ", v=" + this.f33174b + ", w=" + this.f33175c + ", a=" + this.f33176d + ", b=" + this.e + ", c=" + this.f + ", d=" + this.g + ", tx=" + this.h + ", ty=" + this.i + '}';
    }
}
