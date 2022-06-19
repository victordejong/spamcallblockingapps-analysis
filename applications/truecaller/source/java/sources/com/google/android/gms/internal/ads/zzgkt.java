package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkt.class */
public final class zzgkt {
    public static final zzgkt zzj = new zzgkt(1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
    public static final zzgkt zzk = new zzgkt(PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, -1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
    public static final zzgkt zzl = new zzgkt(-1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, -1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
    public static final zzgkt zzm = new zzgkt(PlaceLikelihood.LIKELIHOOD_MIN_VALUE, -1.0d, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 1.0d, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
    public final double zza;
    public final double zzb;
    public final double zzc;
    public final double zzd;
    public final double zze;
    public final double zzf;
    public final double zzg;
    public final double zzh;
    public final double zzi;

    public zzgkt(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.zza = d5;
        this.zzb = d6;
        this.zzc = d7;
        this.zzd = d;
        this.zze = d2;
        this.zzf = d3;
        this.zzg = d4;
        this.zzh = d8;
        this.zzi = d9;
    }

    public static zzgkt zza(ByteBuffer byteBuffer) {
        double zze = zzxo.zze(byteBuffer);
        double zze2 = zzxo.zze(byteBuffer);
        double zzf = zzxo.zzf(byteBuffer);
        return new zzgkt(zze, zze2, zzxo.zze(byteBuffer), zzxo.zze(byteBuffer), zzf, zzxo.zzf(byteBuffer), zzxo.zzf(byteBuffer), zzxo.zze(byteBuffer), zzxo.zze(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzgkt.class != obj.getClass()) {
            return false;
        }
        zzgkt zzgktVar = (zzgkt) obj;
        return Double.compare(zzgktVar.zzd, this.zzd) == 0 && Double.compare(zzgktVar.zze, this.zze) == 0 && Double.compare(zzgktVar.zzf, this.zzf) == 0 && Double.compare(zzgktVar.zzg, this.zzg) == 0 && Double.compare(zzgktVar.zzh, this.zzh) == 0 && Double.compare(zzgktVar.zzi, this.zzi) == 0 && Double.compare(zzgktVar.zza, this.zza) == 0 && Double.compare(zzgktVar.zzb, this.zzb) == 0 && Double.compare(zzgktVar.zzc, this.zzc) == 0;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zza);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzb);
        long doubleToLongBits3 = Double.doubleToLongBits(this.zzc);
        long doubleToLongBits4 = Double.doubleToLongBits(this.zzd);
        long doubleToLongBits5 = Double.doubleToLongBits(this.zze);
        long doubleToLongBits6 = Double.doubleToLongBits(this.zzf);
        long doubleToLongBits7 = Double.doubleToLongBits(this.zzg);
        long doubleToLongBits8 = Double.doubleToLongBits(this.zzh);
        long doubleToLongBits9 = Double.doubleToLongBits(this.zzi);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3))) * 31) + ((int) ((doubleToLongBits4 >>> 32) ^ doubleToLongBits4))) * 31) + ((int) ((doubleToLongBits5 >>> 32) ^ doubleToLongBits5))) * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31) + ((int) ((doubleToLongBits7 >>> 32) ^ doubleToLongBits7))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) ((doubleToLongBits9 >>> 32) ^ doubleToLongBits9));
    }

    public final String toString() {
        if (equals(zzj)) {
            return "Rotate 0°";
        }
        if (equals(zzk)) {
            return "Rotate 90°";
        }
        if (equals(zzl)) {
            return "Rotate 180°";
        }
        if (equals(zzm)) {
            return "Rotate 270°";
        }
        double d = this.zza;
        double d2 = this.zzb;
        double d3 = this.zzc;
        double d4 = this.zzd;
        double d5 = this.zze;
        double d6 = this.zzf;
        double d7 = this.zzg;
        double d8 = this.zzh;
        double d9 = this.zzi;
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
