package p081h.p157g.p158a.p159g;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.e */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/e.class */
public class C6178e extends AbstractC6172c.AbstractC6174b {

    /* renamed from: g */
    public final C6179f f15344g;

    public C6178e(boolean z, C6179f fVar) throws IOException {
        this.f15332a = z;
        this.f15344g = fVar;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        fVar.m23639b(allocate, 16L);
        this.f15333b = fVar.m23638c(allocate, 32L);
        this.f15334c = fVar.m23638c(allocate, 40L);
        this.f15335d = fVar.m23639b(allocate, 54L);
        this.f15336e = fVar.m23639b(allocate, 56L);
        this.f15337f = fVar.m23639b(allocate, 58L);
        fVar.m23639b(allocate, 60L);
        fVar.m23639b(allocate, 62L);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6173a mo23645a(long j, int i) throws IOException {
        return new C6171b(this.f15344g, this, j, i);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6175c mo23646a(long j) throws IOException {
        return new C6181h(this.f15344g, this, j);
    }

    @Override // p081h.p157g.p158a.p159g.AbstractC6172c.AbstractC6174b
    /* renamed from: a */
    public AbstractC6172c.AbstractC6176d mo23647a(int i) throws IOException {
        return new C6183j(this.f15344g, this, i);
    }
}
