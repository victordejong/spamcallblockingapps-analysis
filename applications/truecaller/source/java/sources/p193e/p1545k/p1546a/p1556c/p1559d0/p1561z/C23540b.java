package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
/* renamed from: e.k.a.c.d0.z.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/b.class */
public class C23540b extends AbstractC23552e0<AtomicBoolean> {
    public C23540b() {
        super(AtomicBoolean.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        AtomicBoolean atomicBoolean;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l == EnumC23381m.VALUE_TRUE) {
            atomicBoolean = new AtomicBoolean(true);
        } else if (mo7142l == EnumC23381m.VALUE_FALSE) {
            atomicBoolean = new AtomicBoolean(false);
        } else {
            Boolean m6663N = m6663N(abstractC23376j, abstractC23632g, AtomicBoolean.class);
            atomicBoolean = m6663N == null ? null : new AtomicBoolean(m6663N.booleanValue());
        }
        return atomicBoolean;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        return new AtomicBoolean(false);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23552e0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Boolean;
    }
}
