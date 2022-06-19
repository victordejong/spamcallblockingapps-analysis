package com.google.android.play.core.internal;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.google.android.play.core.internal.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/w.class */
final class C8522w implements AbstractC8507o0 {

    /* renamed from: a */
    private final ByteBuffer f38088a;

    public C8522w(ByteBuffer byteBuffer) {
        this.f38088a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.AbstractC8507o0
    /* renamed from: a */
    public final long mo3439a() {
        return this.f38088a.capacity();
    }

    @Override // com.google.android.play.core.internal.AbstractC8507o0
    /* renamed from: a */
    public final void mo3438a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer slice;
        synchronized (this.f38088a) {
            int i2 = (int) j;
            this.f38088a.position(i2);
            this.f38088a.limit(i2 + i);
            slice = this.f38088a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
