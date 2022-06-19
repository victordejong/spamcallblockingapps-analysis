package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tl0.class */
final class tl0 implements ni3 {

    /* renamed from: d */
    private final ByteBuffer f30042d;

    public tl0(ByteBuffer byteBuffer) {
        this.f30042d = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.ni3
    /* renamed from: b */
    public final long mo10642b() {
        return this.f30042d.limit();
    }

    @Override // com.google.android.gms.internal.ads.ni3
    /* renamed from: c */
    public final long mo10641c() {
        return this.f30042d.position();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.ni3
    /* renamed from: d */
    public final ByteBuffer mo10640d(long j, long j2) {
        int position = this.f30042d.position();
        this.f30042d.position((int) j);
        ByteBuffer slice = this.f30042d.slice();
        slice.limit((int) j2);
        this.f30042d.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.ni3
    /* renamed from: f0 */
    public final int mo10639f0(ByteBuffer byteBuffer) {
        if (this.f30042d.remaining() != 0 || byteBuffer.remaining() <= 0) {
            int min = Math.min(byteBuffer.remaining(), this.f30042d.remaining());
            byte[] bArr = new byte[min];
            this.f30042d.get(bArr);
            byteBuffer.put(bArr);
            return min;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.ni3
    /* renamed from: j */
    public final void mo10638j(long j) {
        this.f30042d.position((int) j);
    }
}
