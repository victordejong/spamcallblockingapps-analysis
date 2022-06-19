package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblp.class */
public final class zzblp extends zzsn {
    private boolean zzbpk = false;
    private final zzxl zzbuz;
    private final zzblq zzfug;
    private final zzdil zzfuh;

    public zzblp(zzblq zzblqVar, zzxl zzxlVar, zzdil zzdilVar) {
        this.zzfug = zzblqVar;
        this.zzbuz = zzxlVar;
        this.zzfuh = zzdilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void setImmersiveMode(boolean z) {
        this.zzbpk = z;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(IObjectWrapper iObjectWrapper, zzsv zzsvVar) {
        try {
            this.zzfuh.zza(zzsvVar);
            this.zzfug.zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzsvVar, this.zzbpk);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final void zza(zzsq zzsqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzxl zzdx() {
        return this.zzbuz;
    }

    @Override // com.google.android.gms.internal.ads.zzsk
    public final zzyx zzki() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyy)).booleanValue()) {
            return null;
        }
        return this.zzfug.zzakr();
    }
}
