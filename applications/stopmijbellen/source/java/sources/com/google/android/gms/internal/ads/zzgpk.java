package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpk.class */
public final class zzgpk {
    public static final zzgpk zza = new zzgpk(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzgpk zzb = new zzgpk(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzgpk zzc = new zzgpk(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final zzgpk zzd = new zzgpk(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public final double zze;
    public final double zzf;
    public final double zzg;
    public final double zzh;
    public final double zzi;
    public final double zzj;
    public final double zzk;
    public final double zzl;
    public final double zzm;

    public zzgpk(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.zze = d5;
        this.zzf = d6;
        this.zzg = d7;
        this.zzh = d;
        this.zzi = d2;
        this.zzj = d3;
        this.zzk = d4;
        this.zzl = d8;
        this.zzm = d9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzgpk.class != obj.getClass()) {
            return false;
        }
        zzgpk zzgpkVar = (zzgpk) obj;
        return Double.compare(zzgpkVar.zzh, this.zzh) == 0 && Double.compare(zzgpkVar.zzi, this.zzi) == 0 && Double.compare(zzgpkVar.zzj, this.zzj) == 0 && Double.compare(zzgpkVar.zzk, this.zzk) == 0 && Double.compare(zzgpkVar.zzl, this.zzl) == 0 && Double.compare(zzgpkVar.zzm, this.zzm) == 0 && Double.compare(zzgpkVar.zze, this.zze) == 0 && Double.compare(zzgpkVar.zzf, this.zzf) == 0 && Double.compare(zzgpkVar.zzg, this.zzg) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zze);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzf);
        long doubleToLongBits3 = Double.doubleToLongBits(this.zzg);
        long doubleToLongBits4 = Double.doubleToLongBits(this.zzh);
        long doubleToLongBits5 = Double.doubleToLongBits(this.zzi);
        long doubleToLongBits6 = Double.doubleToLongBits(this.zzj);
        long doubleToLongBits7 = Double.doubleToLongBits(this.zzk);
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzl);
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzm);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3))) * 31) + ((int) ((doubleToLongBits4 >>> 32) ^ doubleToLongBits4))) * 31) + ((int) ((doubleToLongBits5 >>> 32) ^ doubleToLongBits5))) * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31) + ((int) ((doubleToLongBits7 >>> 32) ^ doubleToLongBits7))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(zza)) {
            return "Rotate 0°";
        }
        if (equals(zzb)) {
            return "Rotate 90°";
        }
        if (equals(zzc)) {
            return "Rotate 180°";
        }
        if (equals(zzd)) {
            return "Rotate 270°";
        }
        double d = this.zze;
        double d2 = this.zzf;
        double d3 = this.zzg;
        double d4 = this.zzh;
        double d5 = this.zzi;
        double d6 = this.zzj;
        double d7 = this.zzk;
        double d8 = this.zzl;
        double d9 = this.zzm;
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
