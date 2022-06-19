package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aci.class */
final class aci implements drt {

    /* renamed from: a */
    private final ByteBuffer f39903a;

    public aci(ByteBuffer byteBuffer) {
        this.f39903a = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.drt
    /* renamed from: a */
    public final int mo15794a(ByteBuffer byteBuffer) throws IOException {
        if (this.f39903a.remaining() != 0 || byteBuffer.remaining() <= 0) {
            int min = Math.min(byteBuffer.remaining(), this.f39903a.remaining());
            byte[] bArr = new byte[min];
            this.f39903a.get(bArr);
            byteBuffer.put(bArr);
            return min;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.drt
    /* renamed from: a */
    public final long mo15797a() throws IOException {
        return this.f39903a.limit();
    }

    @Override // com.google.android.gms.internal.ads.drt
    /* renamed from: a */
    public final ByteBuffer mo15795a(long j, long j2) throws IOException {
        int position = this.f39903a.position();
        this.f39903a.position((int) j);
        ByteBuffer slice = this.f39903a.slice();
        slice.limit((int) j2);
        this.f39903a.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.drt
    /* renamed from: a */
    public final void mo15796a(long j) throws IOException {
        this.f39903a.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.drt
    /* renamed from: b */
    public final long mo15793b() throws IOException {
        return this.f39903a.position();
    }

    @Override // com.google.android.gms.internal.ads.drt, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
