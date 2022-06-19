package com.google.android.gms.internal.mlkit_translate;

import java.math.RoundingMode;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzao.class */
public final class zzao {
    public final int zza;
    public final int zzb;
    public final int zzc;
    private final String zzd;
    private final char[] zze;
    private final int zzf;
    private final byte[] zzg;
    private final boolean[] zzh;

    public zzao(String str, char[] cArr) {
        this.zzd = (String) zzi.zza(str);
        this.zze = (char[]) zzi.zza(cArr);
        try {
            int zza = zzay.zza(cArr.length, RoundingMode.UNNECESSARY);
            this.zza = zza;
            int min = Math.min(8, Integer.lowestOneBit(zza));
            try {
                this.zzb = 8 / min;
                this.zzc = zza / min;
                this.zzf = cArr.length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                for (int i = 0; i < cArr.length; i++) {
                    char c = cArr[i];
                    zzi.zza(c < 128, "Non-ASCII character: %s", c);
                    zzi.zza(bArr[c] == -1, "Duplicate character: %s", c);
                    bArr[c] = (byte) i;
                }
                this.zzg = bArr;
                boolean[] zArr = new boolean[this.zzb];
                for (int i2 = 0; i2 < this.zzc; i2++) {
                    zArr[zzay.zza(i2 << 3, this.zza, RoundingMode.CEILING)] = true;
                }
                this.zzh = zArr;
            } catch (ArithmeticException e) {
                String str2 = new String(cArr);
                throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
            }
        } catch (ArithmeticException e2) {
            throw new IllegalArgumentException(C22128a.m8690L1(35, "Illegal alphabet length ", cArr.length), e2);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzao) {
            return Arrays.equals(this.zze, ((zzao) obj).zze);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zze);
    }

    public final String toString() {
        return this.zzd;
    }

    public final char zza(int i) {
        return this.zze[i];
    }

    public final int zza(char c) throws zzap {
        if (c > 127) {
            String valueOf = String.valueOf(Integer.toHexString(c));
            throw new zzap(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
        }
        byte b = this.zzg[c];
        if (b != -1) {
            return b;
        }
        if (c <= ' ' || c == 127) {
            String valueOf2 = String.valueOf(Integer.toHexString(c));
            throw new zzap(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Unrecognized character: ");
        sb.append(c);
        throw new zzap(sb.toString());
    }

    public final boolean zzb(char c) {
        byte[] bArr = this.zzg;
        return c < bArr.length && bArr[c] != -1;
    }

    public final boolean zzb(int i) {
        return this.zzh[i % this.zzb];
    }
}
