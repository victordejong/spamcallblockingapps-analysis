package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabj.class */
final class zzabj implements zzabi {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;

    private zzabj(long[] jArr, long[] jArr2, long j, long j2) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    public static zzabj zza(long j, long j2, zzxj zzxjVar, zzfd zzfdVar) {
        int i;
        zzfdVar.zzG(10);
        int zze = zzfdVar.zze();
        if (zze <= 0) {
            return null;
        }
        int i2 = zzxjVar.zzd;
        long zzt = zzfn.zzt(zze, (i2 >= 32000 ? 1152 : 576) * 1000000, i2);
        int zzo = zzfdVar.zzo();
        int zzo2 = zzfdVar.zzo();
        int zzo3 = zzfdVar.zzo();
        zzfdVar.zzG(2);
        long j3 = j2 + zzxjVar.zzc;
        long[] jArr = new long[zzo];
        long[] jArr2 = new long[zzo];
        char c = j2;
        for (int i3 = 0; i3 < zzo; i3++) {
            jArr[i3] = (i3 * zzt) / zzo;
            jArr2[i3] = Math.max((long) c, j3);
            if (zzo3 == 1) {
                i = zzfdVar.zzk();
            } else if (zzo3 == 2) {
                i = zzfdVar.zzo();
            } else if (zzo3 == 3) {
                i = zzfdVar.zzm();
            } else if (zzo3 != 4) {
                return null;
            } else {
                i = zzfdVar.zzn();
            }
            c += i * zzo2;
        }
        if (j != -1 && j != c) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append((long) c);
            Log.w("VbriSeeker", sb.toString());
        }
        return new zzabj(jArr, jArr2, zzt, c);
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzabi
    public final long zzc(long j) {
        return this.zza[zzfn.zzd(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        int zzd = zzfn.zzd(this.zza, j, true, true);
        zzxq zzxqVar = new zzxq(this.zza[zzd], this.zzb[zzd]);
        if (zzxqVar.zzb < j) {
            long[] jArr = this.zza;
            if (zzd != jArr.length - 1) {
                int i = zzd + 1;
                return new zzxn(zzxqVar, new zzxq(jArr[i], this.zzb[i]));
            }
        }
        return new zzxn(zzxqVar, zzxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
