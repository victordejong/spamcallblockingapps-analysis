package io.realm.internal;

import java.lang.ref.ReferenceQueue;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeContext.class */
public class NativeContext {
    public static final NativeContext dummyContext = new NativeContext();
    private static final Thread finalizingThread;
    private static final ReferenceQueue<NativeObject> referenceQueue;

    static {
        ReferenceQueue<NativeObject> referenceQueue2 = new ReferenceQueue<>();
        referenceQueue = referenceQueue2;
        Thread thread = new Thread(new FinalizerRunnable(referenceQueue2));
        finalizingThread = thread;
        thread.setName("RealmFinalizingDaemon");
        thread.start();
    }

    public void addReference(NativeObject nativeObject) {
        new NativeObjectReference(this, nativeObject, referenceQueue);
    }
}
