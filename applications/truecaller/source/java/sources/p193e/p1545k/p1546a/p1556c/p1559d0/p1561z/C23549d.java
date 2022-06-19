package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
/* renamed from: e.k.a.c.d0.z.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/d.class */
public class C23549d extends AbstractC23552e0<AtomicLong> {
    public C23549d() {
        super(AtomicLong.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        AtomicLong atomicLong;
        if (abstractC23376j.mo7147T1()) {
            atomicLong = new AtomicLong(abstractC23376j.mo5830B0());
        } else {
            Long m6655W = m6655W(abstractC23376j, abstractC23632g, AtomicLong.class);
            atomicLong = m6655W == null ? null : new AtomicLong(m6655W.intValue());
        }
        return atomicLong;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return new AtomicLong();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Integer;
    }
}
