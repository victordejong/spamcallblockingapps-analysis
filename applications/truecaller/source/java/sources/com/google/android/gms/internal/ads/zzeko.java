package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeko.class */
public final class zzeko extends zzbfm implements zzdds {
    private final Context zza;
    private final zzewj zzb;
    private final String zzc;
    private final zzeli zzd;
    private zzbdl zze;
    private final zzfap zzf;
    private zzcvh zzg;

    public zzeko(Context context, zzbdl zzbdlVar, String str, zzewj zzewjVar, zzeli zzeliVar) {
        this.zza = context;
        this.zzb = zzewjVar;
        this.zze = zzbdlVar;
        this.zzc = str;
        this.zzd = zzeliVar;
        this.zzf = zzewjVar.zzl();
        zzewjVar.zzn(this);
    }

    private final void zzd(zzbdl zzbdlVar) {
        synchronized (this) {
            this.zzf.zzt(zzbdlVar);
            this.zzf.zzu(this.zze.zzn);
        }
    }

    private final boolean zze(zzbdg zzbdgVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("loadAd must be called on the main UI thread.");
            zzt.zzc();
            if (!zzs.zzK(this.zza) || zzbdgVar.zzs != null) {
                zzfbh.zzb(this.zza, zzbdgVar.zzf);
                return this.zzb.zza(zzbdgVar, this.zzc, null, new zzekn(this));
            }
            zzcgt.zzf("Failed to load the ad because app ID is missing.");
            zzeli zzeliVar = this.zzd;
            if (zzeliVar != null) {
                zzeliVar.zzbD(zzfbm.zzd(4, null, null));
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbgz zzA() {
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfb)).booleanValue()) {
                return null;
            }
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar == null) {
                return null;
            }
            return zzcvhVar.zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzB() {
        String str;
        synchronized (this) {
            str = this.zzc;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfu zzC() {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfa zzD() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzE(zzbkg zzbkgVar) {
        synchronized (this) {
            Preconditions.m38902f("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
            this.zzb.zzj(zzbkgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzF(zzbex zzbexVar) {
        Preconditions.m38902f("setAdListener must be called on the main UI thread.");
        this.zzb.zzk(zzbexVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzG(boolean z) {
        synchronized (this) {
            Preconditions.m38902f("setManualImpressionsEnabled must be called from the main thread.");
            this.zzf.zzA(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzH() {
        boolean zzb;
        synchronized (this) {
            zzb = this.zzb.zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzI(zzccf zzccfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzJ(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzK(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbhc zzL() {
        synchronized (this) {
            Preconditions.m38902f("getVideoController must be called from the main thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                return zzcvhVar.zzc();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzM(zzbis zzbisVar) {
        synchronized (this) {
            Preconditions.m38902f("setVideoOptions must be called on the main UI thread.");
            this.zzf.zzy(zzbisVar);
        }
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
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzX(zzbgw zzbgwVar) {
        Preconditions.m38902f("setPaidEventListener must be called on the main UI thread.");
        this.zzd.zzr(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzY(zzbdg zzbdgVar, zzbfd zzbfdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzZ(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zza() {
        synchronized (this) {
            if (!this.zzb.zzm()) {
                this.zzb.zzo();
                return;
            }
            zzbdl zzv = this.zzf.zzv();
            zzcvh zzcvhVar = this.zzg;
            zzbdl zzbdlVar = zzv;
            if (zzcvhVar != null) {
                zzbdlVar = zzv;
                if (zzcvhVar.zzf() != null) {
                    zzbdlVar = zzv;
                    if (this.zzf.zzM()) {
                        zzbdlVar = zzfav.zzb(this.zza, Collections.singletonList(this.zzg.zzf()));
                    }
                }
            }
            zzd(zzbdlVar);
            try {
                zze(this.zzf.zzs());
            } catch (RemoteException e) {
                zzcgt.zzi("Failed to refresh the banner ad.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) {
        synchronized (this) {
            Preconditions.m38902f("setCorrelationIdProvider must be called on the main UI thread");
            this.zzf.zzO(zzbfyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() {
        Preconditions.m38902f("destroy must be called on the main UI thread.");
        return new ObjectWrapper(this.zzb.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() {
        synchronized (this) {
            Preconditions.m38902f("destroy must be called on the main UI thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                zzcvhVar.zzT();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzk() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzl(zzbdg zzbdgVar) throws RemoteException {
        boolean zze;
        synchronized (this) {
            zzd(this.zze);
            zze = zze(zzbdgVar);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzm() {
        synchronized (this) {
            Preconditions.m38902f("pause must be called on the main UI thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                zzcvhVar.zzl().zza(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzn() {
        synchronized (this) {
            Preconditions.m38902f("resume must be called on the main UI thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                zzcvhVar.zzl().zzb(null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzo(zzbfa zzbfaVar) {
        Preconditions.m38902f("setAdListener must be called on the main UI thread.");
        this.zzd.zze(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzp(zzbfu zzbfuVar) {
        Preconditions.m38902f("setAppEventListener must be called on the main UI thread.");
        this.zzd.zzp(zzbfuVar);
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
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() {
        synchronized (this) {
            Preconditions.m38902f("recordManualImpression must be called on the main UI thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                zzcvhVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() {
        synchronized (this) {
            Preconditions.m38902f("getAdSize must be called on the main UI thread.");
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                return zzfav.zzb(this.zza, Collections.singletonList(zzcvhVar.zze()));
            }
            return this.zzf.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzv(zzbdl zzbdlVar) {
        synchronized (this) {
            Preconditions.m38902f("setAdSize must be called on the main UI thread.");
            this.zzf.zzt(zzbdlVar);
            this.zze = zzbdlVar;
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar != null) {
                zzcvhVar.zzb(this.zzb.zzi(), zzbdlVar);
            }
        }
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
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar == null || zzcvhVar.zzm() == null) {
                return null;
            }
            return this.zzg.zzm().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzz() {
        synchronized (this) {
            zzcvh zzcvhVar = this.zzg;
            if (zzcvhVar == null || zzcvhVar.zzm() == null) {
                return null;
            }
            return this.zzg.zzm().zze();
        }
    }
}
