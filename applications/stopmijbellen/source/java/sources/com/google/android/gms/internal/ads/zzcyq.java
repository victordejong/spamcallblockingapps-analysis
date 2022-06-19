package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyq.class */
public final class zzcyq extends zzazs {
    private final zzcyp zza;
    private final zzbhk zzb;
    private final zzezj zzc;
    private boolean zzd = false;

    public zzcyq(zzcyp zzcypVar, zzbhk zzbhkVar, zzezj zzezjVar) {
        this.zza = zzcypVar;
        this.zzb = zzbhkVar;
        this.zzc = zzezjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final zzbhk zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final zzbiw zzf() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfi)).booleanValue()) {
            return null;
        }
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzg(boolean z) {
        this.zzd = z;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzh(zzbit zzbitVar) {
        Preconditions.checkMainThread("setOnPaidEventListener must be called on the main UI thread.");
        zzezj zzezjVar = this.zzc;
        if (zzezjVar != null) {
            zzezjVar.zzp(zzbitVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzi(IObjectWrapper iObjectWrapper, zzbaa zzbaaVar) {
        try {
            this.zzc.zzs(zzbaaVar);
            this.zza.zzd((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzbaaVar, this.zzd);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzj(zzazx zzazxVar) {
    }
}
