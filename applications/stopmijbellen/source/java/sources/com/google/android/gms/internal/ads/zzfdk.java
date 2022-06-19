package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfdk.class */
public final class zzfdk extends zzcei {
    private final zzfda zza;
    private final zzfcq zzb;
    private final zzfea zzc;
    @GuardedBy("this")
    private zzdvn zzd;
    @GuardedBy("this")
    private boolean zze = false;

    public zzfdk(zzfda zzfdaVar, zzfcq zzfcqVar, zzfea zzfeaVar) {
        this.zza = zzfdaVar;
        this.zzb = zzfcqVar;
        this.zzc = zzfeaVar;
    }

    private final boolean zzx() {
        boolean z;
        synchronized (this) {
            zzdvn zzdvnVar = this.zzd;
            if (zzdvnVar != null) {
                if (!zzdvnVar.zzd()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final Bundle zzb() {
        Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
        zzdvn zzdvnVar = this.zzd;
        return zzdvnVar != null ? zzdvnVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final zzbiw zzc() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue()) {
                return null;
            }
            zzdvn zzdvnVar = this.zzd;
            if (zzdvnVar == null) {
                return null;
            }
            return zzdvnVar.zzl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final String zzd() throws RemoteException {
        synchronized (this) {
            zzdvn zzdvnVar = this.zzd;
            if (zzdvnVar == null || zzdvnVar.zzl() == null) {
                return null;
            }
            return this.zzd.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zze() throws RemoteException {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzf(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            this.zzb.zzb(null);
            if (this.zzd != null) {
                this.zzd.zzm().zza(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzg(zzcen zzcenVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            String str = zzcenVar.zzb;
            String str2 = (String) zzbgq.zzc().zzb(zzblj.zzdQ);
            if (str2 != null && str != null) {
                try {
                    if (Pattern.matches(str2, str)) {
                        return;
                    }
                } catch (RuntimeException e) {
                    zzt.zzo().zzs(e, "NonagonUtil.isPatternMatched");
                }
            }
            if (zzx()) {
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdS)).booleanValue()) {
                    return;
                }
            }
            zzfcs zzfcsVar = new zzfcs(null);
            this.zzd = null;
            this.zza.zzj(1);
            this.zza.zzb(zzcenVar.zza, zzcenVar.zzb, zzfcsVar, new zzfdi(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzh() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzi(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
            if (this.zzd != null) {
                this.zzd.zzm().zzb(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzj() {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzk(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
            if (this.zzd != null) {
                this.zzd.zzm().zzc(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzl(zzbho zzbhoVar) {
        Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
        if (zzbhoVar == null) {
            this.zzb.zzb(null);
        } else {
            this.zzb.zzb(new zzfdj(this, zzbhoVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzm(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setCustomData");
            this.zzc.zzb = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzn(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zze = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzo(zzcem zzcemVar) throws RemoteException {
        Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzb.zzf(zzcemVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzp(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("setUserId must be called on the main UI thread.");
            this.zzc.zza = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzq() throws RemoteException {
        synchronized (this) {
            zzr(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Activity activity;
        synchronized (this) {
            Preconditions.checkMainThread("showAd must be called on the main UI thread.");
            if (this.zzd != null) {
                if (iObjectWrapper == null) {
                    activity = null;
                } else {
                    Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
                    activity = null;
                    if (unwrap instanceof Activity) {
                        activity = (Activity) unwrap;
                    }
                }
                this.zzd.zzg(this.zze, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final boolean zzs() throws RemoteException {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final boolean zzt() {
        zzdvn zzdvnVar = this.zzd;
        return zzdvnVar != null && zzdvnVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcej
    public final void zzu(zzceh zzcehVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzb.zzh(zzcehVar);
    }
}
