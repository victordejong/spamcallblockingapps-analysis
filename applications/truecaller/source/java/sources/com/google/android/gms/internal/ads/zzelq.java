package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelq.class */
public final class zzelq extends zzbfm {
    private final zzbdl zza;
    private final Context zzb;
    private final zzeyc zzc;
    private final String zzd;
    private final zzeli zze;
    private final zzezc zzf;
    private zzdji zzg;
    private boolean zzh = ((Boolean) zzbet.zzc().zzc(zzbjl.zzat)).booleanValue();

    public zzelq(Context context, zzbdl zzbdlVar, String str, zzeyc zzeycVar, zzeli zzeliVar, zzezc zzezcVar) {
        this.zza = zzbdlVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzeycVar;
        this.zze = zzeliVar;
        this.zzf = zzezcVar;
    }

    private final boolean zzd() {
        boolean z;
        synchronized (this) {
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar != null) {
                if (!zzdjiVar.zzb()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbgz zzA() {
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfb)).booleanValue()) {
                return null;
            }
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar == null) {
                return null;
            }
            return zzdjiVar.zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzB() {
        String str;
        synchronized (this) {
            str = this.zzd;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfu zzC() {
        return this.zze.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfa zzD() {
        return this.zze.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzE(zzbkg zzbkgVar) {
        synchronized (this) {
            Preconditions.m38902f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzc.zzg(zzbkgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzF(zzbex zzbexVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzG(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzH() {
        boolean zzb;
        synchronized (this) {
            zzb = this.zzc.zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzI(zzccf zzccfVar) {
        this.zzf.zzp(zzccfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzJ(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzK(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbhc zzL() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzM(zzbis zzbisVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzN(zzbhg zzbhgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzO(zzbdr zzbdrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzP(zzaxz zzaxzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzQ(boolean z) {
        synchronized (this) {
            Preconditions.m38902f("setImmersiveMode must be called on the main UI thread.");
            this.zzh = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzX(zzbgw zzbgwVar) {
        Preconditions.m38902f("setPaidEventListener must be called on the main UI thread.");
        this.zze.zzr(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzY(zzbdg zzbdgVar, zzbfd zzbfdVar) {
        this.zze.zzs(zzbfdVar);
        zzl(zzbdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzZ(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.zzg == null) {
                zzcgt.zzi("Interstitial can not be shown before loaded.");
                this.zze.zzn(zzfbm.zzd(9, null, null));
                return;
            }
            this.zzg.zza(this.zzh, (Activity) ObjectWrapper.m38746B1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) {
        this.zze.zzt(zzbgbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() {
        synchronized (this) {
            Preconditions.m38902f("destroy must be called on the main UI thread.");
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar != null) {
                zzdjiVar.zzl().zzc(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzk() {
        boolean zzd;
        synchronized (this) {
            Preconditions.m38902f("isLoaded must be called on the main UI thread.");
            zzd = zzd();
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzl(zzbdg zzbdgVar) {
        synchronized (this) {
            Preconditions.m38902f("loadAd must be called on the main UI thread.");
            zzt.zzc();
            if (zzs.zzK(this.zzb) && zzbdgVar.zzs == null) {
                zzcgt.zzf("Failed to load the ad because app ID is missing.");
                zzeli zzeliVar = this.zze;
                if (zzeliVar != null) {
                    zzeliVar.zzbD(zzfbm.zzd(4, null, null));
                }
                return false;
            } else if (zzd()) {
                return false;
            } else {
                zzfbh.zzb(this.zzb, zzbdgVar.zzf);
                this.zzg = null;
                return this.zzc.zza(zzbdgVar, this.zzd, new zzexv(this.zza), new zzelp(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzm() {
        synchronized (this) {
            Preconditions.m38902f("pause must be called on the main UI thread.");
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar != null) {
                zzdjiVar.zzl().zza(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzn() {
        synchronized (this) {
            Preconditions.m38902f("resume must be called on the main UI thread.");
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar != null) {
                zzdjiVar.zzl().zzb(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzo(zzbfa zzbfaVar) {
        Preconditions.m38902f("setAdListener must be called on the main UI thread.");
        this.zze.zze(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzp(zzbfu zzbfuVar) {
        Preconditions.m38902f("setAppEventListener must be called on the main UI thread.");
        this.zze.zzp(zzbfuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzq(zzbfr zzbfrVar) {
        Preconditions.m38902f("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final Bundle zzr() {
        Preconditions.m38902f("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzs() {
        synchronized (this) {
            Preconditions.m38902f("showInterstitial must be called on the main UI thread.");
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar != null) {
                zzdjiVar.zza(this.zzh, null);
                return;
            }
            zzcgt.zzi("Interstitial can not be shown before loaded.");
            this.zze.zzn(zzfbm.zzd(9, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzv(zzbdl zzbdlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzw(zzbzz zzbzzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzx(zzcac zzcacVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzy() {
        synchronized (this) {
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar == null || zzdjiVar.zzm() == null) {
                return null;
            }
            return this.zzg.zzm().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzz() {
        synchronized (this) {
            zzdji zzdjiVar = this.zzg;
            if (zzdjiVar == null || zzdjiVar.zzm() == null) {
                return null;
            }
            return this.zzg.zzm().zze();
        }
    }
}
