package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeob.class */
abstract class zzeob<T, B> {
    public abstract void zza(B b, int i, long j);

    public abstract void zza(B b, int i, zzejr zzejrVar);

    abstract void zza(B b, int i, T t);

    public abstract void zza(T t, zzeoy zzeoyVar) throws IOException;

    public abstract boolean zza(zzend zzendVar);

    public final boolean zza(B b, zzend zzendVar) throws IOException {
        int tag = zzendVar.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            zza((zzeob<T, B>) b, i, zzendVar.zzbgu());
            return true;
        } else if (i2 == 1) {
            zzb(b, i, zzendVar.zzbgw());
            return true;
        } else if (i2 == 2) {
            zza((zzeob<T, B>) b, i, zzendVar.zzbha());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzelo.zzbjf();
            }
            zzc(b, i, zzendVar.zzbgx());
            return true;
        } else {
            B zzbky = zzbky();
            while (zzendVar.zzbhq() != Integer.MAX_VALUE && zza((zzeob<T, B>) zzbky, zzendVar)) {
            }
            if ((4 | (i << 3)) != zzendVar.getTag()) {
                throw zzelo.zzbje();
            }
            zza((zzeob<T, B>) b, i, (int) zzaq(zzbky));
            return true;
        }
    }

    public abstract void zzak(Object obj);

    abstract T zzaq(B b);

    public abstract int zzau(T t);

    public abstract T zzay(Object obj);

    public abstract B zzaz(Object obj);

    abstract void zzb(B b, int i, long j);

    public abstract int zzba(T t);

    public abstract B zzbky();

    abstract void zzc(B b, int i, int i2);

    public abstract void zzc(T t, zzeoy zzeoyVar) throws IOException;

    public abstract void zzi(Object obj, T t);

    public abstract void zzj(Object obj, B b);

    public abstract T zzk(T t, T t2);
}
