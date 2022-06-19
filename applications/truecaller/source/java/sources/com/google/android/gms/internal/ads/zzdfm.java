package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfm.class */
public final class zzdfm extends zzfid implements zzdbc, zzbcv, zzamv, zzddn, zzdbw, zzddb, zzo, zzdbs, zzdio {
    private final zzdfj zza = new zzdfj(this, null);
    private zzeli zzb;
    private zzelm zzc;
    private zzevv zzd;
    private zzezc zze;

    public static /* synthetic */ zzeli zzp(zzdfm zzdfmVar, zzeli zzeliVar) {
        zzdfmVar.zzb = zzeliVar;
        return zzeliVar;
    }

    public static /* synthetic */ zzelm zzq(zzdfm zzdfmVar, zzelm zzelmVar) {
        zzdfmVar.zzc = zzelmVar;
        return zzelmVar;
    }

    public static /* synthetic */ zzevv zzr(zzdfm zzdfmVar, zzevv zzevvVar) {
        zzdfmVar.zzd = zzevvVar;
        return zzevvVar;
    }

    public static /* synthetic */ zzezc zzs(zzdfm zzdfmVar, zzezc zzezcVar) {
        zzdfmVar.zze = zzezcVar;
        return zzezcVar;
    }

    private static <T> void zzv(T t, zzdfk<T> zzdfkVar) {
        if (t != null) {
            zzdfkVar.zza(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        zzv(this.zzb, zzdef.zza);
        zzv(this.zzc, zzdeg.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void zzR() {
        zzv(this.zzd, zzder.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzv(this.zzb, zzdeh.zza);
        zzv(this.zzc, zzdei.zza);
        zzv(this.zze, zzdej.zza);
        zzv(this.zzd, zzdek.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzbC(String str, String str2) {
        zzv(this.zzb, new zzdfk(str, str2) { // from class: com.google.android.gms.internal.ads.zzdel
            private final String zza;
            private final String zzb;

            {
                this.zza = str;
                this.zzb = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzeli) obj).zzbC(this.zza, this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        zzv(this.zzd, zzdev.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
        zzv(this.zzd, zzdfa.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
        zzv(this.zzd, zzdfb.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        zzv(this.zzd, new zzdfk(i) { // from class: com.google.android.gms.internal.ads.zzdew
            private final int zza;

            {
                this.zza = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzevv) obj).zzbs(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        zzv(this.zzd, zzdex.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        zzv(this.zzd, zzdez.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        zzv(this.zzb, zzdeq.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        zzv(this.zzb, zzdec.zza);
        zzv(this.zze, zzden.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        zzv(this.zzb, zzdey.zza);
        zzv(this.zze, zzdfc.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
        zzv(this.zzb, zzdfd.zza);
        zzv(this.zze, zzdfe.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
        zzv(this.zzb, new zzdfk(zzcbzVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdfh
            private final zzcbz zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = zzcbzVar;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                zzeli zzeliVar = (zzeli) obj;
            }
        });
        zzv(this.zze, new zzdfk(zzcbzVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdfi
            private final zzcbz zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = zzcbzVar;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzezc) obj).zzk(this.zza, this.zzb, this.zzc);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
        zzv(this.zzb, zzdff.zza);
        zzv(this.zze, zzdfg.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
        zzv(this.zzb, zzded.zza);
        zzv(this.zze, zzdee.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        zzv(this.zze, new zzdfk(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzdet
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzezc) obj).zzn(this.zza);
            }
        });
        zzv(this.zzb, new zzdfk(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzdeu
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzeli) obj).zzn(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final void zzo(zzbdn zzbdnVar) {
        zzv(this.zzb, new zzdfk(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzdem
            private final zzbdn zza;

            {
                this.zza = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzeli) obj).zzo(this.zza);
            }
        });
        zzv(this.zze, new zzdfk(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzdeo
            private final zzbdn zza;

            {
                this.zza = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzezc) obj).zzo(this.zza);
            }
        });
        zzv(this.zzd, new zzdfk(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzdep
            private final zzbdn zza;

            {
                this.zza = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza(Object obj) {
                ((zzevv) obj).zzo(this.zza);
            }
        });
    }

    public final zzdfj zzt() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfid
    public final void zzu() {
        zzv(this.zze, zzdes.zza);
    }
}
