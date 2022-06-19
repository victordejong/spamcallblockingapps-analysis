package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.p001v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzcf;
import com.telguarder.ApplicationConstants;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdth.class */
public final class zzdth implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final String packageName;
    private final HandlerThread zzegn;
    private zzduh zzhsr;
    private final String zzhss;
    private final LinkedBlockingQueue<zzcf.zza> zzhst = new LinkedBlockingQueue<>();

    public zzdth(Context context, String str, String str2) {
        this.packageName = str;
        this.zzhss = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.zzegn = handlerThread;
        handlerThread.start();
        this.zzhsr = new zzduh(context, handlerThread.getLooper(), this, this, 9200000);
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

    private static zzcf.zza zzaxt() {
        return (zzcf.zza) ((zzelb) zzcf.zza.zzap().zzau(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID).zzbiw());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzduo zzaxs = zzaxs();
        if (zzaxs != null) {
            try {
                this.zzhst.put(zzaxs.zza(new zzduk(this.packageName, this.zzhss)).zzayi());
                zzarp();
                this.zzegn.quit();
            } catch (Throwable th) {
                try {
                    this.zzhst.put(zzaxt());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    zzarp();
                    this.zzegn.quit();
                    throw th2;
                }
                zzarp();
                this.zzegn.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzhst.put(zzaxt());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.zzhst.put(zzaxt());
        } catch (InterruptedException e) {
        }
    }

    public final zzcf.zza zzef(int i) {
        zzcf.zza zzaVar;
        try {
            zzaVar = this.zzhst.poll(ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzaVar = null;
        }
        zzcf.zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = zzaxt();
        }
        return zzaVar2;
    }
}
