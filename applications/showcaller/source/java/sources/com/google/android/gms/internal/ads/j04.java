package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j04.class */
public final class j04 extends ThreadLocal<ByteBuffer> {
    public j04(k04 k04Var) {
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
