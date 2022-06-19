package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.zad;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaat.class */
final class zaat implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private final /* synthetic */ zaak zagj;

    private zaat(zaak zaakVar) {
        this.zagj = zaakVar;
    }

    public /* synthetic */ zaat(zaak zaakVar, zaal zaalVar) {
        this(zaakVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        ClientSettings clientSettings;
        zad zadVar;
        Lock lock;
        Lock lock2;
        zad zadVar2;
        zad zadVar3;
        clientSettings = this.zagj.zaet;
        if (!clientSettings.isSignInClientDisconnectFixEnabled()) {
            zadVar = this.zagj.zagb;
            zadVar.zaa(new zaar(this.zagj));
            return;
        }
        lock = this.zagj.zaeo;
        lock.lock();
        try {
            zadVar2 = this.zagj.zagb;
            if (zadVar2 == null) {
                return;
            }
            zadVar3 = this.zagj.zagb;
            zadVar3.zaa(new zaar(this.zagj));
        } finally {
            lock2 = this.zagj.zaeo;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean zad;
        lock = this.zagj.zaeo;
        lock.lock();
        try {
            zad = this.zagj.zad(connectionResult);
            if (zad) {
                this.zagj.zaar();
                this.zagj.zaap();
            } else {
                this.zagj.zae(connectionResult);
            }
        } finally {
            lock2 = this.zagj.zaeo;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
