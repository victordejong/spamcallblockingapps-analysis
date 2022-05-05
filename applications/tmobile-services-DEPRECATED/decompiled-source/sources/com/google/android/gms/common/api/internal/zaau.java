package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaau.class */
abstract class zaau implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zaak f7179f;

    private zaau(zaak zaakVar) {
        this.f7179f = zaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zaau(zaak zaakVar, zaaj zaajVar) {
        this(zaakVar);
    }

    @WorkerThread
    /* renamed from: a */
    protected abstract void mo14822a();

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        Lock lock;
        zabe zabeVar;
        Lock lock2;
        lock = this.f7179f.f7144b;
        lock.lock();
        try {
            if (!Thread.interrupted()) {
                mo14822a();
            }
        } catch (RuntimeException e) {
            zabeVar = this.f7179f.f7143a;
            zabeVar.m14789j(e);
        } finally {
            lock2 = this.f7179f.f7144b;
            lock2.unlock();
        }
    }
}
