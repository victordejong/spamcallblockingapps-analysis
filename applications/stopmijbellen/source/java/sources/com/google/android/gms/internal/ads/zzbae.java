package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbae.class */
public final class zzbae implements BaseGmsClient.BaseConnectionCallbacks {
    public final /* synthetic */ zzbag zza;

    public zzbae(zzbag zzbagVar) {
        this.zza = zzbagVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zzbaj zzbajVar;
        zzbaj zzbajVar2;
        obj = this.zza.zzb;
        synchronized (obj) {
            try {
                zzbajVar = this.zza.zzc;
                if (zzbajVar != null) {
                    zzbag zzbagVar = this.zza;
                    zzbajVar2 = zzbagVar.zzc;
                    zzbagVar.zze = zzbajVar2.zzq();
                }
            } catch (DeadObjectException e) {
                zzciz.zzh("Unable to obtain a cache service instance.", e);
                zzbag.zzh(this.zza);
            }
            obj2 = this.zza.zzb;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zza.zzb;
        synchronized (obj) {
            this.zza.zze = null;
            obj2 = this.zza.zzb;
            obj2.notifyAll();
        }
    }
}
