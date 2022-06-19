package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjk.class */
public abstract class zzjk extends zziu {
    private static final Logger zzb = Logger.getLogger(zzjk.class.getName());
    private static final boolean zzc = zzmr.zza();
    public zzjl zza;

    private zzjk() {
    }

    public /* synthetic */ zzjk(zzjh zzjhVar) {
    }

    public static int zzA(zzjd zzjdVar) {
        int zzc2 = zzjdVar.zzc();
        return zzw(zzc2) + zzc2;
    }

    public static int zzB(zzli zzliVar, zzlt zzltVar) {
        zzio zzioVar = (zzio) zzliVar;
        int zzbq = zzioVar.zzbq();
        int i = zzbq;
        if (zzbq == -1) {
            i = zzltVar.zze(zzioVar);
            zzioVar.zzbr(i);
        }
        return zzw(i) + i;
    }

    @Deprecated
    public static int zzE(int i, zzli zzliVar, zzlt zzltVar) {
        int zzw = zzw(i << 3);
        zzio zzioVar = (zzio) zzliVar;
        int zzbq = zzioVar.zzbq();
        int i2 = zzbq;
        if (zzbq == -1) {
            i2 = zzltVar.zze(zzioVar);
            zzioVar.zzbr(i2);
        }
        return zzw + zzw + i2;
    }

    public static zzjk zzt(byte[] bArr) {
        return new zzji(bArr, 0, bArr.length);
    }

    public static int zzu(int i) {
        return zzw(i << 3);
    }

    public static int zzv(int i) {
        if (i >= 0) {
            return zzw(i);
        }
        return 10;
    }

    public static int zzw(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static int zzx(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            r5 = j >>> 28;
            i = 6;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    public static int zzy(String str) {
        int i;
        try {
            i = zzmw.zzc(str);
        } catch (zzmv e) {
            i = str.getBytes(zzkl.zza).length;
        }
        return zzw(i) + i;
    }

    public static int zzz(zzkq zzkqVar) {
        int zza = zzkqVar.zza();
        return zzw(zza) + zza;
    }

    public final void zzC() {
        if (zzs() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzD(String str, zzmv zzmvVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzmvVar);
        byte[] bytes = str.getBytes(zzkl.zza);
        try {
            int length = bytes.length;
            zzl(length);
            zzq(bytes, 0, length);
        } catch (zzjj e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzjj(e2);
        }
    }

    public abstract void zza(int i, int i2) throws IOException;

    public abstract void zzb(int i, int i2) throws IOException;

    public abstract void zzc(int i, int i2) throws IOException;

    public abstract void zzd(int i, int i2) throws IOException;

    public abstract void zze(int i, long j) throws IOException;

    public abstract void zzf(int i, long j) throws IOException;

    public abstract void zzg(int i, boolean z) throws IOException;

    public abstract void zzh(int i, String str) throws IOException;

    public abstract void zzi(int i, zzjd zzjdVar) throws IOException;

    public abstract void zzj(byte b) throws IOException;

    public abstract void zzk(int i) throws IOException;

    public abstract void zzl(int i) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzn(long j) throws IOException;

    public abstract void zzo(long j) throws IOException;

    public abstract void zzq(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzs();
}
