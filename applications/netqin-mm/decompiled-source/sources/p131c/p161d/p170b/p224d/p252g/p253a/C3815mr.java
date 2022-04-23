package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: c.d.b.d.g.a.mr */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/mr.class */
public final class C3815mr implements AbstractC3693jg {

    /* renamed from: a */
    public final ByteBuffer f14196a;

    public C3815mr(ByteBuffer byteBuffer) {
        this.f14196a = byteBuffer.slice();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg
    /* renamed from: a */
    public final void mo26625a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        ByteBuffer slice;
        synchronized (this.f14196a) {
            try {
                int i2 = (int) j;
                this.f14196a.position(i2);
                this.f14196a.limit(i2 + i);
                slice = this.f14196a.slice();
            } catch (Throwable th) {
                throw th;
            }
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg
    public final long size() {
        return this.f14196a.capacity();
    }
}
