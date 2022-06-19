package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgl.class */
public final class zzgl implements zziu {
    public final zziu zza;
    public final /* synthetic */ zzgm zzb;
    private boolean zzc;

    public zzgl(zzgm zzgmVar, zziu zziuVar) {
        this.zzb = zzgmVar;
        this.zza = zziuVar;
    }

    public final void zza() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final boolean zzb() {
        return !this.zzb.zzo() && this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final void zzc() throws IOException {
        this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zzd(zzafw zzafwVar, zzaf zzafVar, int i) {
        if (this.zzb.zzo()) {
            return -3;
        }
        if (this.zzc) {
            zzafVar.zzf(4);
            return -4;
        }
        int zzd = this.zza.zzd(zzafwVar, zzafVar, i);
        if (zzd != -5) {
            zzgm zzgmVar = this.zzb;
            long j = zzgmVar.zzb;
            if (j == Long.MIN_VALUE || ((zzd != -4 || zzafVar.zzd < j) && !(zzd == -3 && zzgmVar.zzh() == Long.MIN_VALUE && !zzafVar.zzc))) {
                return zzd;
            }
            zzafVar.zza();
            zzafVar.zzf(4);
            this.zzc = true;
            return -4;
        }
        zzafv zzafvVar = zzafwVar.zza;
        Objects.requireNonNull(zzafvVar);
        int i2 = zzafvVar.zzB;
        int i3 = 0;
        int i4 = i2;
        if (i2 == 0) {
            if (zzafvVar.zzC == 0) {
                return -5;
            }
            i4 = 0;
        }
        if (this.zzb.zzb == Long.MIN_VALUE) {
            i3 = zzafvVar.zzC;
        }
        zzaft zza = zzafvVar.zza();
        zza.zzad(i4);
        zza.zzae(i3);
        zzafwVar.zza = zza.zzah();
        return -5;
    }

    @Override // com.google.android.gms.internal.ads.zziu
    public final int zze(long j) {
        if (this.zzb.zzo()) {
            return -3;
        }
        return this.zza.zze(j);
    }
}
