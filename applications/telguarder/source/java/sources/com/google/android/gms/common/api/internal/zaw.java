package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaw.class */
public final class zaw implements zabt {
    final /* synthetic */ zax zaa;

    public /* synthetic */ zaw(zax zaxVar, zau zauVar) {
        this.zaa = zaxVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zaa(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.zaa.zam;
        lock.lock();
        try {
            this.zaa.zak = ConnectionResult.RESULT_SUCCESS;
            zax.zap(this.zaa);
        } finally {
            lock2 = this.zaa.zam;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zab(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zaa.zam;
        lock.lock();
        try {
            this.zaa.zak = connectionResult;
            zax.zap(this.zaa);
        } finally {
            lock2 = this.zaa.zam;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabt
    public final void zac(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zabd zabdVar;
        Lock lock3;
        Lock lock4;
        Lock lock5;
        lock = this.zaa.zam;
        lock.lock();
        try {
            z2 = this.zaa.zal;
            if (z2) {
                this.zaa.zal = false;
                zax.zav(this.zaa, i, z);
                lock5 = this.zaa.zam;
                lock4 = lock5;
            } else {
                this.zaa.zal = true;
                zabdVar = this.zaa.zad;
                zabdVar.onConnectionSuspended(i);
                lock3 = this.zaa.zam;
                lock4 = lock3;
            }
            lock4.unlock();
        } catch (Throwable th) {
            lock2 = this.zaa.zam;
            lock2.unlock();
            throw th;
        }
    }
}
