package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedt.class */
public final class zzedt extends zzedr {
    public zzedt(Context context) {
        this.zzf = new zzcdb(context, zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    this.zzf.zzp().zzf(this.zze, new zzedq(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zza.zze(new zzeeg(1));
                }
            }
        }
    }
}
