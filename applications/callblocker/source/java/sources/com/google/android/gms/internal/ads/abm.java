package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abm.class */
final class abm implements dhf {

    /* renamed from: a */
    private final ByteBuffer f7754a;

    public abm(ByteBuffer byteBuffer) {
        this.f7754a = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.dhf
    /* renamed from: a */
    public final int mo9460a(ByteBuffer byteBuffer) {
        int min;
        if (this.f7754a.remaining() != 0 || byteBuffer.remaining() <= 0) {
            min = Math.min(byteBuffer.remaining(), this.f7754a.remaining());
            byte[] bArr = new byte[min];
            this.f7754a.get(bArr);
            byteBuffer.put(bArr);
        } else {
            min = -1;
        }
        return min;
    }

    @Override // com.google.android.gms.internal.ads.dhf
    /* renamed from: a */
    public final long mo9463a() {
        return this.f7754a.limit();
    }

    @Override // com.google.android.gms.internal.ads.dhf
    /* renamed from: a */
    public final ByteBuffer mo9461a(long j, long j2) {
        int position = this.f7754a.position();
        this.f7754a.position((int) j);
        ByteBuffer slice = this.f7754a.slice();
        slice.limit((int) j2);
        this.f7754a.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.dhf
    /* renamed from: a */
    public final void mo9462a(long j) {
        this.f7754a.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.dhf
    /* renamed from: b */
    public final long mo9459b() {
        return this.f7754a.position();
    }

    @Override // com.google.android.gms.internal.ads.dhf, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
