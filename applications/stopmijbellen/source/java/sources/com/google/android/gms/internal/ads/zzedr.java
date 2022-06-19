package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedr.class */
public abstract class zzedr implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    public final zzcjr<InputStream> zza = new zzcjr<>();
    public final Object zzb = new Object();
    public boolean zzc = false;
    public boolean zzd = false;
    public zzcdq zze;
    public zzcdb zzf;

    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzciz.zze("Disconnected from remote ad request service.");
        this.zza.zze(new zzeeg(1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzciz.zze("Cannot connect to remote service, fallback to local instance.");
    }

    public final void zza() {
        synchronized (this.zzb) {
            this.zzd = true;
            if (this.zzf.isConnected() || this.zzf.isConnecting()) {
                this.zzf.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }
}
