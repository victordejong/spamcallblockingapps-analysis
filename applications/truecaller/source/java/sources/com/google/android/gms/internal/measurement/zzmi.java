package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmi.class */
public final class zzmi extends zzmk {
    public zzmi(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final void zzc(Object obj, long j, boolean z) {
        if (zzml.zzb) {
            zzml.zzD(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            zzml.zzE(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final void zzd(Object obj, long j, byte b) {
        if (zzml.zzb) {
            zzml.zzD(obj, j, b);
        } else {
            zzml.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzg(Object obj, long j) {
        return zzml.zzb ? zzml.zzt(obj, j) : zzml.zzu(obj, j);
    }
}
