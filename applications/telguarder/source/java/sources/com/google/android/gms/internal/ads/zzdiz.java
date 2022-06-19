package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdiz.class */
public final class zzdiz extends zzxo implements zzq, zzsh {
    private final String zzbut;
    private final zzbgc zzguy;
    private final Context zzgxt;
    private final zzdil zzhfd;
    private zzbkq zzhff;
    private final zzdix zzhgb;
    protected zzblq zzhgd;
    private AtomicBoolean zzhfb = new AtomicBoolean();
    private long zzhgc = -1;

    public zzdiz(zzbgc zzbgcVar, Context context, String str, zzdix zzdixVar, zzdil zzdilVar) {
        this.zzguy = zzbgcVar;
        this.zzgxt = context;
        this.zzbut = str;
        this.zzhgb = zzdixVar;
        this.zzhfd = zzdilVar;
        zzdilVar.zza(this);
    }

    public final void zza(zzblq zzblqVar) {
        zzblqVar.zza(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzeb(int i) {
        synchronized (this) {
            if (this.zzhfb.compareAndSet(false, true)) {
                this.zzhfd.onAdClosed();
                zzbkq zzbkqVar = this.zzhff;
                if (zzbkqVar != null) {
                    zzr.zzku().zzb(zzbkqVar);
                }
                if (this.zzhgd != null) {
                    ?? r10 = true;
                    if (this.zzhgc != -1) {
                        r10 = zzr.zzky().elapsedRealtime() - this.zzhgc;
                    }
                    this.zzhgd.zzb(r10 == true ? 1L : 0L, i);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzblq zzblqVar = this.zzhgd;
            if (zzblqVar != null) {
                zzblqVar.destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() {
        String str;
        synchronized (this) {
            str = this.zzbut;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.zzhgb.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        synchronized (this) {
            zzblq zzblqVar = this.zzhgd;
            if (zzblqVar != null) {
                zzblqVar.zzb(zzr.zzky().elapsedRealtime() - this.zzhgc, zzbkw.zzfts);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        int i = zzdjc.zzhge[zznVar.ordinal()];
        if (i == 1) {
            zzeb(zzbkw.zzftu);
        } else if (i == 2) {
            zzeb(zzbkw.zzftt);
        } else if (i == 3) {
            zzeb(zzbkw.zzftv);
        } else if (i != 4) {
        } else {
            zzeb(zzbkw.zzftx);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaauVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzaryVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzaseVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzspVar) {
        this.zzhfd.zzb(zzspVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) {
        this.zzhgb.zza(zzvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxzVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzywVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzziVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvlVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzr.zzkr();
            if (zzj.zzaz(this.zzgxt) && zzvlVar.zzcia == null) {
                zzd.zzev("Failed to load the ad because app ID is missing.");
                this.zzhfd.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
                return false;
            } else if (isLoading()) {
                return false;
            } else {
                this.zzhfb = new AtomicBoolean();
                return this.zzhgb.zza(zzvlVar, this.zzbut, new zzdja(this), new zzdjd(this));
            }
        }
    }

    public final /* synthetic */ void zzaug() {
        this.zzguy.zzafa().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdiy
            private final zzdiz zzhga;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhga = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzhga.zzauh();
            }
        });
    }

    public final /* synthetic */ void zzauh() {
        zzeb(zzbkw.zzftw);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    public final void zzmt() {
        zzeb(zzbkw.zzftu);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        synchronized (this) {
            if (this.zzhgd == null) {
                return;
            }
            this.zzhgc = zzr.zzky().elapsedRealtime();
            int zzajh = this.zzhgd.zzajh();
            if (zzajh <= 0) {
                return;
            }
            zzbkq zzbkqVar = new zzbkq(this.zzguy.zzafb(), zzr.zzky());
            this.zzhff = zzbkqVar;
            zzbkqVar.zza(zzajh, new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdjb
                private final zzdiz zzhga;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhga = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzhga.zzaug();
                }
            });
        }
    }
}
