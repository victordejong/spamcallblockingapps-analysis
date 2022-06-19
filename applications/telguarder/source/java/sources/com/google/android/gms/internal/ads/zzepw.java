package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepw.class */
public final class zzepw {
    public static final zzepw zzjbr = new zzepw(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbs = new zzepw(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbt = new zzepw(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzepw zzjbu = new zzepw(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a */
    private final double f121a;

    /* renamed from: b */
    private final double f122b;

    /* renamed from: c */
    private final double f123c;

    /* renamed from: d */
    private final double f124d;

    /* renamed from: w */
    private final double f125w;
    private final double zzjbn;
    private final double zzjbo;
    private final double zzjbp;
    private final double zzjbq;

    private zzepw(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.zzjbn = d5;
        this.zzjbo = d6;
        this.f125w = d7;
        this.f121a = d;
        this.f122b = d2;
        this.f123c = d3;
        this.f124d = d4;
        this.zzjbp = d8;
        this.zzjbq = d9;
    }

    public static zzepw zzs(ByteBuffer byteBuffer) {
        double zzi = zzbp.zzi(byteBuffer);
        double zzi2 = zzbp.zzi(byteBuffer);
        double zzj = zzbp.zzj(byteBuffer);
        return new zzepw(zzi, zzi2, zzbp.zzi(byteBuffer), zzbp.zzi(byteBuffer), zzj, zzbp.zzj(byteBuffer), zzbp.zzj(byteBuffer), zzbp.zzi(byteBuffer), zzbp.zzi(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzepw zzepwVar = (zzepw) obj;
        return Double.compare(zzepwVar.f121a, this.f121a) == 0 && Double.compare(zzepwVar.f122b, this.f122b) == 0 && Double.compare(zzepwVar.f123c, this.f123c) == 0 && Double.compare(zzepwVar.f124d, this.f124d) == 0 && Double.compare(zzepwVar.zzjbp, this.zzjbp) == 0 && Double.compare(zzepwVar.zzjbq, this.zzjbq) == 0 && Double.compare(zzepwVar.zzjbn, this.zzjbn) == 0 && Double.compare(zzepwVar.zzjbo, this.zzjbo) == 0 && Double.compare(zzepwVar.f125w, this.f125w) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzjbn);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzjbo);
        int i2 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        long doubleToLongBits3 = Double.doubleToLongBits(this.f125w);
        int i3 = (int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32));
        long doubleToLongBits4 = Double.doubleToLongBits(this.f121a);
        int i4 = (int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32));
        long doubleToLongBits5 = Double.doubleToLongBits(this.f122b);
        int i5 = (int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32));
        long doubleToLongBits6 = Double.doubleToLongBits(this.f123c);
        int i6 = (int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32));
        long doubleToLongBits7 = Double.doubleToLongBits(this.f124d);
        int i7 = (int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32));
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzjbp);
        int i8 = (int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32));
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzjbq);
        return (((((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zzjbr)) {
            return "Rotate 0°";
        }
        if (equals(zzjbs)) {
            return "Rotate 90°";
        }
        if (equals(zzjbt)) {
            return "Rotate 180°";
        }
        if (equals(zzjbu)) {
            return "Rotate 270°";
        }
        double d = this.zzjbn;
        double d2 = this.zzjbo;
        double d3 = this.f125w;
        double d4 = this.f121a;
        double d5 = this.f122b;
        double d6 = this.f123c;
        double d7 = this.f124d;
        double d8 = this.zzjbp;
        double d9 = this.zzjbq;
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
