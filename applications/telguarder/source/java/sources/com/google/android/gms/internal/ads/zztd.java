package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztd.class */
public final class zztd implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ zzsz zzbvc;

    public zztd(zzsz zzszVar) {
        this.zzbvc = zzszVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zzte zzteVar;
        Object obj2;
        obj = this.zzbvc.lock;
        synchronized (obj) {
            this.zzbvc.zzbvf = null;
            zzteVar = this.zzbvc.zzbve;
            if (zzteVar != null) {
                this.zzbvc.zzbve = null;
            }
            obj2 = this.zzbvc.lock;
            obj2.notifyAll();
        }
    }
}
