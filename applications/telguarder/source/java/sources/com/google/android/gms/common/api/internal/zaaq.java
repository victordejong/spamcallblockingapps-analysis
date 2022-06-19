package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaq.class */
abstract class zaaq implements Runnable {
    final /* synthetic */ zaar zab;

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        zabd zabdVar;
        Lock lock2;
        Lock lock3;
        Lock lock4;
        Lock lock5;
        Lock lock6;
        lock = this.zab.zab;
        lock.lock();
        try {
            try {
                if (Thread.interrupted()) {
                    lock6 = this.zab.zab;
                    lock3 = lock6;
                } else {
                    zaa();
                    lock5 = this.zab.zab;
                    lock3 = lock5;
                }
            } catch (RuntimeException e) {
                zabdVar = this.zab.zaa;
                zabdVar.zas(e);
                lock2 = this.zab.zab;
                lock3 = lock2;
            }
            lock3.unlock();
        } catch (Throwable th) {
            lock4 = this.zab.zab;
            lock4.unlock();
            throw th;
        }
    }

    protected abstract void zaa();
}
