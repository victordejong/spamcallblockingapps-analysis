package io.realm.internal;

import io.realm.log.RealmLog;
import java.lang.ref.ReferenceQueue;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/FinalizerRunnable.class */
class FinalizerRunnable implements Runnable {
    private final ReferenceQueue<NativeObject> referenceQueue;

    public FinalizerRunnable(ReferenceQueue<NativeObject> referenceQueue) {
        this.referenceQueue = referenceQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                ((NativeObjectReference) this.referenceQueue.remove()).cleanup();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                RealmLog.fatal("The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore", new Object[0]);
                return;
            }
        }
    }
}
