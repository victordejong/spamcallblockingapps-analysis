package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aci.class */
final class aci implements drt {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f23100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aci(ByteBuffer byteBuffer) {
        this.f23100a = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.drt
    public final int a(ByteBuffer byteBuffer) throws IOException {
        if (this.f23100a.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.f23100a.remaining());
        byte[] bArr = new byte[min];
        this.f23100a.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.drt
    public final long a() throws IOException {
        return this.f23100a.limit();
    }

    @Override // com.google.android.gms.internal.ads.drt
    public final ByteBuffer a(long j, long j2) throws IOException {
        int position = this.f23100a.position();
        this.f23100a.position((int) j);
        ByteBuffer slice = this.f23100a.slice();
        slice.limit((int) j2);
        this.f23100a.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.drt
    public final void a(long j) throws IOException {
        this.f23100a.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.drt
    public final long b() throws IOException {
        return this.f23100a.position();
    }

    @Override // com.google.android.gms.internal.ads.drt, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }
}
