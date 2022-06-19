package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxw.class */
public final class zzcxw extends zzxo implements zzbtw {
    private final String zzbut;
    private zzblv zzgxr;
    private final Context zzgxt;
    private final zzdnr zzgxu;
    private final zzdje zzgxx;
    private final zzcxy zzgxy;
    private zzvs zzgxz;

    public zzcxw(Context context, zzvs zzvsVar, String str, zzdje zzdjeVar, zzcxy zzcxyVar) {
        this.zzgxt = context;
        this.zzgxx = zzdjeVar;
        this.zzgxz = zzvsVar;
        this.zzbut = str;
        this.zzgxy = zzcxyVar;
        this.zzgxu = zzdjeVar.zzauj();
        zzdjeVar.zza(this);
    }

    private final void zzf(zzvs zzvsVar) {
        synchronized (this) {
            this.zzgxu.zzg(zzvsVar);
            this.zzgxu.zzbm(this.zzgxz.zzcin);
        }
    }

    private final boolean zzg(zzvl zzvlVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzr.zzkr();
            if (!zzj.zzaz(this.zzgxt) || zzvlVar.zzcia != null) {
                zzdod.zze(this.zzgxt, zzvlVar.zzchq);
                return this.zzgxx.zza(zzvlVar, this.zzbut, null, new zzcxv(this));
            }
            zzd.zzev("Failed to load the ad because app ID is missing.");
            zzcxy zzcxyVar = this.zzgxy;
            if (zzcxyVar != null) {
                zzcxyVar.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                zzblvVar.destroy();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
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
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar == null || zzblvVar.zzakr() == null) {
                return null;
            }
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        synchronized (this) {
            Preconditions.checkMainThread("getVideoController must be called from the main thread.");
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                return zzblvVar.getVideoController();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.zzgxx.isLoading();
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
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                zzblvVar.zzakq().zzcb(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                zzblvVar.zzakq().zzcc(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
            this.zzgxu.zzbn(z);
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
            Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
            this.zzgxu.zzc(zzaauVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzgxx.zza(zzaclVar);
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
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
            this.zzgxu.zzg(zzvsVar);
            this.zzgxz = zzvsVar;
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                zzblvVar.zza(this.zzgxx.zzaui(), zzvsVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgxx.zza(zzwwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwxVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzgxy.zzc(zzwxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxsVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxtVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzgxy.zzb(zzxtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxzVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
            this.zzgxu.zzc(zzxzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzywVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        this.zzgxy.zzb(zzywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzziVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvlVar) throws RemoteException {
        boolean zzg;
        synchronized (this) {
            zzf(this.zzgxz);
            zzg = zzg(zzvlVar);
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtw
    public final void zzalu() {
        synchronized (this) {
            if (!this.zzgxx.zzauk()) {
                this.zzgxx.zzaul();
                return;
            }
            zzvs zzkg = this.zzgxu.zzkg();
            zzblv zzblvVar = this.zzgxr;
            zzvs zzvsVar = zzkg;
            if (zzblvVar != null) {
                zzvsVar = zzkg;
                if (zzblvVar.zzajz() != null) {
                    zzvsVar = zzkg;
                    if (this.zzgxu.zzavi()) {
                        zzvsVar = zzdnu.zzb(this.zzgxt, Collections.singletonList(this.zzgxr.zzajz()));
                    }
                }
            }
            zzf(zzvsVar);
            try {
                zzg(this.zzgxu.zzave());
            } catch (RemoteException e) {
                zzd.zzex("Failed to refresh the banner ad.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzgxx.zzaui());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        synchronized (this) {
            Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                zzblvVar.zzkf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar != null) {
                return zzdnu.zzb(this.zzgxt, Collections.singletonList(zzblvVar.zzajq()));
            }
            return this.zzgxu.zzkg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        synchronized (this) {
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar == null || zzblvVar.zzakr() == null) {
                return null;
            }
            return this.zzgxr.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        synchronized (this) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
                return null;
            }
            zzblv zzblvVar = this.zzgxr;
            if (zzblvVar == null) {
                return null;
            }
            return zzblvVar.zzakr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        return this.zzgxy.zzask();
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        return this.zzgxy.zzasj();
    }
}
