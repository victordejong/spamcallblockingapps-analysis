package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjb.class */
public final class zzdjb extends zzfmb implements zzder, zzbes, zzaop, zzdhc, zzdfl, zzdgq, zzo, zzdfh, zzdmd {
    private final zzdiz zza = new zzdiz(this, null);
    @Nullable
    private zzeox zzb;
    @Nullable
    private zzepb zzc;
    @Nullable
    private zzezj zzd;
    @Nullable
    private zzfcq zze;

    public static /* bridge */ /* synthetic */ void zzn(zzdjb zzdjbVar, zzeox zzeoxVar) {
        zzdjbVar.zzb = zzeoxVar;
    }

    public static /* bridge */ /* synthetic */ void zzs(zzdjb zzdjbVar, zzezj zzezjVar) {
        zzdjbVar.zzd = zzezjVar;
    }

    public static /* bridge */ /* synthetic */ void zzt(zzdjb zzdjbVar, zzepb zzepbVar) {
        zzdjbVar.zzc = zzepbVar;
    }

    public static /* bridge */ /* synthetic */ void zzu(zzdjb zzdjbVar, zzfcq zzfcqVar) {
        zzdjbVar.zze = zzfcqVar;
    }

    private static <T> void zzw(T t, zzdja<T> zzdjaVar) {
        if (t != null) {
            zzdjaVar.zza(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        zzw(this.zzb, zzdix.zza);
        zzw(this.zzc, zzdhz.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        zzw(this.zzd, zzdie.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaop
    public final void zzbC(final String str, final String str2) {
        zzw(this.zzb, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdiw
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzeox) obj).zzbC(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
        zzw(this.zzb, zzdhx.zza);
        zzw(this.zze, zzdip.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        zzw(this.zzd, zzdid.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        zzw(this.zzd, zzdih.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        zzw(this.zzd, zzdif.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzw(this.zzd, zzdii.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(final int i) {
        zzw(this.zzd, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdit
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzezj) obj).zzf(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdhc
    public final void zzg(final zzbfk zzbfkVar) {
        zzw(this.zzb, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdin
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzeox) obj).zzg(zzbfk.this);
            }
        });
        zzw(this.zze, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdis
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzfcq) obj).zzg(zzbfk.this);
            }
        });
        zzw(this.zzd, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdir
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzezj) obj).zzg(zzbfk.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void zzh() {
        zzw(this.zzd, zzdib.zza);
    }

    public final zzdiz zzi() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        zzw(this.zzb, zzdhs.zza);
        zzw(this.zze, zzdij.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(final zzbew zzbewVar) {
        zzw(this.zze, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdic
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzfcq) obj).zzk(zzbew.this);
            }
        });
        zzw(this.zzb, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdhr
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzeox) obj).zzk(zzbew.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        zzw(this.zzb, zzdht.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
        zzw(this.zzb, zzdhu.zza);
        zzw(this.zze, zzdik.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        zzw(this.zzb, zzdhv.zza);
        zzw(this.zze, zzdim.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(final zzceg zzcegVar, final String str, final String str2) {
        zzw(this.zzb, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdiu
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                zzeox zzeoxVar = (zzeox) obj;
            }
        });
        zzw(this.zze, new zzdja() { // from class: com.google.android.gms.internal.ads.zzdiv
            @Override // com.google.android.gms.internal.ads.zzdja
            public final void zza(Object obj) {
                ((zzfcq) obj).zzp(zzceg.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        zzw(this.zzb, zzdhw.zza);
        zzw(this.zzc, zzdia.zza);
        zzw(this.zze, zzdio.zza);
        zzw(this.zzd, zzdig.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
        zzw(this.zzb, zzdhy.zza);
        zzw(this.zze, zzdiq.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfmb
    public final void zzv() {
        zzw(this.zze, zzdil.zza);
    }
}
