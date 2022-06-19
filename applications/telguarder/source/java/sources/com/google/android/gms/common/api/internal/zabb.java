package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabb.class */
abstract class zabb {
    private final zaba zaa;

    public zabb(zaba zabaVar) {
        this.zaa = zabaVar;
    }

    protected abstract void zaa();

    public final void zab(zabd zabdVar) {
        Lock lock;
        Lock lock2;
        zaba zabaVar;
        Lock lock3;
        Lock lock4;
        Lock lock5;
        lock = zabdVar.zai;
        lock.lock();
        try {
            zabaVar = zabdVar.zan;
            if (zabaVar != this.zaa) {
                lock5 = zabdVar.zai;
                lock4 = lock5;
            } else {
                zaa();
                lock3 = zabdVar.zai;
                lock4 = lock3;
            }
            lock4.unlock();
        } catch (Throwable th) {
            lock2 = zabdVar.zai;
            lock2.unlock();
            throw th;
        }
    }
}
