package p193e.p1451f.p1452a.p1457n.p1466q.p1468e;

import java.io.IOException;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
/* renamed from: e.f.a.n.q.e.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/e/a.class */
public class C22525a implements AbstractC22276e<ByteBuffer> {

    /* renamed from: a */
    public final ByteBuffer f62422a;

    /* renamed from: e.f.a.n.q.e.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/e/a$a.class */
    public static class C22526a implements AbstractC22276e.AbstractC22277a<ByteBuffer> {
        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e.AbstractC22277a
        /* renamed from: a */
        public Class<ByteBuffer> mo8165a() {
            return ByteBuffer.class;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e.AbstractC22277a
        /* renamed from: b */
        public AbstractC22276e<ByteBuffer> mo8164b(ByteBuffer byteBuffer) {
            return new C22525a(byteBuffer);
        }
    }

    public C22525a(ByteBuffer byteBuffer) {
        this.f62422a = byteBuffer;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e
    /* renamed from: a */
    public ByteBuffer mo8167a() throws IOException {
        this.f62422a.position(0);
        return this.f62422a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e
    /* renamed from: b */
    public void mo8166b() {
    }
}
