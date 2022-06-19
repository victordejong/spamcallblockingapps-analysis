package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyt.class */
public final class zzcyt extends zzxo {
    private final zzvs zzbpo;
    private final String zzbut;
    private final Context zzgxt;
    private final zzcxy zzgxy;
    private final zzdkx zzgyl;
    private final zzdlh zzgym;
    private zzbyy zzgyn;
    private boolean zzgyo = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcox)).booleanValue();

    public zzcyt(Context context, zzvs zzvsVar, String str, zzdkx zzdkxVar, zzcxy zzcxyVar, zzdlh zzdlhVar) {
        this.zzbpo = zzvsVar;
        this.zzbut = str;
        this.zzgxt = context;
        this.zzgyl = zzdkxVar;
        this.zzgxy = zzcxyVar;
        this.zzgym = zzdlhVar;
    }

    private final boolean zzasm() {
        boolean z;
        synchronized (this) {
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar != null) {
                if (!zzbyyVar.isClosed()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar != null) {
                zzbyyVar.zzakq().zzcd(null);
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
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar == null || zzbyyVar.zzakr() == null) {
                return null;
            }
            return this.zzgyn.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.zzgyl.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        boolean zzasm;
        synchronized (this) {
            Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
            zzasm = zzasm();
        }
        return zzasm;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar != null) {
                zzbyyVar.zzakq().zzcb(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar != null) {
                zzbyyVar.zzakq().zzcc(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zzgyo = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
        synchronized (this) {
            Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar == null) {
                return;
            }
            zzbyyVar.zzb(this.zzgyo, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaauVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzaclVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzgyl.zza(zzaclVar);
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
        this.zzgym.zzb(zzauuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzspVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvlVar, zzxc zzxcVar) {
        this.zzgxy.zza(zzxcVar);
        zza(zzvlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzwwVar) {
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
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzybVar) {
        this.zzgxy.zzb(zzybVar);
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
    public final boolean zza(zzvl zzvlVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzr.zzkr();
            if (zzj.zzaz(this.zzgxt) && zzvlVar.zzcia == null) {
                zzd.zzev("Failed to load the ad because app ID is missing.");
                zzcxy zzcxyVar = this.zzgxy;
                if (zzcxyVar != null) {
                    zzcxyVar.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
                }
                return false;
            } else if (zzasm()) {
                return false;
            } else {
                zzdod.zze(this.zzgxt, zzvlVar.zzchq);
                this.zzgyn = null;
                return this.zzgyl.zza(zzvlVar, this.zzbut, new zzdku(this.zzbpo), new zzcyw(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzgyn == null) {
                zzd.zzex("Interstitial can not be shown before loaded.");
                this.zzgxy.zzk(zzdok.zza(zzdom.NOT_READY, null, null));
                return;
            }
            this.zzgyn.zzb(this.zzgyo, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final IObjectWrapper zzke() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        synchronized (this) {
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar == null || zzbyyVar.zzakr() == null) {
                return null;
            }
            return this.zzgyn.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        synchronized (this) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
                return null;
            }
            zzbyy zzbyyVar = this.zzgyn;
            if (zzbyyVar == null) {
                return null;
            }
            return zzbyyVar.zzakr();
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
