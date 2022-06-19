package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzc.class */
public final class zzc {
    public static final zzadw<zzc> zzh = zzb.zza;
    public final long zza;
    public final int zzb;
    public final Uri[] zzc;
    public final int[] zzd;
    public final long[] zze;
    public final long zzf;
    public final boolean zzg;

    public zzc(long j) {
        this(0L, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    private zzc(long j, int i, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        zzakt.zza(iArr.length == uriArr.length);
        this.zza = 0L;
        this.zzb = i;
        this.zzd = iArr;
        this.zzc = uriArr;
        this.zze = jArr;
        this.zzf = 0L;
        this.zzg = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzc.class != obj.getClass()) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return this.zzb == zzcVar.zzb && Arrays.equals(this.zzc, zzcVar.zzc) && Arrays.equals(this.zzd, zzcVar.zzd) && Arrays.equals(this.zze, zzcVar.zze);
    }

    public final int hashCode() {
        int i = this.zzb;
        int hashCode = Arrays.hashCode(this.zzc);
        return (Arrays.hashCode(this.zze) + ((Arrays.hashCode(this.zzd) + (((i * 961) + hashCode) * 31)) * 31)) * 961;
    }

    public final int zza(int i) {
        int i2;
        while (true) {
            i++;
            int[] iArr = this.zzd;
            if (i >= iArr.length || (i2 = iArr[i]) == 0 || i2 == 1) {
                break;
            }
        }
        return i;
    }

    public final zzc zzb(int i) {
        int[] iArr = this.zzd;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = this.zze;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        return new zzc(0L, 0, copyOf, (Uri[]) Arrays.copyOf(this.zzc, 0), copyOf2, 0L, false);
    }
}
