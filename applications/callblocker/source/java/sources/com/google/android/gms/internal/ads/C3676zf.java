package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.zf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zf.class */
public final class C3676zf extends ThreadLocal<ByteBuffer> {
    public C3676zf(aag aagVar) {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ ByteBuffer initialValue() {
        return ByteBuffer.allocate(32);
    }
}
