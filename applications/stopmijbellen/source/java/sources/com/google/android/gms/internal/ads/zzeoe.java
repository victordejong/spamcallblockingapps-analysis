package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoe.class */
public final class zzeoe extends zzbhj implements zzdhh {
    private final Context zza;
    private final zzezx zzb;
    private final String zzc;
    private final zzeox zzd;
    private zzbfi zze;
    @GuardedBy("this")
    private final zzfed zzf;
    @GuardedBy("this")
    private zzcyw zzg;

    public zzeoe(Context context, zzbfi zzbfiVar, String str, zzezx zzezxVar, zzeox zzeoxVar) {
        this.zza = context;
        this.zzb = zzezxVar;
        this.zze = zzbfiVar;
        this.zzc = str;
        this.zzd = zzeoxVar;
        this.zzf = zzezxVar.zzh();
        zzezxVar.zzo(this);
    }

    private final void zze(zzbfi zzbfiVar) {
        synchronized (this) {
            this.zzf.zzr(zzbfiVar);
            this.zzf.zzw(this.zze.zzn);
        }
    }

    private final boolean zzf(zzbfd zzbfdVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzt.zzp();
            if (!com.google.android.gms.ads.internal.util.zzt.zzL(this.zza) || zzbfdVar.zzs != null) {
                zzfeu.zza(this.zza, zzbfdVar.zzf);
                return this.zzb.zzb(zzbfdVar, this.zzc, null, new zzeod(this));
            }
            zzciz.zzg("Failed to load the ad because app ID is missing.");
            zzeox zzeoxVar = this.zzd;
            if (zzeoxVar != null) {
                zzeoxVar.zza(zzfey.zzd(4, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() {
        synchronized (this) {
            Preconditions.checkMainThread("recordManualImpression must be called on the main UI thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                zzcywVar.zzg();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                zzcywVar.zzm().zzc(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzb.zzn(zzbguVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzd.zzf(zzbgxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
            this.zzf.zzr(zzbfiVar);
            this.zze = zzbfiVar;
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                zzcywVar.zzh(this.zzb.zzd(), zzbfiVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzd.zzs(zzbhrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setManualImpressionsEnabled must be called from the main thread.");
            this.zzf.zzx(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzb.zzp(zzbmeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        this.zzd.zzi(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setVideoOptions must be called on the main UI thread.");
            this.zzf.zzE(zzbkqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() {
        boolean zza;
        synchronized (this) {
            zza = this.zzb.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdhh
    public final void zza() {
        synchronized (this) {
            if (!this.zzb.zzq()) {
                this.zzb.zzm();
                return;
            }
            zzbfi zzg = this.zzf.zzg();
            zzcyw zzcywVar = this.zzg;
            zzbfi zzbfiVar = zzg;
            if (zzcywVar != null) {
                zzbfiVar = zzg;
                if (zzcywVar.zzf() != null) {
                    zzbfiVar = zzg;
                    if (this.zzf.zzM()) {
                        zzbfiVar = zzfej.zza(this.zza, Collections.singletonList(this.zzg.zzf()));
                    }
                }
            }
            zze(zzbfiVar);
            try {
                zzf(this.zzf.zze());
            } catch (RemoteException e) {
                zzciz.zzj("Failed to refresh the banner ad.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) throws RemoteException {
        boolean zzf;
        synchronized (this) {
            zze(this.zze);
            zzf = zzf(zzbfdVar);
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setCorrelationIdProvider must be called on the main UI thread");
            this.zzf.zzO(zzbhvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                return zzfej.zza(this.zza, Collections.singletonList(zzcywVar.zze()));
            }
            return this.zzf.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() {
        return this.zzd.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() {
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue()) {
                return null;
            }
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar == null) {
                return null;
            }
            return zzcywVar.zzl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() {
        synchronized (this) {
            Preconditions.checkMainThread("getVideoController must be called from the main thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                return zzcywVar.zzd();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzb.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() {
        String str;
        synchronized (this) {
            str = this.zzc;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() {
        synchronized (this) {
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar == null || zzcywVar.zzl() == null) {
                return null;
            }
            return this.zzg.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() {
        synchronized (this) {
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar == null || zzcywVar.zzl() == null) {
                return null;
            }
            return this.zzg.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                zzcywVar.zzT();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            zzcyw zzcywVar = this.zzg;
            if (zzcywVar != null) {
                zzcywVar.zzm().zzb(null);
            }
        }
    }
}
