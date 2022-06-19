package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgix.class */
public abstract class zzgix {
    public final Unsafe zza;

    public zzgix(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract void zza(Object obj, long j, byte b);

    public abstract boolean zzb(Object obj, long j);

    public abstract void zzc(Object obj, long j, boolean z);

    public abstract float zzd(Object obj, long j);

    public abstract void zze(Object obj, long j, float f);

    public abstract double zzf(Object obj, long j);

    public abstract void zzg(Object obj, long j, double d);

    public abstract byte zzh(long j);

    public abstract void zzi(long j, byte[] bArr, long j2, long j3);

    public final long zzj(Field field) {
        return this.zza.objectFieldOffset(field);
    }

    public final int zzk(Class<?> cls) {
        return this.zza.arrayBaseOffset(cls);
    }

    public final int zzl(Class<?> cls) {
        return this.zza.arrayIndexScale(cls);
    }

    public final int zzm(Object obj, long j) {
        return this.zza.getInt(obj, j);
    }

    public final void zzn(Object obj, long j, int i) {
        this.zza.putInt(obj, j, i);
    }

    public final long zzo(Object obj, long j) {
        return this.zza.getLong(obj, j);
    }

    public final void zzp(Object obj, long j, long j2) {
        this.zza.putLong(obj, j, j2);
    }

    public final Object zzq(Object obj, long j) {
        return this.zza.getObject(obj, j);
    }

    public final void zzr(Object obj, long j, Object obj2) {
        this.zza.putObject(obj, j, obj2);
    }
}
