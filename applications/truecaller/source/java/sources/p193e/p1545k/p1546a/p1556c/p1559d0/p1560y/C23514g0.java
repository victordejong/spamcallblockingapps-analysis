package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
/* renamed from: e.k.a.c.d0.y.g0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/g0.class */
public class C23514g0 {

    /* renamed from: a */
    public final List<AbstractC23488u> f65256a;

    public C23514g0() {
        this.f65256a = new ArrayList();
    }

    public C23514g0(List<AbstractC23488u> list) {
        this.f65256a = list;
    }

    /* renamed from: a */
    public Object m6697a(AbstractC23632g abstractC23632g, Object obj, C23893a0 c23893a0) throws IOException {
        int size = this.f65256a.size();
        for (int i = 0; i < size; i++) {
            AbstractC23488u abstractC23488u = this.f65256a.get(i);
            AbstractC23376j m5835x2 = c23893a0.m5835x2();
            m5835x2.mo5811i2();
            abstractC23488u.mo6682i(m5835x2, abstractC23632g, obj);
        }
        return obj;
    }
}
