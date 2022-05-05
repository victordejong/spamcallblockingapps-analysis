package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabd.class */
abstract class zabd {

    /* renamed from: a */
    private final zabb f7215a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zabd(zabb zabbVar) {
        this.f7215a = zabbVar;
    }

    /* renamed from: a */
    public final void m14795a(zabe zabeVar) {
        Lock lock;
        Lock lock2;
        zabb zabbVar;
        lock = zabeVar.f7216a;
        lock.lock();
        try {
            zabbVar = zabeVar.f7226k;
            if (zabbVar == this.f7215a) {
                mo14794b();
            }
        } finally {
            lock2 = zabeVar.f7216a;
            lock2.unlock();
        }
    }

    /* renamed from: b */
    protected abstract void mo14794b();
}
