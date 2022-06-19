package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbat.class */
public final class zzbat implements BaseGmsClient.BaseOnConnectionFailedListener {
    public final /* synthetic */ zzcjr zza;
    public final /* synthetic */ zzbau zzb;

    public zzbat(zzbau zzbauVar, zzcjr zzcjrVar) {
        this.zzb = zzbauVar;
        this.zza = zzcjrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zze(new RuntimeException("Connection failed."));
        }
    }
}
