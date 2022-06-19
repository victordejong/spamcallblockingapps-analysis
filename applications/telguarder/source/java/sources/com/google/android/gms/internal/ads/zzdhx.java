package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhx.class */
public final class zzdhx extends zzxo implements zzz, zzbtg, zzsh {
    private final zzazn zzboz;
    private final String zzbut;
    private final ViewGroup zzfum;
    private final zzbgc zzguy;
    private final Context zzgxt;
    private final zzdhv zzhfc;
    private final zzdil zzhfd;
    private zzbkq zzhff;
    protected zzblg zzhfg;
    private AtomicBoolean zzhfb = new AtomicBoolean();
    private long zzhfe = -1;

    public zzdhx(zzbgc zzbgcVar, Context context, String str, zzdhv zzdhvVar, zzdil zzdilVar, zzazn zzaznVar) {
        this.zzfum = new FrameLayout(context);
        this.zzguy = zzbgcVar;
        this.zzgxt = context;
        this.zzbut = str;
        this.zzhfc = zzdhvVar;
        this.zzhfd = zzdilVar;
        zzdilVar.zza(this);
        this.zzboz = zzaznVar;
    }

    public final zzp zza(zzblg zzblgVar) {
        boolean zzadp = zzblgVar.zzadp();
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvf)).intValue();
        zzs zzsVar = new zzs();
        zzsVar.size = 50;
        zzsVar.paddingLeft = zzadp ? intValue : 0;
        zzsVar.paddingRight = zzadp ? 0 : intValue;
        zzsVar.paddingTop = 0;
        zzsVar.paddingBottom = intValue;
        return new zzp(this.zzgxt, zzsVar, this);
    }

    public final zzvs zzauc() {
        return zzdnu.zzb(this.zzgxt, Collections.singletonList(this.zzhfg.zzajq()));
    }

    public static RelativeLayout.LayoutParams zzb(zzblg zzblgVar) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(zzblgVar.zzadp() ? 11 : 9);
        return layoutParams;
    }

    public final void zzc(zzblg zzblgVar) {
        zzblgVar.zza(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzeb(int i) {
        synchronized (this) {
            if (this.zzhfb.compareAndSet(false, true)) {
                zzblg zzblgVar = this.zzhfg;
                if (zzblgVar != null && zzblgVar.zzajt() != null) {
                    this.zzhfd.zzb(this.zzhfg.zzajt());
                }
                this.zzhfd.onAdClosed();
                this.zzfum.removeAllViews();
                zzbkq zzbkqVar = this.zzhff;
                if (zzbkqVar != null) {
                    zzr.zzku().zzb(zzbkqVar);
                }
                if (this.zzhfg != null) {
                    ?? r10 = true;
                    if (this.zzhfe != -1) {
                        r10 = zzr.zzky().elapsedRealtime() - this.zzhfe;
                    }
                    this.zzhfg.zzb(r10 == true ? 1L : 0L, i);
                }
                destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzblg zzblgVar = this.zzhfg;
            if (zzblgVar != null) {
                zzblgVar.destroy();
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
            isLoading = this.zzhfc.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        return false;
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
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
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
        this.zzhfc.zza(zzvxVar);
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
                return this.zzhfc.zza(zzvlVar, this.zzbut, new zzdhy(this), new zzdib(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        if (this.zzhfg == null) {
            return;
        }
        this.zzhfe = zzr.zzky().elapsedRealtime();
        int zzajh = this.zzhfg.zzajh();
        if (zzajh <= 0) {
            return;
        }
        zzbkq zzbkqVar = new zzbkq(this.zzguy.zzafb(), zzr.zzky());
        this.zzhff = zzbkqVar;
        zzbkqVar.zza(zzajh, new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdhz
            private final zzdhx zzhfa;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhfa = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzhfa.zzaud();
            }
        });
    }

    public final /* synthetic */ void zzaud() {
        zzwr.zzqn();
        if (zzaza.zzzx()) {
            zzeb(zzbkw.zzftw);
        } else {
            this.zzguy.zzafa().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdhw
                private final zzdhx zzhfa;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhfa = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzhfa.zzaue();
                }
            });
        }
    }

    public final /* synthetic */ void zzaue() {
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
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzfum);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            zzblg zzblgVar = this.zzhfg;
            if (zzblgVar != null) {
                return zzdnu.zzb(this.zzgxt, Collections.singletonList(zzblgVar.zzajq()));
            }
            return null;
        }
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

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzvv() {
        zzeb(zzbkw.zzftv);
    }
}
