package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aa.class */
final class aa implements az {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f31340a;

    public aa(ByteBuffer byteBuffer) {
        this.f31340a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.az
    public final long a() {
        return this.f31340a.capacity();
    }

    @Override // com.google.android.play.core.internal.az
    public final void a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f31340a) {
            int i2 = (int) j;
            this.f31340a.position(i2);
            this.f31340a.limit(i2 + i);
            slice = this.f31340a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
