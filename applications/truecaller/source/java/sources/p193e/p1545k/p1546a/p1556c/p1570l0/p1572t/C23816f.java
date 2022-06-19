package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
@AbstractC23429a
/* renamed from: e.k.a.c.l0.t.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/f.class */
public class C23816f extends AbstractC23851q0<byte[]> {
    public C23816f() {
        super(byte[].class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: d */
    public boolean mo5896d(AbstractC23425a0 abstractC23425a0, Object obj) {
        return ((byte[]) obj).length == 0;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        byte[] bArr = (byte[]) obj;
        abstractC23372g.mo5870S(abstractC23425a0.f64991a.f65071b.f65032k, bArr, 0, bArr.length);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        byte[] bArr = (byte[]) obj;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, abstractC23712h.m6216d(bArr, EnumC23381m.VALUE_EMBEDDED_OBJECT));
        abstractC23372g.mo5870S(abstractC23425a0.f64991a.f65071b.f65032k, bArr, 0, bArr.length);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }
}
