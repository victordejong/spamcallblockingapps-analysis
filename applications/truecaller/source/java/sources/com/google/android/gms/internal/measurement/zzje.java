package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzje.class */
public abstract class zzje extends zzin {
    private static final Logger zzb = Logger.getLogger(zzje.class.getName());
    private static final boolean zzc = zzml.zzx();
    public zzjf zza;

    private zzje() {
    }

    public /* synthetic */ zzje(zzjb zzjbVar) {
    }

    public static int zzA(int i) {
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
    public static int zzB(long j) {
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

    public static zzje zzC(byte[] bArr) {
        return new zzjc(bArr, 0, bArr.length);
    }

    public static int zzt(zzix zzixVar) {
        int zzd = zzixVar.zzd();
        return zzA(zzd) + zzd;
    }

    @Deprecated
    public static int zzu(int i, zzlc zzlcVar, zzln zzlnVar) {
        int zzA = zzA(i << 3);
        zzih zzihVar = (zzih) zzlcVar;
        int zzbm = zzihVar.zzbm();
        int i2 = zzbm;
        if (zzbm == -1) {
            i2 = zzlnVar.zza(zzihVar);
            zzihVar.zzbp(i2);
        }
        return zzA + zzA + i2;
    }

    public static int zzv(int i) {
        if (i >= 0) {
            return zzA(i);
        }
        return 10;
    }

    public static int zzw(zzkk zzkkVar) {
        int zza = zzkkVar.zza();
        return zzA(zza) + zza;
    }

    public static int zzx(zzlc zzlcVar, zzln zzlnVar) {
        zzih zzihVar = (zzih) zzlcVar;
        int zzbm = zzihVar.zzbm();
        int i = zzbm;
        if (zzbm == -1) {
            i = zzlnVar.zza(zzihVar);
            zzihVar.zzbp(i);
        }
        return zzA(i) + i;
    }

    public static int zzy(String str) {
        int i;
        try {
            i = zzmq.zzc(str);
        } catch (zzmp e) {
            i = str.getBytes(zzkf.zzb).length;
        }
        return zzA(i) + i;
    }

    public static int zzz(int i) {
        return zzA(i << 3);
    }

    public final void zzD() {
        if (zza() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzE(String str, zzmp zzmpVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzmpVar);
        byte[] bytes = str.getBytes(zzkf.zzb);
        try {
            int length = bytes.length;
            zzq(length);
            zzl(bytes, 0, length);
        } catch (zzjd e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzjd(e2);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b) throws IOException;

    public abstract void zzd(int i, boolean z) throws IOException;

    public abstract void zze(int i, zzix zzixVar) throws IOException;

    public abstract void zzf(int i, int i2) throws IOException;

    public abstract void zzg(int i) throws IOException;

    public abstract void zzh(int i, long j) throws IOException;

    public abstract void zzi(long j) throws IOException;

    public abstract void zzj(int i, int i2) throws IOException;

    public abstract void zzk(int i) throws IOException;

    public abstract void zzl(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzm(int i, String str) throws IOException;

    public abstract void zzo(int i, int i2) throws IOException;

    public abstract void zzp(int i, int i2) throws IOException;

    public abstract void zzq(int i) throws IOException;

    public abstract void zzr(int i, long j) throws IOException;

    public abstract void zzs(long j) throws IOException;
}
