package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacv.class */
final class zzacv {
    private final zzacw zza = new zzacw();
    private final zzfd zzb = new zzfd(new byte[65025], 0);
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
            zzacw zzacwVar = this.zza;
            i2 = i4;
            if (i6 >= zzacwVar.zzc) {
                break;
            }
            int[] iArr = zzacwVar.zzf;
            this.zzd = i5 + 1;
            i3 = iArr[i6];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    public final zzfd zza() {
        return this.zzb;
    }

    public final zzacw zzb() {
        return this.zza;
    }

    public final void zzc() {
        this.zza.zza();
        this.zzb.zzC(0);
        this.zzc = -1;
        this.zze = false;
    }

    public final void zzd() {
        if (this.zzb.zzH().length == 65025) {
            return;
        }
        zzfd zzfdVar = this.zzb;
        zzfdVar.zzD(Arrays.copyOf(zzfdVar.zzH(), Math.max(65025, this.zzb.zzd())), this.zzb.zzd());
    }

    public final boolean zze(zzwq zzwqVar) throws IOException {
        if (this.zze) {
            this.zze = false;
            this.zzb.zzC(0);
        }
        while (true) {
            boolean z = true;
            if (!this.zze) {
                int i = this.zzc;
                int i2 = i;
                if (i < 0) {
                    if (!this.zza.zzc(zzwqVar, -1L) || !this.zza.zzb(zzwqVar, true)) {
                        return false;
                    }
                    zzacw zzacwVar = this.zza;
                    int i3 = zzacwVar.zzd;
                    if ((zzacwVar.zza & 1) == 1 && this.zzb.zzd() == 0) {
                        i3 += zzf(0);
                        i2 = this.zzd;
                    } else {
                        i2 = 0;
                    }
                    if (!zzwt.zze(zzwqVar, i3)) {
                        return false;
                    }
                    this.zzc = i2;
                }
                int zzf = zzf(i2);
                int i4 = this.zzc + this.zzd;
                if (zzf > 0) {
                    zzfd zzfdVar = this.zzb;
                    zzfdVar.zzz(zzfdVar.zzd() + zzf);
                    if (!zzwt.zzd(zzwqVar, this.zzb.zzH(), this.zzb.zzd(), zzf)) {
                        return false;
                    }
                    zzfd zzfdVar2 = this.zzb;
                    zzfdVar2.zzE(zzfdVar2.zzd() + zzf);
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
}
