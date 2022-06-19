package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaam.class */
public final class zaam implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final Api<?> mApi;
    private final boolean zaec;
    private final WeakReference<zaak> zagk;

    public zaam(zaak zaakVar, Api<?> api, boolean z) {
        this.zagk = new WeakReference<>(zaakVar);
        this.mApi = api;
        this.zaec = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        zabe zabeVar;
        Lock lock;
        Lock lock2;
        boolean zac;
        boolean zaao;
        zaak zaakVar = this.zagk.get();
        if (zaakVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        zabeVar = zaakVar.zaft;
        Preconditions.checkState(myLooper == zabeVar.zaee.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = zaakVar.zaeo;
        lock.lock();
        try {
            zac = zaakVar.zac(0);
            if (!zac) {
                return;
            }
            if (!connectionResult.isSuccess()) {
                zaakVar.zab(connectionResult, this.mApi, this.zaec);
            }
            zaao = zaakVar.zaao();
            if (zaao) {
                zaakVar.zaap();
            }
        } finally {
            lock2 = zaakVar.zaeo;
            lock2.unlock();
        }
    }
}
