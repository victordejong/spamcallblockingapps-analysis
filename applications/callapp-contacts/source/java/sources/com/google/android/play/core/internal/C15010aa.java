package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.google.android.play.core.internal.aa */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/aa.class */
final class C15010aa implements AbstractC15035az {

    /* renamed from: a */
    private final ByteBuffer f54742a;

    public C15010aa(ByteBuffer byteBuffer) {
        this.f54742a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.AbstractC15035az
    /* renamed from: a */
    public final long mo9572a() {
        return this.f54742a.capacity();
    }

    @Override // com.google.android.play.core.internal.AbstractC15035az
    /* renamed from: a */
    public final void mo9571a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f54742a) {
            int i2 = (int) j;
            this.f54742a.position(i2);
            this.f54742a.limit(i2 + i);
            slice = this.f54742a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
