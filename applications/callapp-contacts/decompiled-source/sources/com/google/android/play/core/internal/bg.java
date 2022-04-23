package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bg.class */
final class bg implements az {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f31362a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31363b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31364c;

    public bg(FileChannel fileChannel, long j, long j2) {
        this.f31362a = fileChannel;
        this.f31363b = j;
        this.f31364c = j2;
    }

    @Override // com.google.android.play.core.internal.az
    public final long a() {
        return this.f31364c;
    }

    @Override // com.google.android.play.core.internal.az
    public final void a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f31362a.map(FileChannel.MapMode.READ_ONLY, this.f31363b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
