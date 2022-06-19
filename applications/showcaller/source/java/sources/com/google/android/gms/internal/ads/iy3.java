package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iy3.class */
final class iy3 implements jy3 {

    /* renamed from: a */
    private final ByteBuffer f24544a;

    public iy3(ByteBuffer byteBuffer) {
        this.f24544a = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.jy3
    /* renamed from: a */
    public final void mo13755a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f24544a) {
            int i2 = (int) j;
            this.f24544a.position(i2);
            this.f24544a.limit(i2 + i);
            slice = this.f24544a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    @Override // com.google.android.gms.internal.ads.jy3
    public final long zza() {
        return this.f24544a.capacity();
    }
}
