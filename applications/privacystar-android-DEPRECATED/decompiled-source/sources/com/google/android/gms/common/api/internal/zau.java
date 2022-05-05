package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zau.class */
public final class zau implements zabt {
    private final /* synthetic */ zas zaep;

    private zau(zas zasVar) {
        this.zaep = zasVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        lock = this.zaep.zaen;
        lock.lock();
        try {
            z2 = this.zaep.zaem;
            if (!z2) {
                connectionResult = this.zaep.zael;
                if (connectionResult != null) {
                    connectionResult2 = this.zaep.zael;
                    if (connectionResult2.isSuccess()) {
                        this.zaep.zaem = true;
                        zabeVar = this.zaep.zaef;
                        zabeVar.onConnectionSuspended(i);
                        return;
                    }
                }
            }
            this.zaep.zaem = false;
            this.zaep.zaa(i, z);
        } finally {
            lock2 = this.zaep.zaen;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.zaep.zaen;
        lock.lock();
        try {
            this.zaep.zaa(bundle);
            this.zaep.zaek = ConnectionResult.RESULT_SUCCESS;
            this.zaep.zax();
        } finally {
            lock2 = this.zaep.zaen;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zaep.zaen;
        lock.lock();
        try {
            this.zaep.zaek = connectionResult;
            this.zaep.zax();
        } finally {
            lock2 = this.zaep.zaen;
            lock2.unlock();
        }
    }
}
