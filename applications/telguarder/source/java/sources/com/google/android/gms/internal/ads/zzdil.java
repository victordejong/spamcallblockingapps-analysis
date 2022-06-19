package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdil.class */
public final class zzdil implements zzq, zzbrr, zzbtg, zzdkk {
    private final zzdov zzhfs;
    private final AtomicReference<zzsp> zzhft = new AtomicReference<>();
    private final AtomicReference<zzsq> zzhfu = new AtomicReference<>();
    private final AtomicReference<zzsv> zzhfv = new AtomicReference<>();
    private final AtomicReference<zzbtg> zzhfw = new AtomicReference<>();
    private final AtomicReference<zzq> zzhfx = new AtomicReference<>();
    private zzdil zzhfy = null;

    public zzdil(zzdov zzdovVar) {
        this.zzhfs = zzdovVar;
    }

    public static zzdil zzb(zzdil zzdilVar) {
        zzdil zzdilVar2 = new zzdil(zzdilVar.zzhfs);
        zzdilVar2.zzb((zzdkk) zzdilVar);
        return zzdilVar2;
    }

    public final void onAdClosed() {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdilVar2.zzhfs.onAdClosed();
                zzdkd.zza(zzdilVar2.zzhfu, zzdip.zzgya);
                zzdkd.zza(zzdilVar2.zzhfv, zzdio.zzgya);
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhfx, zzdiv.zzgya);
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhfx, new zzdkc(zznVar) { // from class: com.google.android.gms.internal.ads.zzdis
                    private final zzn zzfzn;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzn = zznVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzq) obj).zza(this.zzfzn);
                    }
                });
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    public final void zza(zzq zzqVar) {
        this.zzhfx.set(zzqVar);
    }

    public final void zza(zzbtg zzbtgVar) {
        this.zzhfw.set(zzbtgVar);
    }

    public final void zza(zzsv zzsvVar) {
        this.zzhfv.set(zzsvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhfw, zzdir.zzgya);
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdkk
    public final void zzb(zzdkk zzdkkVar) {
        this.zzhfy = (zzdil) zzdkkVar;
    }

    public final void zzb(zzsk zzskVar) {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhft, new zzdkc(zzskVar) { // from class: com.google.android.gms.internal.ads.zzdik
                    private final zzsk zzhfr;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhfr = zzskVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzsp) obj).zza(this.zzhfr);
                    }
                });
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    public final void zzb(zzsp zzspVar) {
        this.zzhft.set(zzspVar);
    }

    public final void zzb(zzsq zzsqVar) {
        this.zzhfu.set(zzsqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhft, new zzdkc(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzdin
                    private final zzvg zzfzh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzh = zzvgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzsp) obj).zza(this.zzfzh);
                    }
                });
                zzdkd.zza(zzdilVar2.zzhft, new zzdkc(zzvgVar) { // from class: com.google.android.gms.internal.ads.zzdim
                    private final zzvg zzfzh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzfzh = zzvgVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkc
                    public final void zzp(Object obj) {
                        ((zzsp) obj).onAppOpenAdFailedToLoad(this.zzfzh.errorCode);
                    }
                });
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzdil zzdilVar = this;
        while (true) {
            zzdil zzdilVar2 = zzdilVar;
            zzdil zzdilVar3 = zzdilVar2.zzhfy;
            if (zzdilVar3 == null) {
                zzdkd.zza(zzdilVar2.zzhfx, zzdiq.zzgya);
                zzdkd.zza(zzdilVar2.zzhfv, zzdit.zzgya);
                return;
            }
            zzdilVar = zzdilVar3;
        }
    }
}
