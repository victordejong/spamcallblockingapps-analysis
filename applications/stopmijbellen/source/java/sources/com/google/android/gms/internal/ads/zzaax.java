package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaax.class */
public final class zzaax {
    private final byte[] zza = new byte[10];
    private boolean zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private int zzf;
    private int zzg;

    @RequiresNonNull({"#1.output"})
    public final void zza(zzaaw zzaawVar) {
        if (this.zzc > 0) {
            zzaawVar.zzV.zzs(this.zzd, this.zze, this.zzf, this.zzg, zzaawVar.zzi);
            this.zzc = 0;
        }
    }

    public final void zzb() {
        this.zzb = false;
        this.zzc = 0;
    }

    @RequiresNonNull({"#1.output"})
    public final void zzc(zzaaw zzaawVar, long j, int i, int i2, int i3) {
        if (!this.zzb) {
            return;
        }
        int i4 = this.zzc;
        int i5 = i4 + 1;
        this.zzc = i5;
        if (i4 == 0) {
            this.zzd = j;
            this.zze = i;
            this.zzf = 0;
        }
        this.zzf += i2;
        this.zzg = i3;
        if (i5 < 16) {
            return;
        }
        zza(zzaawVar);
    }

    public final void zzd(zzwq zzwqVar) throws IOException {
        if (this.zzb) {
            return;
        }
        ((zzwk) zzwqVar).zzm(this.zza, 0, 10, false);
        zzwqVar.zzj();
        byte[] bArr = this.zza;
        int i = zzvv.zza;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return;
        }
        this.zzb = true;
    }
}
