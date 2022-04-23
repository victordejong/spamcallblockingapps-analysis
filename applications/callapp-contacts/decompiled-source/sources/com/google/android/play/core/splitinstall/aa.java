package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/aa.class */
public final class aa extends Enum<aa> implements t {

    /* renamed from: a  reason: collision with root package name */
    public static final aa f31483a = new aa();

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReference<u> f31484b = new AtomicReference<>(null);

    private aa() {
    }

    @Override // com.google.android.play.core.splitinstall.t
    public final u a() {
        return f31484b.get();
    }

    public final void b(u uVar) {
        f31484b.set(uVar);
    }
}
