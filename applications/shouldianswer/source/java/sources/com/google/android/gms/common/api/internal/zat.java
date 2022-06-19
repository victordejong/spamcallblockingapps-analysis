package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zat.class */
public final class zat implements Runnable {
    private final /* synthetic */ zas zaeq;

    public zat(zas zasVar) {
        this.zaeq = zasVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.zaeq.zaeo;
        lock.lock();
        try {
            this.zaeq.zax();
        } finally {
            lock2 = this.zaeq.zaeo;
            lock2.unlock();
        }
    }
}
