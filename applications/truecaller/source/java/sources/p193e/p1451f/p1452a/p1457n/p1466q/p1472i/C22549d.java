package p193e.p1451f.p1452a.p1457n.p1466q.p1472i;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1466q.p1468e.C22527b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
import p193e.p1451f.p1452a.p1480t.C22611a;
/* renamed from: e.f.a.n.q.i.d */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/i/d.class */
public class C22549d implements AbstractC22550e<C22538c, byte[]> {
    @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1472i.AbstractC22550e
    /* renamed from: a */
    public AbstractC22394w<byte[]> mo8143a(AbstractC22394w<C22538c> abstractC22394w, C22267i c22267i) {
        byte[] bArr;
        ByteBuffer asReadOnlyBuffer = abstractC22394w.get().f62437a.f62447a.f62448a.mo8367f().asReadOnlyBuffer();
        AtomicReference<byte[]> atomicReference = C22611a.f62625a;
        C22611a.C22613b c22613b = (asReadOnlyBuffer.isReadOnly() || !asReadOnlyBuffer.hasArray()) ? null : new C22611a.C22613b(asReadOnlyBuffer.array(), asReadOnlyBuffer.arrayOffset(), asReadOnlyBuffer.limit());
        if (c22613b != null && c22613b.f62628a == 0 && c22613b.f62629b == c22613b.f62630c.length) {
            bArr = asReadOnlyBuffer.array();
        } else {
            ByteBuffer asReadOnlyBuffer2 = asReadOnlyBuffer.asReadOnlyBuffer();
            bArr = new byte[asReadOnlyBuffer2.limit()];
            asReadOnlyBuffer2.position(0);
            asReadOnlyBuffer2.get(bArr);
        }
        return new C22527b(bArr);
    }
}
