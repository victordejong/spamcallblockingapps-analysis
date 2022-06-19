package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkf.class */
final class zzkf extends zzkg {
    public zzkf(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final byte zza(Object obj, long j) {
        return this.zza.getByte(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzb(Object obj, long j, byte b) {
        this.zza.putByte(obj, j, b);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzc(Object obj, long j) {
        return this.zza.getBoolean(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzd(Object obj, long j, boolean z) {
        this.zza.putBoolean(obj, j, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final float zze(Object obj, long j) {
        return this.zza.getFloat(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzf(Object obj, long j, float f) {
        this.zza.putFloat(obj, j, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final double zzg(Object obj, long j) {
        return this.zza.getDouble(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final void zzh(Object obj, long j, double d) {
        this.zza.putDouble(obj, j, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzi() {
        if (!super.zzi()) {
            return false;
        }
        try {
            Class<?> cls = this.zza.getClass();
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            zzkh.zzs(th);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkg
    public final boolean zzj() {
        if (!super.zzj()) {
            return false;
        }
        try {
            Class<?> cls = this.zza.getClass();
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            zzkh.zzs(th);
            return false;
        }
    }
}
