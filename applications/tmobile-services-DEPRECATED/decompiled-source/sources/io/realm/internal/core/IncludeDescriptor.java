package io.realm.internal.core;

import io.realm.internal.NativeObject;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/core/IncludeDescriptor.class */
public class IncludeDescriptor implements NativeObject {

    /* renamed from: g */
    private static final long f20217g = nativeGetFinalizerMethodPtr();

    /* renamed from: f */
    private final long f20218f;

    private static native long nativeGetFinalizerMethodPtr();

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20217g;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20218f;
    }
}
