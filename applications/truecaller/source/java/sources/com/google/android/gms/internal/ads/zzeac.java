package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeac.class */
public final class zzeac extends zzeaa {
    public zzeac(Context context) {
        this.zzf = new zzcau(context, zzt.zzq().zza(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzeaa, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    this.zzf.zzp().zzf(this.zze, new zzdzz(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zza.zzd(new zzeap(1));
                }
            }
        }
    }
}
