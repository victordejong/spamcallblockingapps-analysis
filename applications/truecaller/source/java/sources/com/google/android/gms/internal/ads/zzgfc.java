package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfc.class */
public abstract class zzgfc {
    public static final /* synthetic */ int zzd = 0;
    private static volatile int zze = 100;
    public int zza;
    public final int zzb = zze;
    public zzgfd zzc;

    public /* synthetic */ zzgfc(zzgfa zzgfaVar) {
    }

    public static zzgfc zzF(byte[] bArr, int i, int i2, boolean z) {
        zzgey zzgeyVar = new zzgey(bArr, i, i2, z, null);
        try {
            zzgeyVar.zzz(i2);
            return zzgeyVar;
        } catch (zzggm e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int zzG(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long zzH(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public abstract void zzA(int i);

    public abstract boolean zzB() throws IOException;

    public abstract int zzC();

    public abstract int zza() throws IOException;

    public abstract void zzb(int i) throws zzggm;

    public abstract boolean zzc(int i) throws IOException;

    public abstract double zzd() throws IOException;

    public abstract float zze() throws IOException;

    public abstract long zzf() throws IOException;

    public abstract long zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract long zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract boolean zzk() throws IOException;

    public abstract String zzl() throws IOException;

    public abstract String zzm() throws IOException;

    public abstract zzgex zzn() throws IOException;

    public abstract int zzo() throws IOException;

    public abstract int zzp() throws IOException;

    public abstract int zzq() throws IOException;

    public abstract long zzr() throws IOException;

    public abstract int zzs() throws IOException;

    public abstract long zzt() throws IOException;

    public abstract int zzz(int i) throws zzggm;
}
