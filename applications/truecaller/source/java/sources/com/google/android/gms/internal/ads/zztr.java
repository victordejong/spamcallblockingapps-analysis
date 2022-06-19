package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztr.class */
public final class zztr implements zzua {
    private zzafv zza;
    private zzamn zzb;
    private zzox zzc;

    public zztr(String str) {
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN(str);
        this.zza = zzaftVar.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zza(zzamn zzamnVar, zznx zznxVar, zzun zzunVar) {
        this.zzb = zzamnVar;
        zzunVar.zza();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 5);
        this.zzc = zzB;
        zzB.zzs(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzb(zzamf zzamfVar) {
        zzakt.zze(this.zzb);
        int i = zzamq.zza;
        long zzb = this.zzb.zzb();
        long zzc = this.zzb.zzc();
        if (zzb == -9223372036854775807L || zzc == -9223372036854775807L) {
            return;
        }
        zzafv zzafvVar = this.zza;
        if (zzc != zzafvVar.zzp) {
            zzaft zza = zzafvVar.zza();
            zza.zzR(zzc);
            zzafv zzah = zza.zzah();
            this.zza = zzah;
            this.zzc.zzs(zzah);
        }
        int zzd = zzamfVar.zzd();
        zzov.zzb(this.zzc, zzamfVar, zzd);
        this.zzc.zzv(zzb, 1, zzd, 0, null);
    }
}
