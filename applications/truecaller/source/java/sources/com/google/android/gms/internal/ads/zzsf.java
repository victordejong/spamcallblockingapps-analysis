package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsf.class */
public final class zzsf {
    private final zzsg zza = new zzsg();
    private final zzamf zzb = new zzamf(new byte[65025], 0);
    private int zzc = -1;
    private int zzd;
    private boolean zze;

    private final int zzf(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.zzd = 0;
        do {
            int i5 = this.zzd;
            int i6 = i + i5;
            zzsg zzsgVar = this.zza;
            i2 = i4;
            if (i6 >= zzsgVar.zzc) {
                break;
            }
            int[] iArr = zzsgVar.zzf;
            this.zzd = i5 + 1;
            i3 = iArr[i6];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    public final void zza() {
        this.zza.zza();
        this.zzb.zza(0);
        this.zzc = -1;
        this.zze = false;
    }

    public final boolean zzb(zznv zznvVar) throws IOException {
        if (this.zze) {
            this.zze = false;
            this.zzb.zza(0);
        }
        while (true) {
            boolean z = true;
            if (!this.zze) {
                int i = this.zzc;
                int i2 = i;
                if (i < 0) {
                    if (!this.zza.zzb(zznvVar, -1L) || !this.zza.zzc(zznvVar, true)) {
                        return false;
                    }
                    zzsg zzsgVar = this.zza;
                    int i3 = zzsgVar.zzd;
                    if ((zzsgVar.zza & 1) == 1 && this.zzb.zze() == 0) {
                        i3 += zzf(0);
                        i2 = this.zzd;
                    } else {
                        i2 = 0;
                    }
                    if (!zzny.zzd(zznvVar, i3)) {
                        return false;
                    }
                    this.zzc = i2;
                }
                int zzf = zzf(i2);
                int i4 = this.zzc + this.zzd;
                if (zzf > 0) {
                    zzamf zzamfVar = this.zzb;
                    zzamfVar.zzc(zzamfVar.zze() + zzf);
                    if (!zzny.zzc(zznvVar, this.zzb.zzi(), this.zzb.zze(), zzf)) {
                        return false;
                    }
                    zzamf zzamfVar2 = this.zzb;
                    zzamfVar2.zzf(zzamfVar2.zze() + zzf);
                    if (this.zza.zzf[i4 - 1] == 255) {
                        z = false;
                    }
                    this.zze = z;
                }
                int i5 = i4;
                if (i4 == this.zza.zzc) {
                    i5 = -1;
                }
                this.zzc = i5;
            } else {
                return true;
            }
        }
    }

    public final zzsg zzc() {
        return this.zza;
    }

    public final zzamf zzd() {
        return this.zzb;
    }

    public final void zze() {
        if (this.zzb.zzi().length == 65025) {
            return;
        }
        zzamf zzamfVar = this.zzb;
        zzamfVar.zzb(Arrays.copyOf(zzamfVar.zzi(), Math.max(65025, this.zzb.zze())), this.zzb.zze());
    }
}
