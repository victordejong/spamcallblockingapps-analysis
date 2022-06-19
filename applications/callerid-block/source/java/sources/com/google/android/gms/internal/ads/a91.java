package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/a91.class */
public final class a91 {

    /* renamed from: a */
    private final AtomicBoolean f5950a = new AtomicBoolean(false);

    /* renamed from: a */
    public final void m8154a(boolean z) {
        this.f5950a.set(true);
    }

    /* renamed from: b */
    public final boolean m8153b() {
        return this.f5950a.get();
    }
}
