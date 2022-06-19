package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmk.class */
public final class zzdmk extends zzavp {
    private final String zzbut;
    private final zzdnk zzfyy;
    private final Context zzgxt;
    private boolean zzgyo = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcox)).booleanValue();
    private final zzdmc zzhip;
    private final zzdlh zzhiq;
    private zzchb zzhir;

    public zzdmk(String str, zzdmc zzdmcVar, Context context, zzdlh zzdlhVar, zzdnk zzdnkVar) {
        this.zzbut = str;
        this.zzhip = zzdmcVar;
        this.zzhiq = zzdlhVar;
        this.zzfyy = zzdnkVar;
        this.zzgxt = context;
    }

    private final void zza(zzvl zzvlVar, zzavu zzavuVar, int i) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            this.zzhiq.zzb(zzavuVar);
            zzr.zzkr();
            if (zzj.zzaz(this.zzgxt) && zzvlVar.zzcia == null) {
                zzd.zzev("Failed to load the ad because app ID is missing.");
                this.zzhiq.zzc(zzdok.zza(zzdom.APP_ID_MISSING, null, null));
            } else if (this.zzhir != null) {
            } else {
                zzdmd zzdmdVar = new zzdmd(null);
                this.zzhip.zzec(i);
                this.zzhip.zza(zzvlVar, this.zzbut, zzdmdVar, new zzdmm(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final Bundle getAdMetadata() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzchb zzchbVar = this.zzhir;
        return zzchbVar != null ? zzchbVar.getAdMetadata() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final String getMediationAdapterClassName() throws RemoteException {
        synchronized (this) {
            zzchb zzchbVar = this.zzhir;
            if (zzchbVar == null || zzchbVar.zzakr() == null) {
                return null;
            }
            return this.zzhir.zzakr().getMediationAdapterClassName();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final boolean isLoaded() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzchb zzchbVar = this.zzhir;
        return zzchbVar != null && !zzchbVar.isUsed();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void setImmersiveMode(boolean z) {
        synchronized (this) {
            Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
            this.zzgyo = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            if (this.zzhir == null) {
                zzd.zzex("Rewarded can not be shown before loaded");
                this.zzhiq.zzk(zzdok.zza(zzdom.NOT_READY, null, null));
                return;
            }
            this.zzhir.zzb(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavr zzavrVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzhiq.zzb(zzavrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavz zzavzVar) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        this.zzhiq.zzb(zzavzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzawh zzawhVar) {
        synchronized (this) {
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            zzdnk zzdnkVar = this.zzfyy;
            zzdnkVar.zzdzh = zzawhVar.zzdzh;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpk)).booleanValue()) {
                zzdnkVar.zzdzi = zzawhVar.zzdzi;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzvl zzvlVar, zzavu zzavuVar) throws RemoteException {
        synchronized (this) {
            zza(zzvlVar, zzavuVar, zzdnh.zzhkl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyr zzyrVar) {
        if (zzyrVar == null) {
            this.zzhiq.zza(null);
        } else {
            this.zzhiq.zza(new zzdmn(this, zzyrVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyw zzywVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        this.zzhiq.zzd(zzywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zzb(zzvl zzvlVar, zzavu zzavuVar) throws RemoteException {
        synchronized (this) {
            zza(zzvlVar, zzavuVar, zzdnh.zzhkm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zza(iObjectWrapper, this.zzgyo);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzyx zzki() {
        zzchb zzchbVar;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue() && (zzchbVar = this.zzhir) != null) {
            return zzchbVar.zzakr();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzavl zzrv() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzchb zzchbVar = this.zzhir;
        if (zzchbVar != null) {
            return zzchbVar.zzrv();
        }
        return null;
    }
}
