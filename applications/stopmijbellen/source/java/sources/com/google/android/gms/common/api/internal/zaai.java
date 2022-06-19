package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaai.class */
public final class zaai implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final WeakReference<zaar> zaa;
    private final Api<?> zab;
    private final boolean zac;

    public zaai(zaar zaarVar, Api<?> api, boolean z) {
        this.zaa = new WeakReference<>(zaarVar);
        this.zab = api;
        this.zac = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        zabd zabdVar;
        Lock lock;
        Lock lock2;
        boolean zaI;
        boolean zaz;
        Lock lock3;
        Lock lock4;
        Lock lock5;
        zaar zaarVar = this.zaa.get();
        if (zaarVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        zabdVar = zaarVar.zaa;
        Preconditions.checkState(myLooper == zabdVar.zag.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = zaarVar.zab;
        lock.lock();
        try {
            zaI = zaarVar.zaI(0);
            if (!zaI) {
                lock5 = zaarVar.zab;
                lock4 = lock5;
            } else {
                if (!connectionResult.isSuccess()) {
                    zaarVar.zaC(connectionResult, this.zab, this.zac);
                }
                zaz = zaarVar.zaz();
                if (zaz) {
                    zaarVar.zaA();
                }
                lock3 = zaarVar.zab;
                lock4 = lock3;
            }
            lock4.unlock();
        } catch (Throwable th) {
            lock2 = zaarVar.zab;
            lock2.unlock();
            throw th;
        }
    }
}
