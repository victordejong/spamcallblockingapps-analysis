package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfh.class */
public abstract class zzgfh extends zzgem {
    private static final Logger zzb = Logger.getLogger(zzgfh.class.getName());
    private static final boolean zzc = zzgiy.zza();
    public zzgfi zza;

    private zzgfh() {
    }

    public /* synthetic */ zzgfh(zzgff zzgffVar) {
    }

    public static int zzA(zzggq zzggqVar) {
        int zza = zzggqVar.zza();
        return zzx(zza) + zza;
    }

    public static int zzB(zzgex zzgexVar) {
        int zzc2 = zzgexVar.zzc();
        return zzx(zzc2) + zzc2;
    }

    public static int zzC(zzghi zzghiVar, zzghz zzghzVar) {
        zzgeg zzgegVar = (zzgeg) zzghiVar;
        int zzap = zzgegVar.zzap();
        int i = zzap;
        if (zzap == -1) {
            i = zzghzVar.zze(zzgegVar);
            zzgegVar.zzaq(i);
        }
        return zzx(i) + i;
    }

    @Deprecated
    public static int zzF(int i, zzghi zzghiVar, zzghz zzghzVar) {
        int zzx = zzx(i << 3);
        zzgeg zzgegVar = (zzgeg) zzghiVar;
        int zzap = zzgegVar.zzap();
        int i2 = zzap;
        if (zzap == -1) {
            i2 = zzghzVar.zze(zzgegVar);
            zzgegVar.zzaq(i2);
        }
        return zzx + zzx + i2;
    }

    public static zzgfh zzu(byte[] bArr) {
        return new zzgfe(bArr, 0, bArr.length);
    }

    public static int zzv(int i) {
        return zzx(i << 3);
    }

    public static int zzw(int i) {
        if (i >= 0) {
            return zzx(i);
        }
        return 10;
    }

    public static int zzx(int i) {
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
    public static int zzy(long j) {
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

    public static int zzz(String str) {
        int i;
        try {
            i = zzgjd.zzg(str);
        } catch (zzgjc e) {
            i = str.getBytes(zzggk.zza).length;
        }
        return zzx(i) + i;
    }

    public final void zzD() {
        if (zzs() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzE(String str, zzgjc zzgjcVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzgjcVar);
        byte[] bytes = str.getBytes(zzggk.zza);
        try {
            int length = bytes.length;
            zzl(length);
            zzq(bytes, 0, length);
        } catch (zzgfg e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgfg(e2);
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

    public abstract void zzi(int i, zzgex zzgexVar) throws IOException;

    public abstract void zzj(byte b) throws IOException;

    public abstract void zzk(int i) throws IOException;

    public abstract void zzl(int i) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzn(long j) throws IOException;

    public abstract void zzo(long j) throws IOException;

    public abstract void zzq(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzs();
}
