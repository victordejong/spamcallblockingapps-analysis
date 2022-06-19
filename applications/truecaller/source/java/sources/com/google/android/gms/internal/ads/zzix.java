package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzix.class */
public final class zzix {
    private final Random zza;
    private final int[] zzb;
    private final int[] zzc;

    public zzix(int i) {
        this(0, new Random());
    }

    private zzix(int i, Random random) {
        this(new int[0], random);
    }

    private zzix(int[] iArr, Random random) {
        this.zzb = iArr;
        this.zza = random;
        this.zzc = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.zzc[iArr[i]] = i;
        }
    }

    public final int zza() {
        return this.zzb.length;
    }

    public final int zzb(int i) {
        int i2 = this.zzc[i] + 1;
        int[] iArr = this.zzb;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    public final int zzc(int i) {
        int i2 = this.zzc[i] - 1;
        if (i2 >= 0) {
            return this.zzb[i2];
        }
        return -1;
    }

    public final int zzd() {
        int[] iArr = this.zzb;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    public final int zze() {
        int[] iArr = this.zzb;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public final zzix zzf(int i, int i2) {
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= i2) {
                break;
            }
            iArr[i5] = this.zza.nextInt(this.zzb.length + 1);
            int i6 = i5 + 1;
            int nextInt = this.zza.nextInt(i6);
            iArr2[i5] = iArr2[nextInt];
            iArr2[nextInt] = i5;
            i4 = i6;
        }
        Arrays.sort(iArr);
        int[] iArr3 = new int[this.zzb.length + i2];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr4 = this.zzb;
            if (i3 < iArr4.length + i2) {
                if (i7 >= i2 || i8 != iArr[i7]) {
                    int i9 = iArr4[i8];
                    iArr3[i3] = i9;
                    if (i9 >= 0) {
                        iArr3[i3] = i9 + i2;
                    }
                    i8++;
                } else {
                    iArr3[i3] = iArr2[i7];
                    i7++;
                }
                i3++;
            } else {
                return new zzix(iArr3, new Random(this.zza.nextLong()));
            }
        }
    }

    public final zzix zzg(int i, int i2) {
        int[] iArr = new int[this.zzb.length - i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr2 = this.zzb;
            if (i3 < iArr2.length) {
                int i5 = iArr2[i3];
                if (i5 < 0 || i5 >= i2) {
                    int i6 = i5;
                    if (i5 >= 0) {
                        i6 = i5 - i2;
                    }
                    iArr[i3 - i4] = i6;
                } else {
                    i4++;
                }
                i3++;
            } else {
                return new zzix(iArr, new Random(this.zza.nextLong()));
            }
        }
    }

    public final zzix zzh() {
        return new zzix(0, new Random(this.zza.nextLong()));
    }
}
