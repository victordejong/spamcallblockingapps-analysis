package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.zae;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaap.class */
final class zaap implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final /* synthetic */ zaar zaa;

    public /* synthetic */ zaap(zaar zaarVar, zaah zaahVar) {
        this.zaa = zaarVar;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        ClientSettings clientSettings;
        zae zaeVar;
        clientSettings = this.zaa.zar;
        ClientSettings clientSettings2 = (ClientSettings) Preconditions.checkNotNull(clientSettings);
        zaeVar = this.zaa.zak;
        ((zae) Preconditions.checkNotNull(zaeVar)).zaa(new zaao(this.zaa));
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean zaE;
        lock = this.zaa.zab;
        lock.lock();
        try {
            zaE = this.zaa.zaE(connectionResult);
            if (zaE) {
                this.zaa.zaD();
                this.zaa.zaA();
            } else {
                this.zaa.zaF(connectionResult);
            }
        } finally {
            lock2 = this.zaa.zab;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
