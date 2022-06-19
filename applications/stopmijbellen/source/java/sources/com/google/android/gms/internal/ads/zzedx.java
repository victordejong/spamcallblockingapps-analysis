package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedx.class */
public final class zzedx extends zzedr {
    private String zzg;
    private int zzh = 1;

    public zzedx(Context context) {
        this.zzf = new zzcdb(context, zzt.zzt().zzb(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    int i = this.zzh;
                    if (i == 2) {
                        this.zzf.zzp().zze(this.zze, new zzedq(this));
                    } else if (i == 3) {
                        this.zzf.zzp().zzh(this.zzg, new zzedq(this));
                    } else {
                        this.zza.zze(new zzeeg(1));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zza.zze(new zzeeg(1));
                } catch (Throwable th) {
                    zzt.zzo().zzs(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
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

    public final zzfxa<InputStream> zzb(zzcdq zzcdqVar) {
        synchronized (this.zzb) {
            int i = this.zzh;
            if (i != 1 && i != 2) {
                return zzfwq.zzh(new zzeeg(2));
            } else if (this.zzc) {
                return this.zza;
            } else {
                this.zzh = 2;
                this.zzc = true;
                this.zze = zzcdqVar;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedv
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzedx.this.zza();
                    }
                }, zzcjm.zzf);
                return this.zza;
            }
        }
    }

    public final zzfxa<InputStream> zzc(String str) {
        synchronized (this.zzb) {
            int i = this.zzh;
            if (i != 1 && i != 3) {
                return zzfwq.zzh(new zzeeg(2));
            } else if (this.zzc) {
                return this.zza;
            } else {
                this.zzh = 3;
                this.zzc = true;
                this.zzg = str;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedw
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzedx.this.zza();
                    }
                }, zzcjm.zzf);
                return this.zza;
            }
        }
    }
}
