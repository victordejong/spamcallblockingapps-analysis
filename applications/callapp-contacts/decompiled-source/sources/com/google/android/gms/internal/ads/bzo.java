package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzo.class */
final class bzo implements ayx {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f25455a;

    public bzo(ByteBuffer byteBuffer) {
        this.f25455a = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.ayx
    public final long a() {
        return this.f25455a.capacity();
    }

    @Override // com.google.android.gms.internal.ads.ayx
    public final void a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f25455a) {
            int i2 = (int) j;
            this.f25455a.position(i2);
            this.f25455a.limit(i2 + i);
            slice = this.f25455a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
