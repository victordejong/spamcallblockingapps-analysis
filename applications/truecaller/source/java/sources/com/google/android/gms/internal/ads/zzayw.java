package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayw.class */
public final class zzayw implements BaseGmsClient.BaseOnConnectionFailedListener {
    public final /* synthetic */ zzchl zza;
    public final /* synthetic */ zzayx zzb;

    public zzayw(zzayx zzayxVar, zzchl zzchlVar) {
        this.zzb = zzayxVar;
        this.zza = zzchlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzb.zzd;
        synchronized (obj) {
            this.zza.zzd(new RuntimeException("Connection failed."));
        }
    }
}
