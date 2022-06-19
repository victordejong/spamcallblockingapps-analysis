package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfp.class */
public abstract class zzfp extends zzcd {
    private final int zzc;
    private final zzrq zzd;

    public zzfp(boolean z, zzrq zzrqVar, byte[] bArr) {
        this.zzd = zzrqVar;
        this.zzc = zzrqVar.zzc();
    }

    private final int zzw(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.zzd.zzd(i);
        } else if (i < this.zzc - 1) {
            return i + 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    private final int zzx(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.zzd.zze(i);
        } else if (i > 0) {
            return i - 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zza(Object obj) {
        int zza;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int zzp = zzp(obj2);
            if (zzp != -1 && (zza = zzu(zzp).zza(obj3)) != -1) {
                return zzs(zzp) + zza;
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzca zzd(int i, zzca zzcaVar, boolean z) {
        int zzq = zzq(i);
        int zzt = zzt(zzq);
        zzu(zzq).zzd(i - zzs(zzq), zzcaVar, z);
        zzcaVar.zzd += zzt;
        if (z) {
            Object zzv = zzv(zzq);
            Object obj = zzcaVar.zzc;
            Objects.requireNonNull(obj);
            zzcaVar.zzc = Pair.create(zzv, obj);
        }
        return zzcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzcc zze(int i, zzcc zzccVar, long j) {
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzs = zzs(zzr);
        zzu(zzr).zze(i - zzt, zzccVar, j);
        Object zzv = zzv(zzr);
        Pair pair = zzv;
        if (!zzcc.zza.equals(zzccVar.zzc)) {
            pair = Pair.create(zzv, zzccVar.zzc);
        }
        zzccVar.zzc = pair;
        zzccVar.zzo += zzs;
        zzccVar.zzp += zzs;
        return zzccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final Object zzf(int i) {
        int zzq = zzq(i);
        return Pair.create(zzv(zzq), zzu(zzq).zzf(i - zzs(zzq)));
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzg(boolean z) {
        if (this.zzc == 0) {
            return -1;
        }
        int zza = z ? this.zzd.zza() : 0;
        while (zzu(zza).zzo()) {
            int zzw = zzw(zza, z);
            zza = zzw;
            if (zzw == -1) {
                return -1;
            }
        }
        return zzu(zza).zzg(z) + zzt(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzh(boolean z) {
        int i = this.zzc;
        if (i == 0) {
            return -1;
        }
        int zzb = z ? this.zzd.zzb() : i - 1;
        while (zzu(zzb).zzo()) {
            int zzx = zzx(zzb, z);
            zzb = zzx;
            if (zzx == -1) {
                return -1;
            }
        }
        return zzu(zzb).zzh(z) + zzt(zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzj(int i, int i2, boolean z) {
        int i3;
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzj = zzu(zzr).zzj(i - zzt, i2 == 2 ? 0 : i2, z);
        if (zzj != -1) {
            return zzt + zzj;
        }
        int zzw = zzw(zzr, z);
        while (true) {
            i3 = zzw;
            if (i3 == -1 || !zzu(i3).zzo()) {
                break;
            }
            zzw = zzw(i3, z);
        }
        if (i3 != -1) {
            return zzu(i3).zzg(z) + zzt(i3);
        } else if (i2 != 2) {
            return -1;
        } else {
            return zzg(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final int zzk(int i, int i2, boolean z) {
        int i3;
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzk = zzu(zzr).zzk(i - zzt, 0, false);
        if (zzk != -1) {
            return zzt + zzk;
        }
        int zzx = zzx(zzr, false);
        while (true) {
            i3 = zzx;
            if (i3 == -1 || !zzu(i3).zzo()) {
                break;
            }
            zzx = zzx(i3, false);
        }
        if (i3 == -1) {
            return -1;
        }
        return zzu(i3).zzh(false) + zzt(i3);
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final zzca zzn(Object obj, zzca zzcaVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int zzp = zzp(obj2);
        int zzt = zzt(zzp);
        zzu(zzp).zzn(obj3, zzcaVar);
        zzcaVar.zzd += zzt;
        zzcaVar.zzc = obj;
        return zzcaVar;
    }

    public abstract int zzp(Object obj);

    public abstract int zzq(int i);

    public abstract int zzr(int i);

    public abstract int zzs(int i);

    public abstract int zzt(int i);

    public abstract zzcd zzu(int i);

    public abstract Object zzv(int i);
}
