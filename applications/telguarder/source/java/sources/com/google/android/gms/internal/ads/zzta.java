package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzta.class */
public final class zzta implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzsz zzbvc;

    public zzta(zzsz zzszVar) {
        this.zzbvc = zzszVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zzte zzteVar;
        zzte zzteVar2;
        obj = this.zzbvc.lock;
        synchronized (obj) {
            try {
                zzteVar = this.zzbvc.zzbve;
                if (zzteVar != null) {
                    zzsz zzszVar = this.zzbvc;
                    zzteVar2 = zzszVar.zzbve;
                    zzszVar.zzbvf = zzteVar2.zznd();
                }
            } catch (DeadObjectException e) {
                zzd.zzc("Unable to obtain a cache service instance.", e);
                this.zzbvc.disconnect();
            }
            obj2 = this.zzbvc.lock;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zzbvc.lock;
        synchronized (obj) {
            this.zzbvc.zzbvf = null;
            obj2 = this.zzbvc.lock;
            obj2.notifyAll();
        }
    }
}
