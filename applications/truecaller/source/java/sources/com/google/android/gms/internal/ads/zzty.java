package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzty.class */
public final class zzty {
    private final zztb zza;
    private final zzamn zzb;
    private final zzame zzc = new zzame(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzty(zztb zztbVar, zzamn zzamnVar) {
        this.zza = zztbVar;
        this.zzb = zzamnVar;
    }

    public final void zza() {
        this.zzf = false;
        this.zza.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v17 */
    public final void zzb(zzamf zzamfVar) throws zzaha {
        ?? r19;
        zzamfVar.zzm(this.zzc.zza, 0, 3);
        this.zzc.zzd(0);
        this.zzc.zzf(8);
        this.zzd = this.zzc.zzg();
        this.zze = this.zzc.zzg();
        this.zzc.zzf(6);
        zzamfVar.zzm(this.zzc.zza, 0, this.zzc.zzh(8));
        this.zzc.zzd(0);
        if (this.zzd) {
            this.zzc.zzf(4);
            int zzh = this.zzc.zzh(3);
            this.zzc.zzf(1);
            int zzh2 = this.zzc.zzh(15);
            this.zzc.zzf(1);
            long j = zzh;
            long j2 = zzh2 << 15;
            long zzh3 = this.zzc.zzh(15);
            this.zzc.zzf(1);
            if (!this.zzf && this.zze) {
                this.zzc.zzf(4);
                int zzh4 = this.zzc.zzh(3);
                this.zzc.zzf(1);
                int zzh5 = this.zzc.zzh(15);
                this.zzc.zzf(1);
                int zzh6 = this.zzc.zzh(15);
                this.zzc.zzf(1);
                this.zzb.zze((zzh5 << 15) | (zzh4 << 30) | zzh6);
                this.zzf = true;
            }
            r19 = this.zzb.zze((j << 30) | j2 | zzh3);
        } else {
            r19 = false;
        }
        this.zza.zzc(r19 == true ? 1L : 0L, 4);
        this.zza.zzd(zzamfVar);
        this.zza.zze();
    }
}
