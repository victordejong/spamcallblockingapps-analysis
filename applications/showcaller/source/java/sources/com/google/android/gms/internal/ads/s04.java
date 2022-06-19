package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s04.class */
public final class s04 extends ii3 {

    /* renamed from: n */
    ByteBuffer f29361n;

    public s04(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.ii3
    /* renamed from: d */
    public final void mo11183d(ByteBuffer byteBuffer) {
        this.f29361n = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
