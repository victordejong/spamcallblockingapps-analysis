package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgio.class */
public abstract class zzgio<T, B> {
    public abstract boolean zza(zzght zzghtVar);

    public abstract void zzb(B b, int i, long j);

    public abstract void zzc(B b, int i, int i2);

    public abstract void zzd(B b, int i, long j);

    public abstract void zze(B b, int i, zzgex zzgexVar);

    public abstract void zzf(B b, int i, T t);

    public abstract B zzg();

    public abstract T zzh(B b);

    public abstract void zzi(Object obj, T t);

    public abstract T zzj(Object obj);

    public abstract B zzk(Object obj);

    public abstract void zzl(Object obj, B b);

    public abstract void zzm(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzn(B b, zzght zzghtVar) throws IOException {
        int zzc = zzghtVar.zzc();
        int i = zzc >>> 3;
        int i2 = zzc & 7;
        if (i2 == 0) {
            zzb(b, i, zzghtVar.zzh());
            return true;
        } else if (i2 == 1) {
            zzd(b, i, zzghtVar.zzj());
            return true;
        } else if (i2 == 2) {
            zze(b, i, zzghtVar.zzq());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            zzc(b, i, zzghtVar.zzk());
            return true;
        } else {
            Object zzg = zzg();
            while (zzghtVar.zzb() != Integer.MAX_VALUE && zzn(zzg, zzghtVar)) {
            }
            if ((4 | (i << 3)) != zzghtVar.zzc()) {
                throw zzggm.zzh();
            }
            zzh(zzg);
            zzf(b, i, zzg);
            return true;
        }
    }

    public abstract T zzo(T t, T t2);

    public abstract int zzp(T t);

    public abstract int zzq(T t);

    public abstract void zzr(T t, zzgfi zzgfiVar) throws IOException;
}
