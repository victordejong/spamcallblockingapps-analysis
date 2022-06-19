package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaau.class */
abstract class zaau implements Runnable {
    private final /* synthetic */ zaak zagj;

    private zaau(zaak zaakVar) {
        this.zagj = zaakVar;
    }

    public /* synthetic */ zaau(zaak zaakVar, zaal zaalVar) {
        this(zaakVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        Lock lock;
        zabe zabeVar;
        Lock lock2;
        lock = this.zagj.zaeo;
        lock.lock();
        try {
            if (Thread.interrupted()) {
                return;
            }
            zaan();
        } catch (RuntimeException e) {
            zabeVar = this.zagj.zaft;
            zabeVar.zab(e);
        } finally {
            lock2 = this.zagj.zaeo;
            lock2.unlock();
        }
    }

    protected abstract void zaan();
}
