package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdlh.class */
public final class zzdlh extends AdMetadataListener implements zzbrm, zzbrr, zzbsa, zzbtb, zzbtt, zzdkk {
    private final zzdov zzhfs;
    private final AtomicReference<AdMetadataListener> zzhia = new AtomicReference<>();
    private final AtomicReference<zzavu> zzhib = new AtomicReference<>();
    private final AtomicReference<zzavr> zzhic = new AtomicReference<>();
    private final AtomicReference<zzauu> zzhid = new AtomicReference<>();
    private final AtomicReference<zzavz> zzhie = new AtomicReference<>();
    private final AtomicReference<zzaup> zzhif = new AtomicReference<>();
    private final AtomicReference<zzyw> zzhig = new AtomicReference<>();
    private zzdlh zzhih = null;

    public zzdlh(zzdov zzdovVar) {
        this.zzhfs = zzdovVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdlhVar2.zzhfs.onAdClosed();
                zzdkd.zza(zzdlhVar2.zzhic, zzdlz.zzgya);
                zzdkd.zza(zzdlhVar2.zzhid, zzdly.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhid, zzdmb.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhib, zzdlg.zzgya);
                zzdkd.zza(zzdlhVar2.zzhid, zzdlj.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzdlh zzdlhVar = this.zzhih;
        if (zzdlhVar != null) {
            zzdlhVar.onAdMetadataChanged();
        } else {
            zzdkd.zza(this.zzhia, zzdlq.zzgya);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhic, zzdlx.zzgya);
                zzdkd.zza(zzdlhVar2.zzhid, zzdlw.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhid, zzdlp.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhid, zzdli.zzgya);
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    public final void zza(AdMetadataListener adMetadataListener) {
        this.zzhia.set(adMetadataListener);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzaukVar, String str, String str2) {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhic, new zzdkc(zzaukVar) { // from class: com.google.android.gms.internal.ads.zzdll
                    private final zzauk zzfzl;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzl = zzaukVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        zzauk zzaukVar2 = this.zzfzl;
                        ((zzavr) obj).zza(new zzawi(zzaukVar2.getType(), zzaukVar2.getAmount()));
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhie, new zzdkc(zzaukVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdlk
                    private final String zzdjf;
                    private final String zzdlo;
                    private final zzauk zzfzl;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzl = zzaukVar;
                        this.zzdjf = str;
                        this.zzdlo = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        zzauk zzaukVar2 = this.zzfzl;
                        ((zzavz) obj).zza(new zzawi(zzaukVar2.getType(), zzaukVar2.getAmount()), this.zzdjf, this.zzdlo);
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhid, new zzdkc(zzaukVar) { // from class: com.google.android.gms.internal.ads.zzdln
                    private final zzauk zzfzl;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzl = zzaukVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzauu) obj).zza(this.zzfzl);
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhif, new zzdkc(zzaukVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzdlm
                    private final String zzdjf;
                    private final String zzdlo;
                    private final zzauk zzfzl;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzl = zzaukVar;
                        this.zzdjf = str;
                        this.zzdlo = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzaup) obj).zza(this.zzfzl, this.zzdjf, this.zzdlo);
                    }
                });
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Deprecated
    public final void zzb(zzaup zzaupVar) {
        this.zzhif.set(zzaupVar);
    }

    @Deprecated
    public final void zzb(zzauu zzauuVar) {
        this.zzhid.set(zzauuVar);
    }

    public final void zzb(zzavr zzavrVar) {
        this.zzhic.set(zzavrVar);
    }

    public final void zzb(zzavu zzavuVar) {
        this.zzhib.set(zzavuVar);
    }

    public final void zzb(zzavz zzavzVar) {
        this.zzhie.set(zzavzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdkk
    public final void zzb(zzdkk zzdkkVar) {
        this.zzhih = (zzdlh) zzdkkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvuVar) {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhig, new zzdkc(zzvuVar) { // from class: com.google.android.gms.internal.ads.zzdlt
                    private final zzvu zzgaa;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzgaa = zzvuVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzyw) obj).zza(this.zzgaa);
                    }
                });
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                int i = zzvgVar.errorCode;
                zzdkd.zza(zzdlhVar2.zzhib, new zzdkc(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzdls
                    private final zzvg zzfzh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzh = zzvgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzavu) obj).zzj(this.zzfzh);
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhib, new zzdkc(i) { // from class: com.google.android.gms.internal.ads.zzdlv
                    private final int zzehw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzehw = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzavu) obj).onRewardedAdFailedToLoad(this.zzehw);
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhid, new zzdkc(i) { // from class: com.google.android.gms.internal.ads.zzdlu
                    private final int zzehw;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzehw = i;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzauu) obj).onRewardedVideoAdFailedToLoad(this.zzehw);
                    }
                });
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }

    public final void zzd(zzyw zzywVar) {
        this.zzhig.set(zzywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvgVar) {
        zzdlh zzdlhVar = this;
        while (true) {
            zzdlh zzdlhVar2 = zzdlhVar;
            zzdlh zzdlhVar3 = zzdlhVar2.zzhih;
            if (zzdlhVar3 == null) {
                zzdkd.zza(zzdlhVar2.zzhic, new zzdkc(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzdlo
                    private final zzvg zzfzh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzh = zzvgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzavr) obj).zzi(this.zzfzh);
                    }
                });
                zzdkd.zza(zzdlhVar2.zzhic, new zzdkc(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzdlr
                    private final zzvg zzfzh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzh = zzvgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzavr) obj).onRewardedAdFailedToShow(this.zzfzh.errorCode);
                    }
                });
                return;
            }
            zzdlhVar = zzdlhVar3;
        }
    }
}
