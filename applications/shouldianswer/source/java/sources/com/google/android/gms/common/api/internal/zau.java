package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zau.class */
public final class zau implements zabt {
    private final /* synthetic */ zas zaeq;

    private zau(zas zasVar) {
        this.zaeq = zasVar;
    }

    public /* synthetic */ zau(zas zasVar, zat zatVar) {
        this(zasVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        zabe zabeVar;
        lock = this.zaeq.zaeo;
        lock.lock();
        try {
            z2 = this.zaeq.zaen;
            if (!z2) {
                connectionResult = this.zaeq.zaem;
                if (connectionResult != null) {
                    connectionResult2 = this.zaeq.zaem;
                    if (connectionResult2.isSuccess()) {
                        this.zaeq.zaen = true;
                        zabeVar = this.zaeq.zaeg;
                        zabeVar.onConnectionSuspended(i);
                        return;
                    }
                }
            }
            this.zaeq.zaen = false;
            this.zaeq.zaa(i, z);
        } finally {
            lock2 = this.zaeq.zaeo;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.zaeq.zaeo;
        lock.lock();
        try {
            this.zaeq.zaa(bundle);
            this.zaeq.zael = ConnectionResult.RESULT_SUCCESS;
            this.zaeq.zax();
        } finally {
            lock2 = this.zaeq.zaeo;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zaeq.zaeo;
        lock.lock();
        try {
            this.zaeq.zael = connectionResult;
            this.zaeq.zax();
        } finally {
            lock2 = this.zaeq.zaeo;
            lock2.unlock();
        }
    }
}
