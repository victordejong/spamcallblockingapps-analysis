package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabf.class */
abstract class zabf {
    private final zabd zaht;

    /* JADX INFO: Access modifiers changed from: protected */
    public zabf(zabd zabdVar) {
        this.zaht = zabdVar;
    }

    protected abstract void zaan();

    public final void zac(zabe zabeVar) {
        Lock lock;
        Lock lock2;
        zabd zabdVar;
        lock = zabeVar.zaen;
        lock.lock();
        try {
            zabdVar = zabeVar.zahp;
            if (zabdVar == this.zaht) {
                zaan();
            }
        } finally {
            lock2 = zabeVar.zaen;
            lock2.unlock();
        }
    }
}
