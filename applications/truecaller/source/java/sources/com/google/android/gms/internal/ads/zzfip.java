package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfip.class */
public final class zzfip implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    public final zzfjp zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue<zzyz> zzd = new LinkedBlockingQueue<>();
    private final HandlerThread zze;

    public zzfip(Context context, String str, String str2) {
        this.zzb = str;
        this.zzc = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.zze = handlerThread;
        handlerThread.start();
        zzfjp zzfjpVar = new zzfjp(context, handlerThread.getLooper(), this, this, 9200000);
        this.zza = zzfjpVar;
        zzfjpVar.checkAvailabilityAndConnect();
    }

    @VisibleForTesting
    public static zzyz zzc() {
        zzyj zzi = zzyz.zzi();
        zzi.zzl(32768L);
        return zzi.zzah();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfju zzd = zzd();
        if (zzd != null) {
            try {
                this.zzd.put(zzd.zze(new zzfjq(this.zzb, this.zzc)).zza());
            } catch (Throwable th) {
                try {
                    this.zzd.put(zzc());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    zzb();
                    this.zze.quit();
                    throw th2;
                }
            }
            zzb();
            this.zze.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzd.put(zzc());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.zzd.put(zzc());
        } catch (InterruptedException e) {
        }
    }

    public final zzyz zza(int i) {
        zzyz zzyzVar;
        try {
            zzyzVar = this.zzd.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzyzVar = null;
        }
        zzyz zzyzVar2 = zzyzVar;
        if (zzyzVar == null) {
            zzyzVar2 = zzc();
        }
        return zzyzVar2;
    }

    public final void zzb() {
        zzfjp zzfjpVar = this.zza;
        if (zzfjpVar != null) {
            if (!zzfjpVar.isConnected() && !this.zza.isConnecting()) {
                return;
            }
            this.zza.disconnect();
        }
    }

    public final zzfju zzd() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }
}
