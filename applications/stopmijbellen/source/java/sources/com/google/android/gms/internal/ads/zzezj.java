package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezj.class */
public final class zzezj implements zzdeu, zzdgq, zzfaz, zzo, zzdhc, zzdfh, zzdmd {
    private final zzffj zza;
    private final AtomicReference<zzazw> zzb = new AtomicReference<>();
    private final AtomicReference<zzazx> zzc = new AtomicReference<>();
    private final AtomicReference<zzbaa> zzd = new AtomicReference<>();
    private final AtomicReference<zzdgq> zze = new AtomicReference<>();
    private final AtomicReference<zzo> zzf = new AtomicReference<>();
    private final AtomicReference<zzbit> zzg = new AtomicReference<>();
    private zzezj zzh = null;

    public zzezj(zzffj zzffjVar) {
        this.zza = zzffjVar;
    }

    public static zzezj zzi(zzezj zzezjVar) {
        zzezj zzezjVar2 = new zzezj(zzezjVar.zza);
        zzezjVar2.zzh = zzezjVar;
        return zzezjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(final zzbew zzbewVar) {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zza(zzbewVar);
            return;
        }
        zzfaq.zza(this.zzb, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeza
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzazw) obj).zzc(zzbew.this);
            }
        });
        zzfaq.zza(this.zzb, new zzfap() { // from class: com.google.android.gms.internal.ads.zzezb
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzazw) obj).zzb(zzbew.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzb();
            return;
        }
        zzfaq.zza(this.zzf, zzeyx.zza);
        zzfaq.zza(this.zzd, zzeyv.zza);
        zzfaq.zza(this.zzd, zzezi.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzbK();
        } else {
            zzfaq.zza(this.zzf, zzeyw.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
    }

    @Override // com.google.android.gms.internal.ads.zzfaz
    public final void zzbT(zzfaz zzfazVar) {
        this.zzh = (zzezj) zzfazVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zze();
        } else {
            zzfaq.zza(this.zzf, zzeyy.zza);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(final int i) {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzf(i);
        } else {
            zzfaq.zza(this.zzf, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeze
                @Override // com.google.android.gms.internal.ads.zzfap
                public final void zza(Object obj) {
                    ((zzo) obj).zzf(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdhc
    public final void zzg(final zzbfk zzbfkVar) {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzg(zzbfkVar);
        } else {
            zzfaq.zza(this.zzg, new zzfap() { // from class: com.google.android.gms.internal.ads.zzezd
                @Override // com.google.android.gms.internal.ads.zzfap
                public final void zza(Object obj) {
                    ((zzbit) obj).zze(zzbfk.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void zzh() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzh();
        } else {
            zzfaq.zza(this.zze, zzeyz.zza);
        }
    }

    public final void zzj() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzj();
            return;
        }
        this.zza.zza();
        zzfaq.zza(this.zzc, zzezf.zza);
        zzfaq.zza(this.zzd, zzezh.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(final zzbew zzbewVar) {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzk(zzbewVar);
        } else {
            zzfaq.zza(this.zzd, new zzfap() { // from class: com.google.android.gms.internal.ads.zzezc
                @Override // com.google.android.gms.internal.ads.zzfap
                public final void zza(Object obj) {
                    ((zzbaa) obj).zzd(zzbew.this);
                }
            });
        }
    }

    public final void zzl(final zzazt zzaztVar) {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzl(zzaztVar);
        } else {
            zzfaq.zza(this.zzb, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeyu
                @Override // com.google.android.gms.internal.ads.zzfap
                public final void zza(Object obj) {
                    ((zzazw) obj).zzd(zzazt.this);
                }
            });
        }
    }

    public final void zzn(zzdgq zzdgqVar) {
        this.zze.set(zzdgqVar);
    }

    public final void zzo(zzo zzoVar) {
        this.zzf.set(zzoVar);
    }

    public final void zzp(zzbit zzbitVar) {
        this.zzg.set(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzezj zzezjVar = this.zzh;
        if (zzezjVar != null) {
            zzezjVar.zzq();
        } else {
            zzfaq.zza(this.zzd, zzezg.zza);
        }
    }

    public final void zzr(zzazw zzazwVar) {
        this.zzb.set(zzazwVar);
    }

    public final void zzs(zzbaa zzbaaVar) {
        this.zzd.set(zzbaaVar);
    }

    public final void zzt(zzazx zzazxVar) {
        this.zzc.set(zzazxVar);
    }
}
