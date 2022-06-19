package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezq.class */
public final class zzezq extends zzccr {
    private final zzezm zza;
    private final zzezc zzb;
    private final String zzc;
    private final zzfam zzd;
    private final Context zze;
    private zzdrw zzf;
    private boolean zzg = ((Boolean) zzbet.zzc().zzc(zzbjl.zzat)).booleanValue();

    public zzezq(String str, zzezm zzezmVar, Context context, zzezc zzezcVar, zzfam zzfamVar) {
        this.zzc = str;
        this.zza = zzezmVar;
        this.zzb = zzezcVar;
        this.zzd = zzfamVar;
        this.zze = context;
    }

    private final void zzt(zzbdg zzbdgVar, zzccz zzcczVar, int i) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("#008 Must be called on the main UI thread.");
            this.zzb.zzc(zzcczVar);
            zzt.zzc();
            if (zzs.zzK(this.zze) && zzbdgVar.zzs == null) {
                zzcgt.zzf("Failed to load the ad because app ID is missing.");
                this.zzb.zzbD(zzfbm.zzd(4, null, null));
                return;
            }
            if (this.zzf != null) {
                return;
            }
            zzeze zzezeVar = new zzeze(null);
            this.zza.zzi(i);
            this.zza.zza(zzbdgVar, this.zzc, zzezeVar, new zzezp(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzk(iObjectWrapper, this.zzg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzc(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        synchronized (this) {
            zzt(zzbdgVar, zzcczVar, 2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzd(zzbdg zzbdgVar, zzccz zzcczVar) throws RemoteException {
        synchronized (this) {
            zzt(zzbdgVar, zzcczVar, 3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zze(zzccv zzccvVar) {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        this.zzb.zzd(zzccvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzf(zzbgt zzbgtVar) {
        if (zzbgtVar == null) {
            this.zzb.zze(null);
        } else {
            this.zzb.zze(new zzezo(this, zzbgtVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final Bundle zzg() {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        zzdrw zzdrwVar = this.zzf;
        return zzdrwVar != null ? zzdrwVar.zzg() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzh(zzcdg zzcdgVar) {
        synchronized (this) {
            Preconditions.m38902f("#008 Must be called on the main UI thread.");
            zzfam zzfamVar = this.zzd;
            zzfamVar.zza = zzcdgVar.zza;
            zzfamVar.zzb = zzcdgVar.zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final boolean zzi() {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        zzdrw zzdrwVar = this.zzf;
        return zzdrwVar != null && !zzdrwVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final String zzj() throws RemoteException {
        synchronized (this) {
            zzdrw zzdrwVar = this.zzf;
            if (zzdrwVar == null || zzdrwVar.zzm() == null) {
                return null;
            }
            return this.zzf.zzm().zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzk(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("#008 Must be called on the main UI thread.");
            if (this.zzf == null) {
                zzcgt.zzi("Rewarded can not be shown before loaded");
                this.zzb.zzn(zzfbm.zzd(9, null, null));
                return;
            }
            this.zzf.zza(z, (Activity) ObjectWrapper.m38746B1(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzccp zzl() {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        zzdrw zzdrwVar = this.zzf;
        if (zzdrwVar != null) {
            return zzdrwVar.zzc();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final zzbgz zzm() {
        zzdrw zzdrwVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfb)).booleanValue() && (zzdrwVar = this.zzf) != null) {
            return zzdrwVar.zzm();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzn(zzbgw zzbgwVar) {
        Preconditions.m38902f("setOnPaidEventListener must be called on the main UI thread.");
        this.zzb.zzg(zzbgwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzo(boolean z) {
        synchronized (this) {
            Preconditions.m38902f("setImmersiveMode must be called on the main UI thread.");
            this.zzg = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzp(zzcda zzcdaVar) {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        this.zzb.zzr(zzcdaVar);
    }
}
