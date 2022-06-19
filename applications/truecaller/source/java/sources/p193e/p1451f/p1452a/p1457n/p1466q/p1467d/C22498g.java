package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1480t.C22611a;
/* renamed from: e.f.a.n.q.d.g */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/g.class */
public class C22498g implements AbstractC22269k<ByteBuffer, Bitmap> {

    /* renamed from: a */
    public final C22512n f62368a;

    public C22498g(C22512n c22512n) {
        this.f62368a = c22512n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(ByteBuffer byteBuffer, C22267i c22267i) throws IOException {
        Objects.requireNonNull(this.f62368a);
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(ByteBuffer byteBuffer, int i, int i2, C22267i c22267i) throws IOException {
        AtomicReference<byte[]> atomicReference = C22611a.f62625a;
        return this.f62368a.m8189a(new C22611a.C22612a(byteBuffer), i, i2, c22267i, C22512n.f62391k);
    }
}
