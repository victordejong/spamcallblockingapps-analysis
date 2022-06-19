package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeag.class */
public final class zzeag extends zzeaa {
    private String zzg;
    private int zzh = 1;

    public zzeag(Context context) {
        this.zzf = new zzcau(context, zzt.zzq().zza(), this, this);
    }

    @Override // com.google.android.gms.internal.ads.zzeaa, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzb) {
            if (!this.zzd) {
                this.zzd = true;
                try {
                    int i = this.zzh;
                    if (i == 2) {
                        this.zzf.zzp().zzg(this.zze, new zzdzz(this));
                    } else if (i == 3) {
                        this.zzf.zzp().zzh(this.zzg, new zzdzz(this));
                    } else {
                        this.zza.zzd(new zzeap(1));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zza.zzd(new zzeap(1));
                } catch (Throwable th) {
                    zzt.zzg().zzk(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.zza.zzd(new zzeap(1));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaa, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzcgt.zzd("Cannot connect to remote service, fallback to local instance.");
        this.zza.zzd(new zzeap(1));
    }

    public final zzfsm<InputStream> zzb(zzcbj zzcbjVar) {
        synchronized (this.zzb) {
            int i = this.zzh;
            if (i != 1 && i != 2) {
                return zzfsd.zzc(new zzeap(2));
            } else if (this.zzc) {
                return this.zza;
            } else {
                this.zzh = 2;
                this.zzc = true;
                this.zze = zzcbjVar;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.zze(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzeae
                    private final zzeag zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zza();
                    }
                }, zzchg.zzf);
                return this.zza;
            }
        }
    }

    public final zzfsm<InputStream> zzc(String str) {
        synchronized (this.zzb) {
            int i = this.zzh;
            if (i != 1 && i != 3) {
                return zzfsd.zzc(new zzeap(2));
            } else if (this.zzc) {
                return this.zza;
            } else {
                this.zzh = 3;
                this.zzc = true;
                this.zzg = str;
                this.zzf.checkAvailabilityAndConnect();
                this.zza.zze(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzeaf
                    private final zzeag zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zza();
                    }
                }, zzchg.zzf);
                return this.zza;
            }
        }
    }
}
