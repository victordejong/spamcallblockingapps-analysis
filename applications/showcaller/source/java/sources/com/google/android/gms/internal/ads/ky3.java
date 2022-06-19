package com.google.android.gms.internal.ads;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ky3.class */
final class ky3 implements jy3 {

    /* renamed from: a */
    private final FileChannel f25888a;

    /* renamed from: b */
    private final long f25889b;

    /* renamed from: c */
    private final long f25890c;

    public ky3(FileChannel fileChannel, long j, long j2) {
        this.f25888a = fileChannel;
        this.f25889b = j;
        this.f25890c = j2;
    }

    @Override // com.google.android.gms.internal.ads.jy3
    /* renamed from: a */
    public final void mo13755a(MessageDigest[] messageDigestArr, long j, int i) {
        MappedByteBuffer map = this.f25888a.map(FileChannel.MapMode.READ_ONLY, this.f25889b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // com.google.android.gms.internal.ads.jy3
    public final long zza() {
        return this.f25890c;
    }
}
