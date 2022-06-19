package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfmq.class */
final class zzfmq implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    public final zzfno zza;
    private final String zzb;
    private final String zzc;
    private final HandlerThread zze;
    private final zzfmh zzf;
    private final int zzh;
    private final long zzg = System.currentTimeMillis();
    private final LinkedBlockingQueue<zzfoa> zzd = new LinkedBlockingQueue<>();

    public zzfmq(Context context, int i, int i2, String str, String str2, String str3, zzfmh zzfmhVar) {
        this.zzb = str;
        this.zzh = i2;
        this.zzc = str2;
        this.zzf = zzfmhVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        zzfno zzfnoVar = new zzfno(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzfnoVar;
        zzfnoVar.checkAvailabilityAndConnect();
    }

    @VisibleForTesting
    public static zzfoa zza() {
        return new zzfoa(null, 1);
    }

    private final void zze(int i, long j, Exception exc) {
        this.zzf.zzc(i, System.currentTimeMillis() - j, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfnt zzd = zzd();
        if (zzd != null) {
            try {
                zzfoa zzf = zzd.zzf(new zzfny(1, this.zzh, this.zzb, this.zzc));
                zze(5011, this.zzg, null);
                this.zzd.put(zzf);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zze(4012, this.zzg, null);
            this.zzd.put(zza());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            zze(4011, this.zzg, null);
            this.zzd.put(zza());
        } catch (InterruptedException e) {
        }
    }

    public final zzfoa zzb(int i) {
        zzfoa zzfoaVar;
        try {
            zzfoaVar = this.zzd.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zze(AdError.INTERSTITIAL_AD_TIMEOUT, this.zzg, e);
            zzfoaVar = null;
        }
        zze(3004, this.zzg, null);
        if (zzfoaVar != null) {
            if (zzfoaVar.zzc == 7) {
                zzfmh.zzg(3);
            } else {
                zzfmh.zzg(2);
            }
        }
        return zzfoaVar == null ? zza() : zzfoaVar;
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
