package com.google.android.play.core.internal;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* renamed from: com.google.android.play.core.internal.t0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/t0.class */
final class C8517t0 implements AbstractC8507o0 {

    /* renamed from: a */
    private final FileChannel f38080a;

    /* renamed from: b */
    private final long f38081b;

    /* renamed from: c */
    private final long f38082c;

    public C8517t0(FileChannel fileChannel, long j, long j2) {
        this.f38080a = fileChannel;
        this.f38081b = j;
        this.f38082c = j2;
    }

    @Override // com.google.android.play.core.internal.AbstractC8507o0
    /* renamed from: a */
    public final long mo3439a() {
        return this.f38082c;
    }

    @Override // com.google.android.play.core.internal.AbstractC8507o0
    /* renamed from: a */
    public final void mo3438a(MessageDigest[] messageDigestArr, long j, int i) {
        MappedByteBuffer map = this.f38080a.map(FileChannel.MapMode.READ_ONLY, this.f38081b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
