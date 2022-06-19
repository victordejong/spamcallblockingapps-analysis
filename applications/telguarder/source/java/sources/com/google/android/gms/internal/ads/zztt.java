package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztt.class */
public final class zztt implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zztn zzbvu;
    private final /* synthetic */ zzbaa zzbwb;

    public zztt(zztn zztnVar, zzbaa zzbaaVar) {
        this.zzbvu = zztnVar;
        this.zzbwb = zzbaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzbvu.lock;
        synchronized (obj) {
            this.zzbwb.setException(new RuntimeException("Connection failed."));
        }
    }
}
