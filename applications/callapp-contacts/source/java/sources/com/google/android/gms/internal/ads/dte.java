package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dte.class */
final class dte implements ayx {

    /* renamed from: a */
    private final FileChannel f47541a;

    /* renamed from: b */
    private final long f47542b;

    /* renamed from: c */
    private final long f47543c;

    public dte(FileChannel fileChannel, long j, long j2) {
        this.f47541a = fileChannel;
        this.f47542b = j;
        this.f47543c = j2;
    }

    @Override // com.google.android.gms.internal.ads.ayx
    /* renamed from: a */
    public final long mo15743a() {
        return this.f47543c;
    }

    @Override // com.google.android.gms.internal.ads.ayx
    /* renamed from: a */
    public final void mo15742a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f47541a.map(FileChannel.MapMode.READ_ONLY, this.f47542b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
