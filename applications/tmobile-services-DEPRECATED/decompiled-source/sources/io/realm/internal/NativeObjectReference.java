package io.realm.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeObjectReference.class */
public final class NativeObjectReference extends PhantomReference<NativeObject> {

    /* renamed from: f */
    private static ReferencePool f20098f = new ReferencePool();

    /* renamed from: a */
    private final long f20099a;

    /* renamed from: b */
    private final long f20100b;

    /* renamed from: c */
    private final NativeContext f20101c;

    /* renamed from: d */
    private NativeObjectReference f20102d;

    /* renamed from: e */
    private NativeObjectReference f20103e;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeObjectReference$ReferencePool.class */
    private static class ReferencePool {

        /* renamed from: a */
        NativeObjectReference f20104a;

        private ReferencePool() {
        }

        /* renamed from: a */
        void m2823a(NativeObjectReference nativeObjectReference) {
            synchronized (this) {
                nativeObjectReference.f20102d = null;
                nativeObjectReference.f20103e = this.f20104a;
                if (this.f20104a != null) {
                    this.f20104a.f20102d = nativeObjectReference;
                }
                this.f20104a = nativeObjectReference;
            }
        }

        /* renamed from: b */
        void m2822b(NativeObjectReference nativeObjectReference) {
            synchronized (this) {
                NativeObjectReference nativeObjectReference2 = nativeObjectReference.f20103e;
                NativeObjectReference nativeObjectReference3 = nativeObjectReference.f20102d;
                nativeObjectReference.f20103e = null;
                nativeObjectReference.f20102d = null;
                if (nativeObjectReference3 != null) {
                    nativeObjectReference3.f20103e = nativeObjectReference2;
                } else {
                    this.f20104a = nativeObjectReference2;
                }
                if (nativeObjectReference2 != null) {
                    nativeObjectReference2.f20102d = nativeObjectReference3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeObjectReference(NativeContext nativeContext, NativeObject nativeObject, ReferenceQueue<? super NativeObject> referenceQueue) {
        super(nativeObject, referenceQueue);
        this.f20099a = nativeObject.getNativePtr();
        this.f20100b = nativeObject.getNativeFinalizerPtr();
        this.f20101c = nativeContext;
        f20098f.m2823a(this);
    }

    private static native void nativeCleanUp(long j, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m2824e() {
        synchronized (this.f20101c) {
            nativeCleanUp(this.f20100b, this.f20099a);
        }
        f20098f.m2822b(this);
    }
}
