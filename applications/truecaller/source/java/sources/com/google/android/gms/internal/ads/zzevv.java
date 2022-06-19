package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzevv.class */
public final class zzevv implements zzdbf, zzddb, zzexl, zzo, zzddn, zzdbs, zzdio {
    private final zzfby zza;
    private final AtomicReference<zzaxz> zzb = new AtomicReference<>();
    private final AtomicReference<zzaya> zzc = new AtomicReference<>();
    private final AtomicReference<zzayd> zzd = new AtomicReference<>();
    private final AtomicReference<zzddb> zze = new AtomicReference<>();
    private final AtomicReference<zzo> zzf = new AtomicReference<>();
    private final AtomicReference<zzbgw> zzg = new AtomicReference<>();
    private zzevv zzh = null;

    public zzevv(zzfby zzfbyVar) {
        this.zza = zzfbyVar;
    }

    public static zzevv zzg(zzevv zzevvVar) {
        zzevv zzevvVar2 = new zzevv(zzevvVar.zza);
        zzevvVar2.zzh = zzevvVar;
        return zzevvVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void zzR() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzR();
        } else {
            zzexc.zza(this.zze, zzevr.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzb();
        } else {
            zzexc.zza(this.zzd, zzevk.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzbD(zzbczVar);
            return;
        }
        zzexc.zza(this.zzb, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzevn
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzaxz) obj).zzd(this.zza);
            }
        });
        zzexc.zza(this.zzb, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzevo
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzaxz) obj).zzc(this.zza.zza);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzbp();
            return;
        }
        zzexc.zza(this.zzf, zzevs.zza);
        zzexc.zza(this.zzd, zzevt.zza);
        zzexc.zza(this.zzd, zzevu.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzbs(i);
        } else {
            zzexc.zza(this.zzf, new zzexb(i) { // from class: com.google.android.gms.internal.ads.zzevh
                private final int zza;

                {
                    this.zza = i;
                }

                @Override // com.google.android.gms.internal.ads.zzexb
                public final void zza(Object obj) {
                    ((zzo) obj).zzbs(this.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzd();
        } else {
            zzexc.zza(this.zzf, zzevi.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zze();
        } else {
            zzexc.zza(this.zzf, zzevj.zza);
        }
    }

    public final void zzh(zzaxz zzaxzVar) {
        this.zzb.set(zzaxzVar);
    }

    public final void zzi(zzayd zzaydVar) {
        this.zzd.set(zzaydVar);
    }

    public final void zzj(zzddb zzddbVar) {
        this.zze.set(zzddbVar);
    }

    public final void zzk(zzo zzoVar) {
        this.zzf.set(zzoVar);
    }

    public final void zzl(zzbgw zzbgwVar) {
        this.zzg.set(zzbgwVar);
    }

    public final void zzm(zzaxw zzaxwVar) {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzm(zzaxwVar);
        } else {
            zzexc.zza(this.zzb, new zzexb(zzaxwVar) { // from class: com.google.android.gms.internal.ads.zzevm
                private final zzaxw zza;

                {
                    this.zza = zzaxwVar;
                }

                @Override // com.google.android.gms.internal.ads.zzexb
                public final void zza(Object obj) {
                    ((zzaxz) obj).zzb(this.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzn(zzbczVar);
        } else {
            zzexc.zza(this.zzd, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzevl
                private final zzbcz zza;

                {
                    this.zza = zzbczVar;
                }

                @Override // com.google.android.gms.internal.ads.zzexb
                public final void zza(Object obj) {
                    ((zzayd) obj).zze(this.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final void zzo(zzbdn zzbdnVar) {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzo(zzbdnVar);
        } else {
            zzexc.zza(this.zzg, new zzexb(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzevg
                private final zzbdn zza;

                {
                    this.zza = zzbdnVar;
                }

                @Override // com.google.android.gms.internal.ads.zzexb
                public final void zza(Object obj) {
                    ((zzbgw) obj).zze(this.zza);
                }
            });
        }
    }

    public final void zzp() {
        zzevv zzevvVar = this.zzh;
        if (zzevvVar != null) {
            zzevvVar.zzp();
            return;
        }
        this.zza.zzb();
        zzexc.zza(this.zzc, zzevp.zza);
        zzexc.zza(this.zzd, zzevq.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzexl
    public final void zzq(zzexl zzexlVar) {
        this.zzh = (zzevv) zzexlVar;
    }

    public final void zzr(zzaya zzayaVar) {
        this.zzc.set(zzayaVar);
    }
}
