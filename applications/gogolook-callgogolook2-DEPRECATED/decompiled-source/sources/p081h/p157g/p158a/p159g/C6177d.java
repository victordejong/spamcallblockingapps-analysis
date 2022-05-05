package p081h.p157g.p158a.p159g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.d */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/d.class */
public class C6177d extends AbstractC6172c.AbstractC6174b {

    /* renamed from: g */
    public final C6179f f15343g;

    public C6177d(boolean z, C6179f fVar) throws IOException {
        this.f15332a = z;
        this.f15343g = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        fVar.m23639b(allocate, 16L);
        this.f15333b = fVar.m23636e(allocate, 28L);
        this.f15334c = fVar.m23636e(allocate, 32L);
        this.f15335d = fVar.m23639b(allocate, 42L);
        this.f15336e = fVar.m23639b(allocate, 44L);
        this.f15337f = fVar.m23639b(allocate, 46L);
        fVar.m23639b(allocate, 48L);
        fVar.m23639b(allocate, 50L);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6173a mo23645a(long j, int i) throws IOException {
        return new C6170a(this.f15343g, this, j, i);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6175c mo23646a(long j) throws IOException {
        return new C6180g(this.f15343g, this, j);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6176d mo23647a(int i) throws IOException {
        return new C6182i(this.f15343g, this, i);
    }
}
