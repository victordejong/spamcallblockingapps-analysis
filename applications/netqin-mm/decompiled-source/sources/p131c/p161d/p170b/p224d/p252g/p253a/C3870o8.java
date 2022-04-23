package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeok;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: c.d.b.d.g.a.o8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o8.class */
public final class C3870o8 implements zzeok {

    /* renamed from: a */
    public final ByteBuffer f14301a;

    public C3870o8(ByteBuffer byteBuffer) {
        this.f14301a = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzeok
    /* renamed from: a */
    public final ByteBuffer mo12208a(long j, long j2) throws IOException {
        int position = this.f14301a.position();
        this.f14301a.position((int) j);
        ByteBuffer slice = this.f14301a.slice();
        slice.limit((int) j2);
        this.f14301a.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.zzeok
    /* renamed from: b */
    public final void mo12207b(long j) throws IOException {
        this.f14301a.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzeok, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzeok
    public final long position() throws IOException {
        return this.f14301a.position();
    }

    @Override // com.google.android.gms.internal.ads.zzeok
    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.f14301a.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.f14301a.remaining());
        byte[] bArr = new byte[min];
        this.f14301a.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzeok
    public final long size() throws IOException {
        return this.f14301a.limit();
    }
}
