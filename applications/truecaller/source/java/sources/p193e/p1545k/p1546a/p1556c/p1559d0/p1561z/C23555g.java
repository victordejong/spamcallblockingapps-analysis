package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23913f;
/* renamed from: e.k.a.c.d0.z.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/g.class */
public class C23555g extends AbstractC23552e0<ByteBuffer> {
    public C23555g() {
        super(ByteBuffer.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Objects.requireNonNull(abstractC23376j);
        return ByteBuffer.wrap(abstractC23376j.mo5826I(C23366b.f64606b));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        C23913f c23913f = new C23913f(byteBuffer);
        abstractC23376j.mo5802r2(abstractC23632g.m6505A(), c23913f);
        c23913f.close();
        return byteBuffer;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Binary;
    }
}
