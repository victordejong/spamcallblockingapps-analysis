package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtl.class */
public final class zzdtl implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final Object lock = new Object();
    private boolean zzgoo = false;
    private boolean zzgop = false;
    private final zzduh zzhsx;
    private final zzdua zzhsy;

    public zzdtl(Context context, Looper looper, zzdua zzduaVar) {
        this.zzhsy = zzduaVar;
        this.zzhsx = new zzduh(context, looper, this, this, 12800000);
    }

    private final void zzarp() {
        synchronized (this.lock) {
            if (this.zzhsx.isConnected() || this.zzhsx.isConnecting()) {
                this.zzhsx.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.lock) {
            if (this.zzgop) {
                return;
            }
            this.zzgop = true;
            try {
                this.zzhsx.zzayh().zza(new zzduf(this.zzhsy.toByteArray()));
                zzarp();
            } catch (Exception e) {
                zzarp();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }

    public final void zzaxv() {
        synchronized (this.lock) {
            if (!this.zzgoo) {
                this.zzgoo = true;
                this.zzhsx.checkAvailabilityAndConnect();
            }
        }
    }
}
