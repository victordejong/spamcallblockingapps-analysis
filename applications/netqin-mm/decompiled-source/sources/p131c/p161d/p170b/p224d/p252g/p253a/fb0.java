package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* renamed from: c.d.b.d.g.a.fb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fb0.class */
public final class fb0 implements AbstractC3693jg {

    /* renamed from: a */
    public final FileChannel f12947a;

    /* renamed from: b */
    public final long f12948b;

    /* renamed from: c */
    public final long f12949c;

    public fb0(FileChannel fileChannel, long j, long j2) {
        this.f12947a = fileChannel;
        this.f12948b = j;
        this.f12949c = j2;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg
    /* renamed from: a */
    public final void mo26625a(MessageDigest[] messageDigestArr, long j, int i) throws IOException {
        MappedByteBuffer map = this.f12947a.map(FileChannel.MapMode.READ_ONLY, this.f12948b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3693jg
    public final long size() {
        return this.f12949c;
    }
}
