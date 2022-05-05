package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabo.class */
final class zabo implements Runnable {
    private final /* synthetic */ ConnectionResult zaiy;
    private final /* synthetic */ GoogleApiManager.zac zajf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabo(GoogleApiManager.zac zacVar, ConnectionResult connectionResult) {
        this.zajf = zacVar;
        this.zaiy = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zai zaiVar;
        Api.Client client;
        zai zaiVar2;
        Api.Client client2;
        if (this.zaiy.isSuccess()) {
            this.zajf.zaje = true;
            client = this.zajf.zain;
            if (client.requiresSignIn()) {
                this.zajf.zabr();
                return;
            }
            try {
                client2 = this.zajf.zain;
                client2.getRemoteService(null, Collections.emptySet());
            } catch (SecurityException e) {
                Map map = GoogleApiManager.this.zaih;
                zaiVar2 = this.zajf.zafp;
                ((GoogleApiManager.zaa) map.get(zaiVar2)).onConnectionFailed(new ConnectionResult(10));
            }
        } else {
            Map map2 = GoogleApiManager.this.zaih;
            zaiVar = this.zajf.zafp;
            ((GoogleApiManager.zaa) map2.get(zaiVar)).onConnectionFailed(this.zaiy);
        }
    }
}
