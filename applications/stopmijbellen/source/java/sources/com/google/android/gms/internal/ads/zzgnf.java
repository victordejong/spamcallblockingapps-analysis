package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnf.class */
abstract class zzgnf<T, B> {
    public abstract int zza(T t);

    public abstract int zzb(T t);

    public abstract B zzc(Object obj);

    public abstract T zzd(Object obj);

    public abstract T zze(T t, T t2);

    public abstract B zzf();

    public abstract T zzg(B b);

    public abstract void zzh(B b, int i, int i2);

    public abstract void zzi(B b, int i, long j);

    public abstract void zzj(B b, int i, T t);

    public abstract void zzk(B b, int i, zzgjf zzgjfVar);

    public abstract void zzl(B b, int i, long j);

    public abstract void zzm(Object obj);

    public abstract void zzn(Object obj, B b);

    public abstract void zzo(Object obj, T t);

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzp(B b, zzgmg zzgmgVar) throws IOException {
        int zzd = zzgmgVar.zzd();
        int i = zzd >>> 3;
        int i2 = zzd & 7;
        if (i2 == 0) {
            zzl(b, i, zzgmgVar.zzl());
            return true;
        } else if (i2 == 1) {
            zzi(b, i, zzgmgVar.zzk());
            return true;
        } else if (i2 == 2) {
            zzk(b, i, zzgmgVar.zzp());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzgkx.zza();
            }
            zzh(b, i, zzgmgVar.zzf());
            return true;
        } else {
            Object zzf = zzf();
            while (zzgmgVar.zzc() != Integer.MAX_VALUE && zzp(zzf, zzgmgVar)) {
            }
            if ((4 | (i << 3)) != zzgmgVar.zzd()) {
                throw zzgkx.zzb();
            }
            zzg(zzf);
            zzj(b, i, zzf);
            return true;
        }
    }

    public abstract boolean zzq(zzgmg zzgmgVar);

    public abstract void zzr(T t, zzgjt zzgjtVar) throws IOException;
}
