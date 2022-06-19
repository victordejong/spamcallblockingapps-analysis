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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezw.class */
public final class zzezw extends zzccb {
    private final zzezm zza;
    private final zzezc zzb;
    private final zzfam zzc;
    private zzdrw zzd;
    private boolean zze = false;

    public zzezw(zzezm zzezmVar, zzezc zzezcVar, zzfam zzfamVar) {
        this.zza = zzezmVar;
        this.zzb = zzezcVar;
        this.zzc = zzfamVar;
    }

    private final boolean zzx() {
        boolean z;
        synchronized (this) {
            zzdrw zzdrwVar = this.zzd;
            if (zzdrwVar != null) {
                if (!zzdrwVar.zze()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzb(zzccg zzccgVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("loadAd must be called on the main UI thread.");
            String str = zzccgVar.zzb;
            String str2 = (String) zzbet.zzc().zzc(zzbjl.zzdJ);
            if (str2 != null && str != null) {
                try {
                    if (Pattern.matches(str2, str)) {
                        return;
                    }
                } catch (RuntimeException e) {
                    zzt.zzg().zzk(e, "NonagonUtil.isPatternMatched");
                }
            }
            if (zzx()) {
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdL)).booleanValue()) {
                    return;
                }
            }
            zzeze zzezeVar = new zzeze(null);
            this.zzd = null;
            this.zza.zzi(1);
            this.zza.zza(zzccgVar.zza, zzccgVar.zzb, zzezeVar, new zzezu(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzc() throws RemoteException {
        synchronized (this) {
            zzp(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzd(zzccf zzccfVar) throws RemoteException {
        Preconditions.m38902f("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzb.zzp(zzccfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final boolean zze() throws RemoteException {
        Preconditions.m38902f("isLoaded must be called on the main UI thread.");
        return zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzf() {
        zzi(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzg() {
        zzj(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzh() throws RemoteException {
        zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzi(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m38902f("pause must be called on the main UI thread.");
            if (this.zzd != null) {
                this.zzd.zzl().zza(iObjectWrapper == null ? null : (Context) ObjectWrapper.m38746B1(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzj(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m38902f("resume must be called on the main UI thread.");
            if (this.zzd != null) {
                this.zzd.zzl().zzb(iObjectWrapper == null ? null : (Context) ObjectWrapper.m38746B1(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzk(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            Preconditions.m38902f("destroy must be called on the main UI thread.");
            this.zzb.zze(null);
            if (this.zzd != null) {
                this.zzd.zzl().zzc(iObjectWrapper == null ? null : (Context) ObjectWrapper.m38746B1(iObjectWrapper));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final String zzl() throws RemoteException {
        synchronized (this) {
            zzdrw zzdrwVar = this.zzd;
            if (zzdrwVar == null || zzdrwVar.zzm() == null) {
                return null;
            }
            return this.zzd.zzm().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzm(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("setUserId must be called on the main UI thread.");
            this.zzc.zza = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzn(zzbfr zzbfrVar) {
        Preconditions.m38902f("setAdMetadataListener can only be called from the UI thread.");
        if (zzbfrVar == null) {
            this.zzb.zze(null);
        } else {
            this.zzb.zze(new zzezv(this, zzbfrVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final Bundle zzo() {
        Preconditions.m38902f("getAdMetadata can only be called from the UI thread.");
        zzdrw zzdrwVar = this.zzd;
        return zzdrwVar != null ? zzdrwVar.zzg() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        Activity activity;
        synchronized (this) {
            Preconditions.m38902f("showAd must be called on the main UI thread.");
            if (this.zzd != null) {
                if (iObjectWrapper == null) {
                    activity = null;
                } else {
                    Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
                    activity = null;
                    if (m38746B1 instanceof Activity) {
                        activity = (Activity) m38746B1;
                    }
                }
                this.zzd.zza(this.zze, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzq(String str) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("#008 Must be called on the main UI thread.: setCustomData");
            this.zzc.zzb = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzr(boolean z) {
        synchronized (this) {
            Preconditions.m38902f("setImmersiveMode must be called on the main UI thread.");
            this.zze = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final boolean zzs() {
        zzdrw zzdrwVar = this.zzd;
        return zzdrwVar != null && zzdrwVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final zzbgz zzt() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfb)).booleanValue()) {
                return null;
            }
            zzdrw zzdrwVar = this.zzd;
            if (zzdrwVar == null) {
                return null;
            }
            return zzdrwVar.zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccc
    public final void zzu(zzcca zzccaVar) {
        Preconditions.m38902f("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzb.zzs(zzccaVar);
    }
}
