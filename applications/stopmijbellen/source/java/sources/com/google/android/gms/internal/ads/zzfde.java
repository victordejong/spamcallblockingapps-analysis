package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfde.class */
public final class zzfde extends zzcey {
    private final zzfda zza;
    private final zzfcq zzb;
    private final String zzc;
    private final zzfea zzd;
    private final Context zze;
    @GuardedBy("this")
    private zzdvn zzf;
    @GuardedBy("this")
    private boolean zzg = ((Boolean) zzbgq.zzc().zzb(zzblj.zzaw)).booleanValue();

    public zzfde(String str, zzfda zzfdaVar, Context context, zzfcq zzfcqVar, zzfea zzfeaVar) {
        this.zzc = str;
        this.zza = zzfdaVar;
        this.zzb = zzfcqVar;
        this.zzd = zzfeaVar;
        this.zze = context;
    }

    private final void zzt(zzbfd zzbfdVar, zzcfg zzcfgVar, int i) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            this.zzb.zze(zzcfgVar);
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzL(this.zze) && zzbfdVar.zzs == null) {
                zzciz.zzg("Failed to load the ad because app ID is missing.");
                this.zzb.zza(zzfey.zzd(4, null, null));
                return;
            }
            if (this.zzf != null) {
                return;
            }
            zzfcs zzfcsVar = new zzfcs(null);
            this.zza.zzj(i);
            this.zza.zzb(zzbfdVar, this.zzc, zzfcsVar, new zzfdd(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final Bundle zzb() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvn zzdvnVar = this.zzf;
        return zzdvnVar != null ? zzdvnVar.zza() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzbiw zzc() {
        zzdvn zzdvnVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue() && (zzdvnVar = this.zzf) != null) {
            return zzdvnVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final zzcew zzd() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvn zzdvnVar = this.zzf;
        if (zzdvnVar != null) {
            return zzdvnVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final String zze() throws RemoteException {
        synchronized (this) {
            zzdvn zzdvnVar = this.zzf;
            if (zzdvnVar == null || zzdvnVar.zzl() == null) {
                return null;
            }
            return this.zzf.zzl().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzf(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        synchronized (this) {
            zzt(zzbfdVar, zzcfgVar, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzg(zzbfd zzbfdVar, zzcfg zzcfgVar) throws RemoteException {
        synchronized (this) {
            zzt(zzbfdVar, zzcfgVar, 3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzh(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zzg = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzi(zzbiq zzbiqVar) {
        if (zzbiqVar == null) {
            this.zzb.zzb(null);
        } else {
            this.zzb.zzb(new zzfdc(this, zzbiqVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzj(zzbit zzbitVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        this.zzb.zzc(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzk(zzcfc zzcfcVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzd(zzcfcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzl(zzcfn zzcfnVar) {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            zzfea zzfeaVar = this.zzd;
            zzfeaVar.zza = zzcfnVar.zza;
            zzfeaVar.zzb = zzcfnVar.zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzn(iObjectWrapper, this.zzg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            if (this.zzf == null) {
                zzciz.zzj("Rewarded can not be shown before loaded");
                this.zzb.zzk(zzfey.zzd(9, null, null));
                return;
            }
            this.zzf.zzg(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final boolean zzo() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzdvn zzdvnVar = this.zzf;
        return zzdvnVar != null && !zzdvnVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcez
    public final void zzp(zzcfh zzcfhVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzb.zzi(zzcfhVar);
    }
}
