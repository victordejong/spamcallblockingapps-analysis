package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
/* renamed from: e.k.a.c.d0.z.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/c.class */
public class C23542c extends AbstractC23552e0<AtomicInteger> {
    public C23542c() {
        super(AtomicInteger.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        AtomicInteger atomicInteger;
        if (abstractC23376j.mo7147T1()) {
            atomicInteger = new AtomicInteger(abstractC23376j.mo5800z0());
        } else {
            Integer m6656V = m6656V(abstractC23376j, abstractC23632g, AtomicInteger.class);
            atomicInteger = m6656V == null ? null : new AtomicInteger(m6656V.intValue());
        }
        return atomicInteger;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return new AtomicInteger();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Integer;
    }
}
