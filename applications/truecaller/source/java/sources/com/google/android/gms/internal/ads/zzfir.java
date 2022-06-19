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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfir.class */
public final class zzfir implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting
    public final zzfjp zza;
    private final String zzb;
    private final String zzc;
    private final HandlerThread zze;
    private final zzfii zzf;
    private final int zzh;
    private final long zzg = System.currentTimeMillis();
    private final LinkedBlockingQueue<zzfkb> zzd = new LinkedBlockingQueue<>();

    public zzfir(Context context, int i, int i2, String str, String str2, String str3, zzfii zzfiiVar) {
        this.zzb = str;
        this.zzh = i2;
        this.zzc = str2;
        this.zzf = zzfiiVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zze = handlerThread;
        handlerThread.start();
        zzfjp zzfjpVar = new zzfjp(context, handlerThread.getLooper(), this, this, 19621000);
        this.zza = zzfjpVar;
        zzfjpVar.checkAvailabilityAndConnect();
    }

    @VisibleForTesting
    public static zzfkb zzc() {
        return new zzfkb(null, 1);
    }

    private final void zze(int i, long j, Exception exc) {
        this.zzf.zzc(i, System.currentTimeMillis() - j, exc);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfju zzd = zzd();
        if (zzd != null) {
            try {
                zzfkb zzg = zzd.zzg(new zzfjz(1, this.zzh, this.zzb, this.zzc));
                zze(5011, this.zzg, null);
                this.zzd.put(zzg);
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
            this.zzd.put(zzc());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            zze(4011, this.zzg, null);
            this.zzd.put(zzc());
        } catch (InterruptedException e) {
        }
    }

    public final zzfkb zza(int i) {
        zzfkb zzfkbVar;
        try {
            zzfkbVar = this.zzd.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zze(AdError.INTERSTITIAL_AD_TIMEOUT, this.zzg, e);
            zzfkbVar = null;
        }
        zze(3004, this.zzg, null);
        if (zzfkbVar != null) {
            if (zzfkbVar.zzc == 7) {
                zzfii.zzg(3);
            } else {
                zzfii.zzg(2);
            }
        }
        return zzfkbVar == null ? zzc() : zzfkbVar;
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
