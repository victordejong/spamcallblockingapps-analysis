package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzon.class */
public final class zzon {
    public int zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public int zzg;

    public final boolean zza(int i) {
        boolean zzl;
        int i2;
        int i3;
        int i4;
        int i5;
        String[] strArr;
        int[] iArr;
        int zzm;
        int[] iArr2;
        int i6;
        int[] iArr3;
        int[] iArr4;
        int i7;
        int[] iArr5;
        int[] iArr6;
        zzl = zzoo.zzl(i);
        if (!zzl || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        this.zza = i2;
        strArr = zzoo.zza;
        this.zzb = strArr[3 - i3];
        iArr = zzoo.zzb;
        int i8 = iArr[i5];
        this.zzd = i8;
        if (i2 == 2) {
            this.zzd = i8 / 2;
        } else if (i2 == 0) {
            this.zzd = i8 / 4;
        }
        int i9 = (i >>> 9) & 1;
        zzm = zzoo.zzm(i2, i3);
        this.zzg = zzm;
        if (i3 == 3) {
            if (i2 == 3) {
                iArr6 = zzoo.zzc;
                i7 = iArr6[i4 - 1];
            } else {
                iArr5 = zzoo.zzd;
                i7 = iArr5[i4 - 1];
            }
            this.zzf = i7;
            this.zzc = (((i7 * 12) / this.zzd) + i9) * 4;
        } else {
            int i10 = 144;
            if (i2 == 3) {
                if (i3 == 2) {
                    iArr4 = zzoo.zze;
                    i6 = iArr4[i4 - 1];
                } else {
                    iArr3 = zzoo.zzf;
                    i6 = iArr3[i4 - 1];
                }
                this.zzf = i6;
                this.zzc = ((i6 * 144) / this.zzd) + i9;
            } else {
                iArr2 = zzoo.zzg;
                int i11 = iArr2[i4 - 1];
                this.zzf = i11;
                if (i3 == 1) {
                    i10 = 72;
                }
                this.zzc = ((i10 * i11) / this.zzd) + i9;
            }
        }
        int i12 = 2;
        if (((i >> 6) & 3) == 3) {
            i12 = 1;
        }
        this.zze = i12;
        return true;
    }
}
