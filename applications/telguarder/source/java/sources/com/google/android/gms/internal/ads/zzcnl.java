package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnl.class */
public abstract class zzcnl implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    protected zzatq zzgoq;
    protected zzasy zzgor;
    protected final zzbaa<InputStream> zzdlg = new zzbaa<>();
    protected final Object mLock = new Object();
    protected boolean zzgoo = false;
    protected boolean zzgop = false;

    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzd.zzdy("Disconnected from remote ad request service.");
        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzd.zzdy("Cannot connect to remote service, fallback to local instance.");
    }

    public final void zzarp() {
        synchronized (this.mLock) {
            this.zzgop = true;
            if (this.zzgor.isConnected() || this.zzgor.isConnecting()) {
                this.zzgor.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }
}
