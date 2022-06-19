package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzj.class */
public final class zzj {
    public static final zzadw<zzj> zze = zzi.zza;
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final byte[] zzd;
    private int zzf;

    public zzj(int i, int i2, int i3, byte[] bArr) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = bArr;
    }

    @Pure
    public static int zza(int i) {
        if (i != 1) {
            if (i == 9) {
                return 6;
            }
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 1;
    }

    @Pure
    public static int zzb(int i) {
        if (i != 1) {
            if (i == 16) {
                return 6;
            }
            if (i == 18) {
                return 7;
            }
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzj.class != obj.getClass()) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.zza == zzjVar.zza && this.zzb == zzjVar.zzb && this.zzc == zzjVar.zzc && Arrays.equals(this.zzd, zzjVar.zzd);
    }

    public final int hashCode() {
        int i = this.zzf;
        if (i == 0) {
            int i2 = this.zza;
            int i3 = this.zzb;
            int hashCode = Arrays.hashCode(this.zzd) + ((((((i2 + 527) * 31) + i3) * 31) + this.zzc) * 31);
            this.zzf = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        boolean z = this.zzd != null;
        StringBuilder m8546z = C22128a.m8546z(55, "ColorInfo(", i, ", ", i2);
        m8546z.append(", ");
        m8546z.append(i3);
        m8546z.append(", ");
        m8546z.append(z);
        m8546z.append(")");
        return m8546z.toString();
    }
}
