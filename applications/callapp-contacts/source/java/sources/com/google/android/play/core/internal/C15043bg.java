package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* renamed from: com.google.android.play.core.internal.bg */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bg.class */
final class C15043bg implements AbstractC15035az {

    /* renamed from: a */
    private final FileChannel f54764a;

    /* renamed from: b */
    private final long f54765b;

    /* renamed from: c */
    private final long f54766c;

    public C15043bg(FileChannel fileChannel, long j, long j2) {
        this.f54764a = fileChannel;
        this.f54765b = j;
        this.f54766c = j2;
    }

    @Override // com.google.android.play.core.internal.AbstractC15035az
    /* renamed from: a */
    public final long mo9572a() {
        return this.f54766c;
    }

    @Override // com.google.android.play.core.internal.AbstractC15035az
    /* renamed from: a */
    public final void mo9571a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f54764a.map(FileChannel.MapMode.READ_ONLY, this.f54765b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
