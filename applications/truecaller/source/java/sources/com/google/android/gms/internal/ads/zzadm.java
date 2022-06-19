package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadm.class */
public abstract class zzadm extends zzaiq {
    private final int zza;
    private final zzix zzb;

    public zzadm(boolean z, zzix zzixVar, byte[] bArr) {
        this.zzb = zzixVar;
        this.zza = zzixVar.zza();
    }

    private final int zzs(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.zzb.zzb(i);
        } else if (i < this.zza - 1) {
            return i + 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    private final int zzx(int i, boolean z) {
        int i2;
        if (z) {
            i2 = this.zzb.zzc(i);
        } else if (i > 0) {
            return i - 1;
        } else {
            i2 = -1;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzb(int i, int i2, boolean z) {
        int i3;
        int zzm = zzm(i);
        int zzq = zzq(zzm);
        int zzb = zzo(zzm).zzb(i - zzq, i2 == 2 ? 0 : i2, z);
        if (zzb != -1) {
            return zzq + zzb;
        }
        int zzs = zzs(zzm, z);
        while (true) {
            i3 = zzs;
            if (i3 == -1 || !zzo(i3).zzt()) {
                break;
            }
            zzs = zzs(i3, z);
        }
        if (i3 != -1) {
            return zzo(i3).zze(z) + zzq(i3);
        } else if (i2 != 2) {
            return -1;
        } else {
            return zze(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzc(int i, int i2, boolean z) {
        int i3;
        int zzm = zzm(i);
        int zzq = zzq(zzm);
        int zzc = zzo(zzm).zzc(i - zzq, 0, false);
        if (zzc != -1) {
            return zzq + zzc;
        }
        int zzx = zzx(zzm, false);
        while (true) {
            i3 = zzx;
            if (i3 == -1 || !zzo(i3).zzt()) {
                break;
            }
            zzx = zzx(i3, false);
        }
        if (i3 == -1) {
            return -1;
        }
        return zzo(i3).zzd(false) + zzq(i3);
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzd(boolean z) {
        int i = this.zza;
        if (i == 0) {
            return -1;
        }
        int zzd = z ? this.zzb.zzd() : i - 1;
        while (zzo(zzd).zzt()) {
            int zzx = zzx(zzd, z);
            zzd = zzx;
            if (zzx == -1) {
                return -1;
            }
        }
        return zzo(zzd).zzd(z) + zzq(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zze(boolean z) {
        if (this.zza == 0) {
            return -1;
        }
        int zze = z ? this.zzb.zze() : 0;
        while (zzo(zze).zzt()) {
            int zzs = zzs(zze, z);
            zze = zzs;
            if (zzs == -1) {
                return -1;
            }
        }
        return zzo(zze).zze(z) + zzq(zze);
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final zzaip zzf(int i, zzaip zzaipVar, long j) {
        int zzm = zzm(i);
        int zzq = zzq(zzm);
        int zzp = zzp(zzm);
        zzo(zzm).zzf(i - zzq, zzaipVar, j);
        Object zzr = zzr(zzm);
        Pair pair = zzr;
        if (!zzaip.zza.equals(zzaipVar.zzb)) {
            pair = Pair.create(zzr, zzaipVar.zzb);
        }
        zzaipVar.zzb = pair;
        zzaipVar.zzn += zzp;
        zzaipVar.zzo += zzp;
        return zzaipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final zzain zzh(int i, zzain zzainVar, boolean z) {
        int zzl = zzl(i);
        int zzq = zzq(zzl);
        zzo(zzl).zzh(i - zzp(zzl), zzainVar, z);
        zzainVar.zzc += zzq;
        if (z) {
            Object zzr = zzr(zzl);
            Object obj = zzainVar.zzb;
            Objects.requireNonNull(obj);
            zzainVar.zzb = Pair.create(zzr, obj);
        }
        return zzainVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzi(Object obj) {
        int zzi;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int zzn = zzn(obj2);
            if (zzn != -1 && (zzi = zzo(zzn).zzi(obj3)) != -1) {
                return zzp(zzn) + zzi;
            }
            return -1;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final Object zzj(int i) {
        int zzl = zzl(i);
        return Pair.create(zzr(zzl), zzo(zzl).zzj(i - zzp(zzl)));
    }

    public abstract int zzl(int i);

    public abstract int zzm(int i);

    public abstract int zzn(Object obj);

    public abstract zzaiq zzo(int i);

    public abstract int zzp(int i);

    public abstract int zzq(int i);

    public abstract Object zzr(int i);

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final zzain zzy(Object obj, zzain zzainVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int zzn = zzn(obj2);
        int zzq = zzq(zzn);
        zzo(zzn).zzy(obj3, zzainVar);
        zzainVar.zzc += zzq;
        zzainVar.zzb = obj;
        return zzainVar;
    }
}
