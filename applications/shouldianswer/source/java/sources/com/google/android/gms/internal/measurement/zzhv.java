package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhv.class */
abstract class zzhv<T, B> {
    public abstract B zza();

    abstract T zza(B b);

    abstract void zza(B b, int i, int i2);

    public abstract void zza(B b, int i, long j);

    public abstract void zza(B b, int i, zzdu zzduVar);

    abstract void zza(B b, int i, T t);

    public abstract void zza(T t, zzis zzisVar);

    public abstract void zza(Object obj, T t);

    public abstract boolean zza(zzhe zzheVar);

    public final boolean zza(B b, zzhe zzheVar) {
        int zzb = zzheVar.zzb();
        int i = zzb >>> 3;
        int i2 = zzb & 7;
        if (i2 == 0) {
            zza((zzhv<T, B>) b, i, zzheVar.zzg());
            return true;
        } else if (i2 == 1) {
            zzb(b, i, zzheVar.zzi());
            return true;
        } else if (i2 == 2) {
            zza((zzhv<T, B>) b, i, zzheVar.zzn());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzfo.zzf();
            }
            zza((zzhv<T, B>) b, i, zzheVar.zzj());
            return true;
        } else {
            B zza = zza();
            while (zzheVar.zza() != Integer.MAX_VALUE && zza((zzhv<T, B>) zza, zzheVar)) {
            }
            if ((4 | (i << 3)) != zzheVar.zzb()) {
                throw zzfo.zze();
            }
            zza((zzhv<T, B>) b, i, (int) zza((zzhv<T, B>) zza));
            return true;
        }
    }

    public abstract T zzb(Object obj);

    abstract void zzb(B b, int i, long j);

    public abstract void zzb(T t, zzis zzisVar);

    public abstract void zzb(Object obj, B b);

    public abstract B zzc(Object obj);

    public abstract T zzc(T t, T t2);

    public abstract void zzd(Object obj);

    public abstract int zze(T t);

    public abstract int zzf(T t);
}
