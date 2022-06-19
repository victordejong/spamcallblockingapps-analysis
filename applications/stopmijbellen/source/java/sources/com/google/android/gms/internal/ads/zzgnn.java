package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnn.class */
final class zzgnn extends zzgno {
    public zzgnn(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final byte zza(long j) {
        return Memory.peekByte(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final double zzb(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final float zzc(Object obj, long j) {
        return Float.intBitsToFloat(zzl(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final void zzd(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final void zze(Object obj, long j, boolean z) {
        if (zzgnp.zzb) {
            zzgnp.zzG(obj, j, r8 ? (byte) 1 : (byte) 0);
        } else {
            zzgnp.zzH(obj, j, r8 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final void zzf(Object obj, long j, byte b) {
        if (zzgnp.zzb) {
            zzgnp.zzG(obj, j, b);
        } else {
            zzgnp.zzH(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final void zzg(Object obj, long j, double d) {
        zzq(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final void zzh(Object obj, long j, float f) {
        zzp(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzgno
    public final boolean zzi(Object obj, long j) {
        return zzgnp.zzb ? zzgnp.zzw(obj, j) : zzgnp.zzx(obj, j);
    }
}
