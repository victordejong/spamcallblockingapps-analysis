package com.google.android.libraries.places.internal;

import java.math.RoundingMode;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzhd.class */
public final class zzhd {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;

    public zzhd(String str, char[] cArr) {
        this.zze = (String) zzft.zza(str);
        this.zzf = (char[]) zzft.zza(cArr);
        try {
            int zza = zzpu.zza(cArr.length, RoundingMode.UNNECESSARY);
            this.zzb = zza;
            int min = Math.min(8, Integer.lowestOneBit(zza));
            try {
                this.zzc = 8 / min;
                this.zzd = zza / min;
                this.zza = cArr.length - 1;
                byte[] bArr = new byte[128];
                Arrays.fill(bArr, (byte) -1);
                for (int i = 0; i < cArr.length; i++) {
                    char c = cArr[i];
                    zzft.zza(c < 128, "Non-ASCII character: %s", c);
                    zzft.zza(bArr[c] == -1, "Duplicate character: %s", c);
                    bArr[c] = (byte) i;
                }
                this.zzg = bArr;
                boolean[] zArr = new boolean[this.zzc];
                for (int i2 = 0; i2 < this.zzd; i2++) {
                    zArr[zzpu.zza(i2 << 3, this.zzb, RoundingMode.CEILING)] = true;
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
        if (obj instanceof zzhd) {
            return Arrays.equals(this.zzf, ((zzhd) obj).zzf);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf);
    }

    public final String toString() {
        return this.zze;
    }

    public final char zza(int i) {
        return this.zzf[i];
    }

    public final boolean zza(char c) {
        byte[] bArr = this.zzg;
        return c < bArr.length && bArr[c] != -1;
    }
}
