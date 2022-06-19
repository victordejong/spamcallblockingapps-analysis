package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtl.class */
public final class zzbtl implements BaseGmsClient.BaseOnConnectionFailedListener {
    public final /* synthetic */ zzcjr zza;

    public zzbtl(zzbtm zzbtmVar, zzcjr zzcjrVar) {
        this.zza = zzcjrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zza.zze(new RuntimeException("Connection failed."));
    }
}
