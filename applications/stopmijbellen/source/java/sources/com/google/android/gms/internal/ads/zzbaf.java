package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbaf.class */
public final class zzbaf implements BaseGmsClient.BaseOnConnectionFailedListener {
    public final /* synthetic */ zzbag zza;

    public zzbaf(zzbag zzbagVar) {
        this.zza = zzbagVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zzbaj zzbajVar;
        Object obj2;
        obj = this.zza.zzb;
        synchronized (obj) {
            this.zza.zze = null;
            zzbajVar = this.zza.zzc;
            if (zzbajVar != null) {
                this.zza.zzc = null;
            }
            obj2 = this.zza.zzb;
            obj2.notifyAll();
        }
    }
}
