package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeObjectReference.class */
public final class NativeObjectReference extends PhantomReference<NativeObject> {
    private static ReferencePool referencePool = new ReferencePool();
    private final NativeContext context;
    private final long nativeFinalizerPtr;
    private final long nativePtr;
    private NativeObjectReference next;
    private NativeObjectReference prev;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeObjectReference$ReferencePool.class */
    public static class ReferencePool {
        NativeObjectReference head;

        private ReferencePool() {
        }

        void add(NativeObjectReference nativeObjectReference) {
            synchronized (this) {
                nativeObjectReference.prev = null;
                nativeObjectReference.next = this.head;
                if (this.head != null) {
                    this.head.prev = nativeObjectReference;
                }
                this.head = nativeObjectReference;
            }
        }

        void remove(NativeObjectReference nativeObjectReference) {
            synchronized (this) {
                NativeObjectReference nativeObjectReference2 = nativeObjectReference.next;
                NativeObjectReference nativeObjectReference3 = nativeObjectReference.prev;
                nativeObjectReference.next = null;
                nativeObjectReference.prev = null;
                if (nativeObjectReference3 != null) {
                    nativeObjectReference3.next = nativeObjectReference2;
                } else {
                    this.head = nativeObjectReference2;
                }
                if (nativeObjectReference2 != null) {
                    nativeObjectReference2.prev = nativeObjectReference3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeObjectReference(NativeContext nativeContext, NativeObject nativeObject, ReferenceQueue<? super NativeObject> referenceQueue) {
        super(nativeObject, referenceQueue);
        this.nativePtr = nativeObject.getNativePtr();
        this.nativeFinalizerPtr = nativeObject.getNativeFinalizerPtr();
        this.context = nativeContext;
        referencePool.add(this);
    }

    private static native void nativeCleanUp(long j, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanup() {
        synchronized (this.context) {
            nativeCleanUp(this.nativeFinalizerPtr, this.nativePtr);
        }
        referencePool.remove(this);
    }
}
