package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dte.class */
final class dte implements ayx {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f27185a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27186b;

    /* renamed from: c  reason: collision with root package name */
    private final long f27187c;

    public dte(FileChannel fileChannel, long j, long j2) {
        this.f27185a = fileChannel;
        this.f27186b = j;
        this.f27187c = j2;
    }

    @Override // com.google.android.gms.internal.ads.ayx
    public final long a() {
        return this.f27187c;
    }

    @Override // com.google.android.gms.internal.ads.ayx
    public final void a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f27185a.map(FileChannel.MapMode.READ_ONLY, this.f27186b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
