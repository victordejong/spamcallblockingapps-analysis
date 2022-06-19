package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzbw;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtj.class */
final class zzdtj implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final HandlerThread zzegn;
    private zzduh zzhsr;
    private final String zzhsu;
    private final String zzhsv;
    private final zzdsy zzvs;
    private final zzgp zzvu;
    private final int zzhsw = 1;
    private final long startTime = System.currentTimeMillis();
    private final LinkedBlockingQueue<zzduw> zzhst = new LinkedBlockingQueue<>();

    public zzdtj(Context context, int i, zzgp zzgpVar, String str, String str2, String str3, zzdsy zzdsyVar) {
        this.zzhsu = str;
        this.zzvu = zzgpVar;
        this.zzhsv = str2;
        this.zzvs = zzdsyVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zzegn = handlerThread;
        handlerThread.start();
        this.zzhsr = new zzduh(context, handlerThread.getLooper(), this, this, 19621000);
        this.zzhsr.checkAvailabilityAndConnect();
    }

    private final void zzarp() {
        zzduh zzduhVar = this.zzhsr;
        if (zzduhVar != null) {
            if (!zzduhVar.isConnected() && !this.zzhsr.isConnecting()) {
                return;
            }
            this.zzhsr.disconnect();
        }
    }

    private final zzduo zzaxs() {
        try {
            return this.zzhsr.zzayh();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    private static zzduw zzaxu() {
        return new zzduw(null, 1);
    }

    private final void zzb(int i, long j, Exception exc) {
        zzdsy zzdsyVar = this.zzvs;
        if (zzdsyVar != null) {
            zzdsyVar.zza(i, System.currentTimeMillis() - j, exc);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzduo zzaxs = zzaxs();
        if (zzaxs != null) {
            try {
                zzduw zza = zzaxs.zza(new zzduu(this.zzhsw, this.zzvu, this.zzhsu, this.zzhsv));
                zzb(5011, this.startTime, null);
                this.zzhst.put(zza);
            } catch (Throwable th) {
                try {
                    zzb(2010, this.startTime, new Exception(th));
                } finally {
                    zzarp();
                    this.zzegn.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zzb(4012, this.startTime, null);
            this.zzhst.put(zzaxu());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            zzb(4011, this.startTime, null);
            this.zzhst.put(zzaxu());
        } catch (InterruptedException e) {
        }
    }

    public final zzduw zzeg(int i) {
        zzduw zzduwVar;
        try {
            zzduwVar = this.zzhst.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzb(AdError.INTERSTITIAL_AD_TIMEOUT, this.startTime, e);
            zzduwVar = null;
        }
        zzb(3004, this.startTime, null);
        if (zzduwVar != null) {
            if (zzduwVar.status == 7) {
                zzdsy.zza(zzbw.zza.zzc.DISABLED);
            } else {
                zzdsy.zza(zzbw.zza.zzc.ENABLED);
            }
        }
        return zzduwVar == null ? zzaxu() : zzduwVar;
    }
}
