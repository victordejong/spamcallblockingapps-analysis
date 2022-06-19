package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeo.class */
final class zzaeo {
    private final zzadr zza;
    private final zzfk zzb;
    private final zzfc zzc = new zzfc(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzaeo(zzadr zzadrVar, zzfk zzfkVar) {
        this.zza = zzadrVar;
        this.zzb = zzfkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v17 */
    public final void zza(zzfd zzfdVar) throws zzbj {
        ?? r19;
        zzfdVar.zzB(this.zzc.zza, 0, 3);
        this.zzc.zzh(0);
        this.zzc.zzj(8);
        this.zzd = this.zzc.zzl();
        this.zze = this.zzc.zzl();
        this.zzc.zzj(6);
        zzfdVar.zzB(this.zzc.zza, 0, this.zzc.zzc(8));
        this.zzc.zzh(0);
        if (this.zzd) {
            this.zzc.zzj(4);
            int zzc = this.zzc.zzc(3);
            this.zzc.zzj(1);
            int zzc2 = this.zzc.zzc(15);
            this.zzc.zzj(1);
            long j = zzc;
            long j2 = zzc2 << 15;
            long zzc3 = this.zzc.zzc(15);
            this.zzc.zzj(1);
            if (!this.zzf && this.zze) {
                this.zzc.zzj(4);
                int zzc4 = this.zzc.zzc(3);
                this.zzc.zzj(1);
                int zzc5 = this.zzc.zzc(15);
                this.zzc.zzj(1);
                int zzc6 = this.zzc.zzc(15);
                this.zzc.zzj(1);
                this.zzb.zzb((zzc5 << 15) | (zzc4 << 30) | zzc6);
                this.zzf = true;
            }
            r19 = this.zzb.zzb((j << 30) | j2 | zzc3);
        } else {
            r19 = false;
        }
        this.zza.zzd(r19 == true ? 1L : 0L, 4);
        this.zza.zza(zzfdVar);
        this.zza.zzc();
    }

    public final void zzb() {
        this.zzf = false;
        this.zza.zze();
    }
}
