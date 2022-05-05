package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/NativeObjectReference.class */
public final class NativeObjectReference extends PhantomReference<NativeObject> {
    public static ReferencePool referencePool = new ReferencePool();
    public final NativeContext context;
    public final long nativeFinalizerPtr;
    public final long nativePtr;
    public NativeObjectReference next;
    public NativeObjectReference prev;

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/NativeObjectReference$ReferencePool.class */
    public static class ReferencePool {
        public NativeObjectReference head;

        public ReferencePool() {
        }

        public void add(NativeObjectReference nativeObjectReference) {
            synchronized (this) {
                nativeObjectReference.prev = null;
                nativeObjectReference.next = this.head;
                if (this.head != null) {
                    this.head.prev = nativeObjectReference;
                }
                this.head = nativeObjectReference;
            }
        }

        public void remove(NativeObjectReference nativeObjectReference) {
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

    public NativeObjectReference(NativeContext nativeContext, NativeObject nativeObject, ReferenceQueue<? super NativeObject> referenceQueue) {
        super(nativeObject, referenceQueue);
        this.nativePtr = nativeObject.getNativePtr();
        this.nativeFinalizerPtr = nativeObject.getNativeFinalizerPtr();
        this.context = nativeContext;
        referencePool.add(this);
    }

    public static native void nativeCleanUp(long j, long j2);

    public void cleanup() {
        synchronized (this.context) {
            nativeCleanUp(this.nativeFinalizerPtr, this.nativePtr);
        }
        referencePool.remove(this);
    }
}
