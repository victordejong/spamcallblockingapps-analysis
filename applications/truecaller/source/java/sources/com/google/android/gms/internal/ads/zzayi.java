package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayi.class */
public final class zzayi implements BaseGmsClient.BaseOnConnectionFailedListener {
    public final /* synthetic */ zzayj zza;

    public zzayi(zzayj zzayjVar) {
        this.zza = zzayjVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zzaym zzaymVar;
        Object obj2;
        obj = this.zza.zzb;
        synchronized (obj) {
            this.zza.zze = null;
            zzaymVar = this.zza.zzc;
            if (zzaymVar != null) {
                this.zza.zzc = null;
            }
            obj2 = this.zza.zzb;
            obj2.notifyAll();
        }
    }
}
