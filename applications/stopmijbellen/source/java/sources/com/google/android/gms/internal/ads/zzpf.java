package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpf.class */
public final class zzpf implements zzrn {
    public final zzrn zza;
    public final /* synthetic */ zzpg zzb;
    private boolean zzc;

    public zzpf(zzpg zzpgVar, zzrn zzrnVar) {
        this.zzb = zzpgVar;
        this.zza = zzrnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zza(zzhr zzhrVar, zzda zzdaVar, int i) {
        if (this.zzb.zzp()) {
            return -3;
        }
        if (this.zzc) {
            zzdaVar.zzc(4);
            return -4;
        }
        int zza = this.zza.zza(zzhrVar, zzdaVar, i);
        if (zza != -5) {
            zzpg zzpgVar = this.zzb;
            long j = zzpgVar.zzb;
            if (j == Long.MIN_VALUE || ((zza != -4 || zzdaVar.zzd < j) && !(zza == -3 && zzpgVar.zzb() == Long.MIN_VALUE && !zzdaVar.zzc))) {
                return zza;
            }
            zzdaVar.zzb();
            zzdaVar.zzc(4);
            this.zzc = true;
            return -4;
        }
        zzab zzabVar = zzhrVar.zza;
        Objects.requireNonNull(zzabVar);
        int i2 = zzabVar.zzC;
        int i3 = 0;
        int i4 = i2;
        if (i2 == 0) {
            if (zzabVar.zzD == 0) {
                return -5;
            }
            i4 = 0;
        }
        if (this.zzb.zzb == Long.MIN_VALUE) {
            i3 = zzabVar.zzD;
        }
        zzz zzb = zzabVar.zzb();
        zzb.zzC(i4);
        zzb.zzD(i3);
        zzhrVar.zza = zzb.zzY();
        return -5;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final int zzb(long j) {
        if (this.zzb.zzp()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzrn
    public final boolean zze() {
        return !this.zzb.zzp() && this.zza.zze();
    }
}
