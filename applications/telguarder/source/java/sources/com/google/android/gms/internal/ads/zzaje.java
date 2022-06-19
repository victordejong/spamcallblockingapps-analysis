package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaje.class */
public final class zzaje implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzbaa zzbwb;

    public zzaje(zzajb zzajbVar, zzbaa zzbaaVar) {
        this.zzbwb = zzbaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzbwb.setException(new RuntimeException("Connection failed."));
    }
}
