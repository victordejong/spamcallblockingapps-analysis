package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkg.class */
public abstract class zzkg {
    final Unsafe zza;

    public zzkg(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract byte zza(Object obj, long j);

    public abstract void zzb(Object obj, long j, byte b);

    public abstract boolean zzc(Object obj, long j);

    public abstract void zzd(Object obj, long j, boolean z);

    public abstract float zze(Object obj, long j);

    public abstract void zzf(Object obj, long j, float f);

    public abstract double zzg(Object obj, long j);

    public abstract void zzh(Object obj, long j, double d);

    public boolean zzi() {
        Unsafe unsafe = this.zza;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                cls.getMethod("getInt", Object.class, Long.TYPE);
                cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
                cls.getMethod("getObject", Object.class, Long.TYPE);
                cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
                return true;
            } catch (Throwable th) {
                zzkh.zzs(th);
                return false;
            }
        }
        return false;
    }

    public boolean zzj() {
        Field zzF;
        Unsafe unsafe = this.zza;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                zzF = zzkh.zzF();
                return zzF != null;
            } catch (Throwable th) {
                zzkh.zzs(th);
                return false;
            }
        }
        return false;
    }

    public final long zzk(Field field) {
        return this.zza.objectFieldOffset(field);
    }

    public final int zzl(Class<?> cls) {
        return this.zza.arrayBaseOffset(cls);
    }

    public final int zzm(Class<?> cls) {
        return this.zza.arrayIndexScale(cls);
    }

    public final int zzn(Object obj, long j) {
        return this.zza.getInt(obj, j);
    }

    public final void zzo(Object obj, long j, int i) {
        this.zza.putInt(obj, j, i);
    }

    public final long zzp(Object obj, long j) {
        return this.zza.getLong(obj, j);
    }

    public final void zzq(Object obj, long j, long j2) {
        this.zza.putLong(obj, j, j2);
    }

    public final Object zzr(Object obj, long j) {
        return this.zza.getObject(obj, j);
    }

    public final void zzs(Object obj, long j, Object obj2) {
        this.zza.putObject(obj, j, obj2);
    }
}
