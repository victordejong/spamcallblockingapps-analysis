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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfmo.class */
final class zzfmo implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    public final zzfno zza;
    private final String zzb;
    private final String zzc;
    private final LinkedBlockingQueue<zzajp> zzd = new LinkedBlockingQueue<>();
    private final HandlerThread zze;

    public zzfmo(Context context, String str, String str2) {
        this.zzb = str;
        this.zzc = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.zze = handlerThread;
        handlerThread.start();
        zzfno zzfnoVar = new zzfno(context, handlerThread.getLooper(), this, this, 9200000);
        this.zza = zzfnoVar;
        zzfnoVar.checkAvailabilityAndConnect();
    }

    @VisibleForTesting
    public static zzajp zza() {
        zzaiz zza = zzajp.zza();
        zza.zzz(32768L);
        return zza.zzah();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfnt zzd = zzd();
        if (zzd != null) {
            try {
                this.zzd.put(zzd.zze(new zzfnp(this.zzb, this.zzc)).zza());
            } catch (Throwable th) {
                try {
                    this.zzd.put(zza());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    zzc();
                    this.zze.quit();
                    throw th2;
                }
            }
            zzc();
            this.zze.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzd.put(zza());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.zzd.put(zza());
        } catch (InterruptedException e) {
        }
    }

    public final zzajp zzb(int i) {
        zzajp zzajpVar;
        try {
            zzajpVar = this.zzd.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzajpVar = null;
        }
        zzajp zzajpVar2 = zzajpVar;
        if (zzajpVar == null) {
            zzajpVar2 = zza();
        }
        return zzajpVar2;
    }

    public final void zzc() {
        zzfno zzfnoVar = this.zza;
        if (zzfnoVar != null) {
            if (!zzfnoVar.isConnected() && !this.zza.isConnecting()) {
                return;
            }
            this.zza.disconnect();
        }
    }

    public final zzfnt zzd() {
        try {
            return this.zza.zzp();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }
}
