package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzm.class */
public final class zzm {
    public static final zzj<zzm> zza = zzl.zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final byte[] zze;
    private int zzf;

    public zzm(int i, int i2, int i3, byte[] bArr) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = bArr;
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
        if (obj == null || zzm.class != obj.getClass()) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return this.zzb == zzmVar.zzb && this.zzc == zzmVar.zzc && this.zzd == zzmVar.zzd && Arrays.equals(this.zze, zzmVar.zze);
    }

    public final int hashCode() {
        int i = this.zzf;
        if (i == 0) {
            int i2 = this.zzb;
            int i3 = this.zzc;
            int hashCode = Arrays.hashCode(this.zze) + ((((((i2 + 527) * 31) + i3) * 31) + this.zzd) * 31);
            this.zzf = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        int i = this.zzb;
        int i2 = this.zzc;
        int i3 = this.zzd;
        boolean z = this.zze != null;
        StringBuilder m8753i = C0082b.m8753i(55, "ColorInfo(", i, ", ", i2);
        m8753i.append(", ");
        m8753i.append(i3);
        m8753i.append(", ");
        m8753i.append(z);
        m8753i.append(")");
        return m8753i.toString();
    }
}
