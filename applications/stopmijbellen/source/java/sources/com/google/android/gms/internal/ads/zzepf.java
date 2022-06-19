package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepf.class */
public final class zzepf extends zzbhj {
    private final zzbfi zza;
    private final Context zzb;
    private final zzfbq zzc;
    private final String zzd;
    private final zzeox zze;
    private final zzfcq zzf;
    @GuardedBy("this")
    private zzdmw zzg;
    @GuardedBy("this")
    private boolean zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaw)).booleanValue();

    public zzepf(Context context, zzbfi zzbfiVar, String str, zzfbq zzfbqVar, zzeox zzeoxVar, zzfcq zzfcqVar) {
        this.zza = zzbfiVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzfbqVar;
        this.zze = zzeoxVar;
        this.zzf = zzfcqVar;
    }

    private final boolean zze() {
        boolean z;
        synchronized (this) {
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar != null) {
                if (!zzdmwVar.zza()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar != null) {
                zzdmwVar.zzm().zzc(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zze.zzf(zzbgxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zze.zzs(zzbhrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) {
        this.zze.zzt(zzbhyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zzh = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzc.zzi(zzbmeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        this.zze.zzi(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) {
        this.zzf.zzf(zzcemVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzg == null) {
                zzciz.zzj("Interstitial can not be shown before loaded.");
                this.zze.zzk(zzfey.zzd(9, null, null));
                return;
            }
            this.zzg.zzc(this.zzh, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() {
        synchronized (this) {
            Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar != null) {
                zzdmwVar.zzc(this.zzh, null);
                return;
            }
            zzciz.zzj("Interstitial can not be shown before loaded.");
            this.zze.zzk(zzfey.zzd(9, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() {
        boolean zza;
        synchronized (this) {
            zza = this.zzc.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() {
        boolean zze;
        synchronized (this) {
            Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
            zze = zze();
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzL(this.zzb) && zzbfdVar.zzs == null) {
                zzciz.zzg("Failed to load the ad because app ID is missing.");
                zzeox zzeoxVar = this.zze;
                if (zzeoxVar != null) {
                    zzeoxVar.zza(zzfey.zzd(4, null, null));
                }
                return false;
            } else if (zze()) {
                return false;
            } else {
                zzfeu.zza(this.zzb, zzbfdVar.zzf);
                this.zzg = null;
                return this.zzc.zzb(zzbfdVar, this.zzd, new zzfbj(this.zza), new zzepe(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() {
        return this.zze.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() {
        return this.zze.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() {
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue()) {
                return null;
            }
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar == null) {
                return null;
            }
            return zzdmwVar.zzl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() {
        String str;
        synchronized (this) {
            str = this.zzd;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() {
        synchronized (this) {
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar == null || zzdmwVar.zzl() == null) {
                return null;
            }
            return this.zzg.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() {
        synchronized (this) {
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar == null || zzdmwVar.zzl() == null) {
                return null;
            }
            return this.zzg.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar != null) {
                zzdmwVar.zzm().zza(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) {
        this.zze.zzh(zzbhaVar);
        zzaa(zzbfdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            zzdmw zzdmwVar = this.zzg;
            if (zzdmwVar != null) {
                zzdmwVar.zzm().zzb(null);
            }
        }
    }
}
