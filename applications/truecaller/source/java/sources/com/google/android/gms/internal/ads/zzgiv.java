package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgiv.class */
public final class zzgiv extends zzgix {
    public zzgiv(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final void zza(Object obj, long j, byte b) {
        if (zzgiy.zzb) {
            zzgiy.zzG(obj, j, b);
        } else {
            zzgiy.zzH(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final boolean zzb(Object obj, long j) {
        return zzgiy.zzb ? zzgiy.zzx(obj, j) : zzgiy.zzy(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final void zzc(Object obj, long j, boolean z) {
        if (zzgiy.zzb) {
            zzgiy.zzG(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            zzgiy.zzH(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final void zze(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(zzo(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final void zzg(Object obj, long j, double d) {
        zzp(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final byte zzh(long j) {
        return Memory.peekByte((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzgix
    public final void zzi(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray((int) j, bArr, (int) j2, (int) j3);
    }
}
