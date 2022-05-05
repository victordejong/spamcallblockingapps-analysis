package io.realm.internal;

import io.realm.log.RealmLog;
import java.lang.ref.ReferenceQueue;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/FinalizerRunnable.class */
class FinalizerRunnable implements Runnable {

    /* renamed from: f */
    private final ReferenceQueue<NativeObject> f20094f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinalizerRunnable(ReferenceQueue<NativeObject> referenceQueue) {
        this.f20094f = referenceQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                ((NativeObjectReference) this.f20094f.remove()).m2824e();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                RealmLog.m2533c("The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore", new Object[0]);
                return;
            }
        }
    }
}
