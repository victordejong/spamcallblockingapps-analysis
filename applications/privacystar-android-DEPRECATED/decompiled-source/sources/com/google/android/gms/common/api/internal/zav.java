package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zav.class */
public final class zav implements zabt {
    private final /* synthetic */ zas zaep;

    private zav(zas zasVar) {
        this.zaep = zasVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zav(zas zasVar, zat zatVar) {
        this(zasVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zabe zabeVar;
        lock = this.zaep.zaen;
        lock.lock();
        try {
            z2 = this.zaep.zaem;
            if (z2) {
                this.zaep.zaem = false;
                this.zaep.zaa(i, z);
                return;
            }
            this.zaep.zaem = true;
            zabeVar = this.zaep.zaee;
            zabeVar.onConnectionSuspended(i);
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
            this.zaep.zael = ConnectionResult.RESULT_SUCCESS;
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
            this.zaep.zael = connectionResult;
            this.zaep.zax();
        } finally {
            lock2 = this.zaep.zaen;
            lock2.unlock();
        }
    }
}
