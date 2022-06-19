package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzzm.class */
public final class zzzm {
    private final zzvq zzact;
    private boolean zzbni;
    private VideoOptions zzbnw;
    private AppEventListener zzbsf;
    private String zzbut;
    private zzxl zzbuz;
    private final zzanf zzbvb;
    private zzvc zzchd;
    private AdListener zzchm;
    private AdSize[] zzcis;
    private final AtomicBoolean zzckk;
    private final VideoController zzckl;
    private final zzwu zzckm;
    private com.google.android.gms.ads.doubleclick.AppEventListener zzckn;
    private OnCustomRenderedAdLoadedListener zzcko;
    private ViewGroup zzckp;
    private int zzckq;
    private OnPaidEventListener zzckr;

    public zzzm(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzvq.zzcif, 0);
    }

    public zzzm(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzvq.zzcif, i);
    }

    public zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzvq.zzcif, 0);
    }

    public zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzvq.zzcif, i);
    }

    private zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvq zzvqVar, int i) {
        this(viewGroup, attributeSet, z, zzvqVar, null, i);
    }

    private zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvq zzvqVar, zzxl zzxlVar, int i) {
        zzvs zzvsVar;
        this.zzbvb = new zzanf();
        this.zzckl = new VideoController();
        this.zzckm = new zzzl(this);
        this.zzckp = viewGroup;
        this.zzact = zzvqVar;
        this.zzbuz = null;
        this.zzckk = new AtomicBoolean(false);
        this.zzckq = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzvz zzvzVar = new zzvz(context, attributeSet);
                this.zzcis = zzvzVar.zzy(z);
                this.zzbut = zzvzVar.getAdUnitId();
                if (!viewGroup.isInEditMode()) {
                    return;
                }
                zzaza zzqn = zzwr.zzqn();
                AdSize adSize = this.zzcis[0];
                int i2 = this.zzckq;
                if (adSize.equals(AdSize.INVALID)) {
                    zzvsVar = zzvs.zzqh();
                } else {
                    zzvsVar = new zzvs(context, adSize);
                    zzvsVar.zzcij = zzcz(i2);
                }
                zzqn.zza(viewGroup, zzvsVar, "Ads by Google");
            } catch (IllegalArgumentException e) {
                zzwr.zzqn().zza(viewGroup, new zzvs(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private static zzvs zza(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzvs.zzqh();
            }
        }
        zzvs zzvsVar = new zzvs(context, adSizeArr);
        zzvsVar.zzcij = zzcz(i);
        return zzvsVar;
    }

    private static boolean zzcz(int i) {
        return i == 1;
    }

    public final void destroy() {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.destroy();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.zzchm;
    }

    public final AdSize getAdSize() {
        zzvs zzkg;
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar != null && (zzkg = zzxlVar.zzkg()) != null) {
                return zzkg.zzqi();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.zzcis;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzcis;
    }

    public final String getAdUnitId() {
        zzxl zzxlVar;
        if (this.zzbut == null && (zzxlVar = this.zzbuz) != null) {
            try {
                this.zzbut = zzxlVar.getAdUnitId();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
        return this.zzbut;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbsf;
    }

    public final String getMediationAdapterClassName() {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return null;
            }
            return zzxlVar.zzkh();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcko;
    }

    public final ResponseInfo getResponseInfo() {
        zzyx zzyxVar;
        try {
            zzxl zzxlVar = this.zzbuz;
            zzyxVar = null;
            if (zzxlVar != null) {
                zzyxVar = zzxlVar.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            zzyxVar = null;
        }
        return ResponseInfo.zza(zzyxVar);
    }

    public final VideoController getVideoController() {
        return this.zzckl;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbnw;
    }

    public final boolean isLoading() {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return false;
            }
            return zzxlVar.isLoading();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void pause() {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.pause();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void recordManualImpression() {
        if (this.zzckk.getAndSet(true)) {
            return;
        }
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zzkf();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void resume() {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.resume();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzchm = adListener;
        this.zzckm.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzcis == null) {
            zza(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void setAdUnitId(String str) {
        if (this.zzbut == null) {
            this.zzbut = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbsf = appEventListener;
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(appEventListener != null ? new zzrg(appEventListener) : null);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbni = z;
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.setManualImpressionsEnabled(z);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcko = onCustomRenderedAdLoadedListener;
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(onCustomRenderedAdLoadedListener != null ? new zzacm(onCustomRenderedAdLoadedListener) : null);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzckr = onPaidEventListener;
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(new zzaap(onPaidEventListener));
        } catch (RemoteException e) {
            zzazk.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.zzbnw = videoOptions;
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(videoOptions == null ? null : new zzaau(videoOptions));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(com.google.android.gms.ads.doubleclick.AppEventListener appEventListener) {
        try {
            this.zzckn = appEventListener;
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(appEventListener != null ? new zzvy(this.zzckn) : null);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzvc zzvcVar) {
        try {
            this.zzchd = zzvcVar;
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                return;
            }
            zzxlVar.zza(zzvcVar != null ? new zzvb(zzvcVar) : null);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzzk zzzkVar) {
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar == null) {
                if ((this.zzcis == null || this.zzbut == null) && zzxlVar == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzckp.getContext();
                zzvs zza = zza(context, this.zzcis, this.zzckq);
                zzxl zzd = "search_v2".equals(zza.zzacy) ? new zzwj(zzwr.zzqo(), context, zza, this.zzbut).zzd(context, false) : new zzwb(zzwr.zzqo(), context, zza, this.zzbut, this.zzbvb).zzd(context, false);
                this.zzbuz = zzd;
                zzd.zza(new zzvi(this.zzckm));
                if (this.zzchd != null) {
                    this.zzbuz.zza(new zzvb(this.zzchd));
                }
                if (this.zzbsf != null) {
                    this.zzbuz.zza(new zzrg(this.zzbsf));
                }
                if (this.zzckn != null) {
                    this.zzbuz.zza(new zzvy(this.zzckn));
                }
                if (this.zzcko != null) {
                    this.zzbuz.zza(new zzacm(this.zzcko));
                }
                if (this.zzbnw != null) {
                    this.zzbuz.zza(new zzaau(this.zzbnw));
                }
                this.zzbuz.zza(new zzaap(this.zzckr));
                this.zzbuz.setManualImpressionsEnabled(this.zzbni);
                try {
                    IObjectWrapper zzke = this.zzbuz.zzke();
                    if (zzke != null) {
                        this.zzckp.addView((View) ObjectWrapper.unwrap(zzke));
                    }
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            if (!this.zzbuz.zza(zzvq.zza(this.zzckp.getContext(), zzzkVar))) {
                return;
            }
            this.zzbvb.zzf(zzzkVar.zzrk());
        } catch (RemoteException e2) {
            zzazk.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzcis = adSizeArr;
        try {
            zzxl zzxlVar = this.zzbuz;
            if (zzxlVar != null) {
                zzxlVar.zza(zza(this.zzckp.getContext(), this.zzcis, this.zzckq));
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        this.zzckp.requestLayout();
    }

    public final boolean zza(zzxl zzxlVar) {
        if (zzxlVar == null) {
            return false;
        }
        try {
            IObjectWrapper zzke = zzxlVar.zzke();
            if (zzke == null || ((View) ObjectWrapper.unwrap(zzke)).getParent() != null) {
                return false;
            }
            this.zzckp.addView((View) ObjectWrapper.unwrap(zzke));
            this.zzbuz = zzxlVar;
            return true;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final zzzc zzdw() {
        zzxl zzxlVar = this.zzbuz;
        if (zzxlVar == null) {
            return null;
        }
        try {
            return zzxlVar.getVideoController();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final com.google.android.gms.ads.doubleclick.AppEventListener zzrr() {
        return this.zzckn;
    }
}
