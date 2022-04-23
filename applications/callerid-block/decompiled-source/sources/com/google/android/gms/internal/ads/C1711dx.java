package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.dx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dx.class */
final class C1711dx extends ThreadLocal<ByteBuffer> {
    C1711dx(ey eyVar) {
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
