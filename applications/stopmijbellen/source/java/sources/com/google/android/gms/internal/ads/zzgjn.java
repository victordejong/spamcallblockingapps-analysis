package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjn.class */
public abstract class zzgjn {
    public static final /* synthetic */ int zzd = 0;
    private static volatile int zze = 100;
    public int zza;
    public final int zzb = zze;
    public zzgjo zzc;

    public /* synthetic */ zzgjn(zzgjm zzgjmVar) {
    }

    public static int zzF(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zzG(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static zzgjn zzH(byte[] bArr, int i, int i2, boolean z) {
        zzgjh zzgjhVar = new zzgjh(bArr, i, i2, z, null);
        try {
            zzgjhVar.zze(i2);
            return zzgjhVar;
        } catch (zzgkx e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract void zzA(int i);

    public abstract boolean zzC() throws IOException;

    public abstract boolean zzD() throws IOException;

    public abstract boolean zzE(int i) throws IOException;

    public abstract double zzb() throws IOException;

    public abstract float zzc() throws IOException;

    public abstract int zzd();

    public abstract int zze(int i) throws zzgkx;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzk() throws IOException;

    public abstract int zzl() throws IOException;

    public abstract int zzm() throws IOException;

    public abstract int zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract long zzt() throws IOException;

    public abstract long zzu() throws IOException;

    public abstract long zzv() throws IOException;

    public abstract zzgjf zzw() throws IOException;

    public abstract String zzx() throws IOException;

    public abstract String zzy() throws IOException;

    public abstract void zzz(int i) throws zzgkx;
}
