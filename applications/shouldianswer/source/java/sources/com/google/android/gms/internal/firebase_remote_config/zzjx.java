package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjx.class */
abstract class zzjx<T, B> {
    public abstract void zza(B b, int i, long j);

    public abstract void zza(B b, int i, zzfx zzfxVar);

    abstract void zza(B b, int i, T t);

    public abstract void zza(T t, zzku zzkuVar);

    public abstract boolean zza(zzjg zzjgVar);

    public final boolean zza(B b, zzjg zzjgVar) {
        int tag = zzjgVar.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            zza((zzjx<T, B>) b, i, zzjgVar.zzfd());
            return true;
        } else if (i2 == 1) {
            zzb(b, i, zzjgVar.zzff());
            return true;
        } else if (i2 == 2) {
            zza((zzjx<T, B>) b, i, zzjgVar.zzfj());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzhq.zzhj();
            }
            zzc(b, i, zzjgVar.zzfg());
            return true;
        } else {
            B zziz = zziz();
            while (zzjgVar.zzfz() != Integer.MAX_VALUE && zza((zzjx<T, B>) zziz, zzjgVar)) {
            }
            if ((4 | (i << 3)) != zzjgVar.getTag()) {
                throw zzhq.zzhi();
            }
            zza((zzjx<T, B>) b, i, (int) zzs(zziz));
            return true;
        }
    }

    public abstract T zzaa(Object obj);

    public abstract B zzab(Object obj);

    public abstract int zzac(T t);

    abstract void zzb(B b, int i, long j);

    abstract void zzc(B b, int i, int i2);

    public abstract void zzc(T t, zzku zzkuVar);

    public abstract void zzg(Object obj, T t);

    public abstract void zzh(Object obj, B b);

    public abstract T zzi(T t, T t2);

    public abstract B zziz();

    public abstract void zzm(Object obj);

    abstract T zzs(B b);

    public abstract int zzw(T t);
}
