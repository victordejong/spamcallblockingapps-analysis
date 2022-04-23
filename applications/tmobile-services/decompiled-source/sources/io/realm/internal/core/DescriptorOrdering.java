package io.realm.internal.core;

import io.realm.internal.NativeObject;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/core/DescriptorOrdering.class */
public class DescriptorOrdering implements NativeObject {

    /* renamed from: g */
    private static final long f20215g = nativeGetFinalizerMethodPtr();

    /* renamed from: f */
    private final long f20216f = nativeCreate();

    private static native long nativeCreate();

    private static native long nativeGetFinalizerMethodPtr();

    private static native boolean nativeIsEmpty(long j);

    /* renamed from: a */
    public boolean m2582a() {
        return nativeIsEmpty(this.f20216f);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20215g;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20216f;
    }
}
