package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezc.class */
public final class zzezc extends zzfid implements zzdcq, zzdbf, zzdbc, zzdbs, zzddn, zzexl, zzdio {
    private final zzfby zza;
    private final AtomicReference<zzfid> zzb = new AtomicReference<>();
    private final AtomicReference<zzccz> zzc = new AtomicReference<>();
    private final AtomicReference<zzccv> zzd = new AtomicReference<>();
    private final AtomicReference<zzccf> zze = new AtomicReference<>();
    private final AtomicReference<zzcda> zzf = new AtomicReference<>();
    private final AtomicReference<zzcca> zzg = new AtomicReference<>();
    private final AtomicReference<zzbgw> zzh = new AtomicReference<>();

    public zzezc(zzfby zzfbyVar) {
        this.zza = zzfbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        zzexc.zza(this.zzd, zzeyt.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        int i = zzbczVar.zza;
        zzexc.zza(this.zzc, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzeyu
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccz) obj).zzg(this.zza);
            }
        });
        zzexc.zza(this.zzc, new zzexb(i) { // from class: com.google.android.gms.internal.ads.zzeyv
            private final int zza;

            {
                this.zza = i;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccz) obj).zzf(this.zza);
            }
        });
        zzexc.zza(this.zze, new zzexb(i) { // from class: com.google.android.gms.internal.ads.zzeyw
            private final int zza;

            {
                this.zza = i;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccf) obj).zzk(this.zza);
            }
        });
    }

    public final void zzc(zzccz zzcczVar) {
        this.zzc.set(zzcczVar);
    }

    public final void zzd(zzccv zzccvVar) {
        this.zzd.set(zzccvVar);
    }

    public final void zze(zzfid zzfidVar) {
        this.zzb.set(zzfidVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        zzexc.zza(this.zzc, zzeyg.zza);
        zzexc.zza(this.zze, zzeyr.zza);
    }

    public final void zzg(zzbgw zzbgwVar) {
        this.zzh.set(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        zzexc.zza(this.zzd, zzeyx.zza);
        zzexc.zza(this.zze, zzeyy.zza);
        zzexc.zza(this.zzd, zzeyz.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        this.zza.zzb();
        zzexc.zza(this.zzd, zzeza.zza);
        zzexc.zza(this.zze, zzezb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
        zzexc.zza(this.zze, zzeyh.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
        zzexc.zza(this.zzd, new zzexb(zzcbzVar) { // from class: com.google.android.gms.internal.ads.zzeyj
            private final zzcbz zza;

            {
                this.zza = zzcbzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                zzcbz zzcbzVar2 = this.zza;
                ((zzccv) obj).zzg(new zzcdj(zzcbzVar2.zzb(), zzcbzVar2.zzc()));
            }
        });
        zzexc.zza(this.zzf, new zzexb(zzcbzVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzeyk
            private final zzcbz zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = zzcbzVar;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                zzcbz zzcbzVar2 = this.zza;
                ((zzcda) obj).zze(new zzcdj(zzcbzVar2.zzb(), zzcbzVar2.zzc()), this.zzb, this.zzc);
            }
        });
        zzexc.zza(this.zze, new zzexb(zzcbzVar) { // from class: com.google.android.gms.internal.ads.zzeyl
            private final zzcbz zza;

            {
                this.zza = zzcbzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccf) obj).zzi(this.zza);
            }
        });
        zzexc.zza(this.zzg, new zzexb(zzcbzVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzeym
            private final zzcbz zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = zzcbzVar;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzcca) obj).zze(this.zza, this.zzb, this.zzc);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
        zzexc.zza(this.zze, zzeyi.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
        zzexc.zza(this.zze, zzeyn.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        zzexc.zza(this.zzd, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzeyo
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccv) obj).zzi(this.zza);
            }
        });
        zzexc.zza(this.zzd, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzeyp
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzccv) obj).zzh(this.zza.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final void zzo(zzbdn zzbdnVar) {
        zzexc.zza(this.zzh, new zzexb(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzeys
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

    @Deprecated
    public final void zzp(zzccf zzccfVar) {
        this.zze.set(zzccfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzexl
    public final void zzq(zzexl zzexlVar) {
        throw null;
    }

    public final void zzr(zzcda zzcdaVar) {
        this.zzf.set(zzcdaVar);
    }

    @Deprecated
    public final void zzs(zzcca zzccaVar) {
        this.zzg.set(zzccaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfid
    public final void zzu() {
        zzexc.zza(this.zzb, zzeyq.zza);
    }
}
