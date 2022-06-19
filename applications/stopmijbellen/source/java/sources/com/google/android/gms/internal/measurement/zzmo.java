package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmo.class */
final class zzmo extends zzmq {
    public zzmo(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final void zza(Object obj, long j, byte b) {
        if (zzmr.zzb) {
            zzmr.zzD(obj, j, b);
        } else {
            zzmr.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final boolean zzb(Object obj, long j) {
        return zzmr.zzb ? zzmr.zzv(obj, j) : zzmr.zzw(obj, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final void zzc(Object obj, long j, boolean z) {
        if (zzmr.zzb) {
            zzmr.zzD(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            zzmr.zzE(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final void zze(Object obj, long j, float f) {
        zzl(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final void zzg(Object obj, long j, double d) {
        zzn(obj, j, Double.doubleToLongBits(d));
    }
}
