package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgz.class */
public abstract class zzgz extends zzgh {
    private static final Logger zzb = Logger.getLogger(zzgz.class.getName());
    private static final boolean zzc = zzkh.zza();
    zzha zza;

    private zzgz() {
    }

    public /* synthetic */ zzgz(zzgw zzgwVar) {
    }

    public static int zzA(zzgs zzgsVar) {
        int zzc2 = zzgsVar.zzc();
        return zzw(zzc2) + zzc2;
    }

    public static int zzB(zzix zzixVar, zzji zzjiVar) {
        zzgb zzgbVar = (zzgb) zzixVar;
        int zzbq = zzgbVar.zzbq();
        int i = zzbq;
        if (zzbq == -1) {
            i = zzjiVar.zze(zzgbVar);
            zzgbVar.zzbr(i);
        }
        return zzw(i) + i;
    }

    @Deprecated
    public static int zzE(int i, zzix zzixVar, zzji zzjiVar) {
        int zzw = zzw(i << 3);
        zzgb zzgbVar = (zzgb) zzixVar;
        int zzbq = zzgbVar.zzbq();
        int i2 = zzbq;
        if (zzbq == -1) {
            i2 = zzjiVar.zze(zzgbVar);
            zzgbVar.zzbr(i2);
        }
        return zzw + zzw + i2;
    }

    public static zzgz zzt(byte[] bArr) {
        return new zzgx(bArr, 0, bArr.length);
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
        if ((i & ByteCompanionObject.MIN_VALUE) == 0) {
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
            i = zzkn.zzc(str);
        } catch (zzkl e) {
            i = str.getBytes(zzia.zza).length;
        }
        return zzw(i) + i;
    }

    public static int zzz(zzif zzifVar) {
        int zza = zzifVar.zza();
        return zzw(zza) + zza;
    }

    public final void zzC() {
        if (zzs() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void zzD(String str, zzkl zzklVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzklVar);
        byte[] bytes = str.getBytes(zzia.zza);
        try {
            int length = bytes.length;
            zzl(length);
            zzq(bytes, 0, length);
        } catch (zzgy e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgy(e2);
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

    public abstract void zzi(int i, zzgs zzgsVar) throws IOException;

    public abstract void zzj(byte b) throws IOException;

    public abstract void zzk(int i) throws IOException;

    public abstract void zzl(int i) throws IOException;

    public abstract void zzm(int i) throws IOException;

    public abstract void zzn(long j) throws IOException;

    public abstract void zzo(long j) throws IOException;

    public abstract void zzq(byte[] bArr, int i, int i2) throws IOException;

    public abstract int zzs();
}
