package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzo.class */
final class bzo implements ayx {

    /* renamed from: a */
    private final ByteBuffer f45163a;

    public bzo(ByteBuffer byteBuffer) {
        this.f45163a = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.ayx
    /* renamed from: a */
    public final long mo15743a() {
        return this.f45163a.capacity();
    }

    @Override // com.google.android.gms.internal.ads.ayx
    /* renamed from: a */
    public final void mo15742a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f45163a) {
            int i2 = (int) j;
            this.f45163a.position(i2);
            this.f45163a.limit(i2 + i);
            slice = this.f45163a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
