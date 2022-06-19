package com.google.android.gms.internal.vision;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjj.class */
public abstract class zzjj<T, B> {
    public abstract void zza(B b, int i, long j);

    public abstract void zza(B b, int i, zzfh zzfhVar);

    public abstract void zza(B b, int i, T t);

    public abstract void zza(T t, zzkg zzkgVar) throws IOException;

    public abstract boolean zza(zzis zzisVar);

    public final boolean zza(B b, zzis zzisVar) throws IOException {
        int tag = zzisVar.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            zza((zzjj<T, B>) b, i, zzisVar.zzdx());
            return true;
        } else if (i2 == 1) {
            zzb(b, i, zzisVar.zzdz());
            return true;
        } else if (i2 == 2) {
            zza((zzjj<T, B>) b, i, zzisVar.zzed());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzhc.zzgr();
            }
            zzc(b, i, zzisVar.zzea());
            return true;
        } else {
            B zzif = zzif();
            while (zzisVar.zzdu() != Integer.MAX_VALUE && zza((zzjj<T, B>) zzif, zzisVar)) {
            }
            if ((4 | (i << 3)) != zzisVar.getTag()) {
                throw zzhc.zzgq();
            }
            zza((zzjj<T, B>) b, i, (int) zzn(zzif));
            return true;
        }
    }

    public abstract void zzb(B b, int i, long j);

    public abstract void zzc(B b, int i, int i2);

    public abstract void zzc(T t, zzkg zzkgVar) throws IOException;

    public abstract void zzf(Object obj, T t);

    public abstract void zzg(Object obj);

    public abstract void zzg(Object obj, B b);

    public abstract T zzh(T t, T t2);

    public abstract B zzif();

    public abstract T zzn(B b);

    public abstract int zzr(T t);

    public abstract T zzv(Object obj);

    public abstract B zzw(Object obj);

    public abstract int zzx(T t);
}
