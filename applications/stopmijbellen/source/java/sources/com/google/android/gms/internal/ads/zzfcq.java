package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfcq.class */
public final class zzfcq extends zzfmb implements zzdgf, zzdeu, zzder, zzdfh, zzdhc, zzfaz, zzdmd {
    private final zzffj zza;
    private final AtomicReference<zzfmb> zzb = new AtomicReference<>();
    private final AtomicReference<zzcfg> zzc = new AtomicReference<>();
    private final AtomicReference<zzcfc> zzd = new AtomicReference<>();
    private final AtomicReference<zzcem> zze = new AtomicReference<>();
    private final AtomicReference<zzcfh> zzf = new AtomicReference<>();
    private final AtomicReference<zzceh> zzg = new AtomicReference<>();
    private final AtomicReference<zzbit> zzh = new AtomicReference<>();

    public zzfcq(zzffj zzffjVar) {
        this.zza = zzffjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(final zzbew zzbewVar) {
        final int i = zzbewVar.zza;
        zzfaq.zza(this.zzc, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfck
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcfg) obj).zzf(zzbew.this);
            }
        });
        zzfaq.zza(this.zzc, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcf
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcfg) obj).zze(i);
            }
        });
        zzfaq.zza(this.zze, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfbu
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcem) obj).zzg(i);
            }
        });
    }

    public final void zzb(zzfmb zzfmbVar) {
        this.zzb.set(zzfmbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
        zzfaq.zza(this.zze, zzfbz.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfaz
    public final void zzbT(zzfaz zzfazVar) {
        throw null;
    }

    public final void zzc(zzbit zzbitVar) {
        this.zzh.set(zzbitVar);
    }

    public final void zzd(zzcfc zzcfcVar) {
        this.zzd.set(zzcfcVar);
    }

    public final void zze(zzcfg zzcfgVar) {
        this.zzc.set(zzcfgVar);
    }

    @Deprecated
    public final void zzf(zzcem zzcemVar) {
        this.zze.set(zzcemVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdhc
    public final void zzg(final zzbfk zzbfkVar) {
        zzfaq.zza(this.zzh, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcl
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbit) obj).zze(zzbfk.this);
            }
        });
    }

    @Deprecated
    public final void zzh(zzceh zzcehVar) {
        this.zzg.set(zzcehVar);
    }

    public final void zzi(zzcfh zzcfhVar) {
        this.zzf.set(zzcfhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        this.zza.zza();
        zzfaq.zza(this.zzd, zzfcd.zza);
        zzfaq.zza(this.zze, zzfbv.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(final zzbew zzbewVar) {
        zzfaq.zza(this.zzd, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfci
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcfc) obj).zzi(zzbew.this);
            }
        });
        zzfaq.zza(this.zzd, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcj
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcfc) obj).zzh(zzbew.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
        zzfaq.zza(this.zze, zzfbw.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        zzfaq.zza(this.zzc, zzfcg.zza);
        zzfaq.zza(this.zze, zzfbx.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        zzfaq.zza(this.zzd, zzfce.zza);
        zzfaq.zza(this.zze, zzfby.zza);
        zzfaq.zza(this.zzd, zzfcc.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(final zzceg zzcegVar, final String str, final String str2) {
        zzfaq.zza(this.zzd, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcn
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                zzceg zzcegVar2 = zzceg.this;
                ((zzcfc) obj).zzk(new zzcfq(zzcegVar2.zzc(), zzcegVar2.zzb()));
            }
        });
        zzfaq.zza(this.zzf, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcp
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                zzceg zzcegVar2 = zzceg.this;
                ((zzcfh) obj).zze(new zzcfq(zzcegVar2.zzc(), zzcegVar2.zzb()), str, str2);
            }
        });
        zzfaq.zza(this.zze, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfcm
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzcem) obj).zze(zzceg.this);
            }
        });
        zzfaq.zza(this.zzg, new zzfap() { // from class: com.google.android.gms.internal.ads.zzfco
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzceh) obj).zze(zzceg.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzfaq.zza(this.zzd, zzfcb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
        zzfaq.zza(this.zze, zzfca.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final void zzv() {
        zzfaq.zza(this.zzb, zzfch.zza);
    }
}
