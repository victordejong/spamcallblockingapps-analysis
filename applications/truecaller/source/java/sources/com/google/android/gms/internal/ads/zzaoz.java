package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoz.class */
public final class zzaoz {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final short[] zzf;
    private int zzg;
    private short[] zzh;
    private int zzi;
    private short[] zzj;
    private int zzk;
    private short[] zzl;
    private int zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzv;
    private int zzw;
    private int zzx;
    private int zzm = 0;
    private int zzn = 0;
    private int zzu = 0;
    private float zzo = 1.0f;
    private float zzp = 1.0f;

    public zzaoz(int i, int i2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i / 400;
        int i3 = i / 65;
        this.zzd = i3;
        int i4 = i3 + i3;
        this.zze = i4;
        this.zzf = new short[i4];
        this.zzg = i4;
        int i5 = i2 * i4;
        this.zzh = new short[i5];
        this.zzi = i4;
        this.zzj = new short[i5];
        this.zzk = i4;
        this.zzl = new short[i5];
    }

    private final void zzg(int i) {
        int i2 = this.zzr;
        int i3 = this.zzi;
        if (i2 + i > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.zzi = i4;
            this.zzj = Arrays.copyOf(this.zzj, i4 * this.zzb);
        }
    }

    private final void zzh(int i) {
        int i2 = this.zzq;
        int i3 = this.zzg;
        if (i2 + i > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.zzg = i4;
            this.zzh = Arrays.copyOf(this.zzh, i4 * this.zzb);
        }
    }

    private final void zzi(short[] sArr, int i, int i2) {
        zzg(i2);
        int i3 = this.zzb;
        System.arraycopy(sArr, i * i3, this.zzj, this.zzr * i3, i3 * i2);
        this.zzr += i2;
    }

    private final void zzj(short[] sArr, int i, int i2) {
        int i3 = this.zze / i2;
        int i4 = this.zzb;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            short s = 0;
            for (int i7 = 0; i7 < i5; i7++) {
                s += sArr[(i6 * i5) + (i * i4) + i7];
            }
            this.zzf[i6] = (short) (s / i5);
        }
    }

    private final int zzk(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.zzb;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s3 = sArr[i4 + i10];
                short s4 = sArr[i4 + i2 + i10];
                if (s3 >= s4) {
                    s2 = s3;
                    s = s4;
                } else {
                    s2 = s4;
                    s = s3;
                }
                i9 += s2 - s;
            }
            int i11 = i9 * i7;
            int i12 = i5 * i2;
            if (i11 < i12) {
                i5 = i9;
            }
            if (i11 < i12) {
                i7 = i2;
            }
            int i13 = i9 * i6;
            int i14 = i8 * i2;
            if (i13 > i14) {
                i8 = i9;
            }
            if (i13 > i14) {
                i6 = i2;
            }
            i2++;
        }
        this.zzw = i5 / i7;
        this.zzx = i8 / i6;
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x01a6, code lost:
        if ((r0 + r0) <= (r10.zzv * 3)) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl() {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoz.zzl():void");
    }

    private static void zzm(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    public final void zza(float f) {
        this.zzo = f;
    }

    public final void zzb(float f) {
        this.zzp = f;
    }

    public final void zzc(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.zzb;
        int i2 = remaining / i;
        int i3 = i * i2;
        zzh(i2);
        shortBuffer.get(this.zzh, this.zzq * this.zzb, (i3 + i3) / 2);
        this.zzq += i2;
        zzl();
    }

    public final void zzd(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.zzb, this.zzr);
        shortBuffer.put(this.zzj, 0, this.zzb * min);
        int i = this.zzr - min;
        this.zzr = i;
        short[] sArr = this.zzj;
        int i2 = this.zzb;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    public final void zze() {
        int i;
        int i2 = this.zzq;
        float f = this.zzo;
        float f2 = this.zzp;
        int i3 = this.zzr + ((int) ((((i2 / (f / f2)) + this.zzs) / f2) + 0.5f));
        int i4 = this.zze;
        zzh(i4 + i4 + i2);
        int i5 = 0;
        while (true) {
            int i6 = this.zze;
            i = i6 + i6;
            int i7 = this.zzb;
            if (i5 >= i * i7) {
                break;
            }
            this.zzh[(i7 * i2) + i5] = (short) 0;
            i5++;
        }
        this.zzq += i;
        zzl();
        if (this.zzr > i3) {
            this.zzr = i3;
        }
        this.zzq = 0;
        this.zzt = 0;
        this.zzs = 0;
    }

    public final int zzf() {
        return this.zzr;
    }
}
