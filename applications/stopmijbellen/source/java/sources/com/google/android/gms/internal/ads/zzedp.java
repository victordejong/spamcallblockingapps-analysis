package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedp.class */
public final class zzedp extends zzedr {
    public zzedp(Context context) {
        this.zzf = new zzcdb(context, zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    this.zzf.zzp().zzg(this.zze, new zzedq(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zza.zze(new zzeeg(1));
                } catch (Throwable th) {
                    zzt.zzo().zzs(th, "RemoteAdRequestClientTask.onConnected");
                    this.zza.zze(new zzeeg(1));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedr, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzciz.zze("Cannot connect to remote service, fallback to local instance.");
        this.zza.zze(new zzeeg(1));
    }
}
