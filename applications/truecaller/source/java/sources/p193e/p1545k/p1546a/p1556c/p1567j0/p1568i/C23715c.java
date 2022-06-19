package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.IOException;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1567j0.C23704b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.j0.i.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/c.class */
public class C23715c extends C23719g {

    /* renamed from: k */
    public final Map<String, Integer> f65742k;

    /* renamed from: l */
    public final Map<BitSet, String> f65743l;

    public C23715c(AbstractC23698i abstractC23698i, AbstractC23710f abstractC23710f, AbstractC23698i abstractC23698i2, C23624f c23624f, Collection<C23704b> collection) {
        super(abstractC23698i, abstractC23710f, null, false, abstractC23698i2, null);
        this.f65742k = new HashMap();
        boolean m6859o = c23624f.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        HashMap hashMap = new HashMap();
        int i = 0;
        for (C23704b c23704b : collection) {
            List<AbstractC23681s> m6352h = ((C23679q) c23624f.m6517w(c23624f.f65071b.f65022a.m5904l(c23704b.f65735a))).m6352h();
            BitSet bitSet = new BitSet(m6352h.size() + i);
            for (AbstractC23681s abstractC23681s : m6352h) {
                String name = abstractC23681s.getName();
                String lowerCase = m6859o ? name.toLowerCase() : name;
                Integer num = this.f65742k.get(lowerCase);
                int i2 = i;
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(i);
                    this.f65742k.put(lowerCase, Integer.valueOf(i));
                    i2 = i + 1;
                }
                bitSet.set(num2.intValue());
                i = i2;
            }
            String str = (String) hashMap.put(bitSet, c23704b.f65735a.getName());
            if (str != null) {
                throw new IllegalStateException(String.format("Subtypes %s and %s have the same signature and cannot be uniquely deduced.", str, c23704b.f65735a.getName()));
            }
        }
        this.f65743l = hashMap;
    }

    public C23715c(C23715c c23715c, AbstractC23462d abstractC23462d) {
        super(c23715c, abstractC23462d);
        this.f65742k = c23715c.f65742k;
        this.f65743l = c23715c.f65743l;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23719g, p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: d */
    public Object mo6206d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23381m enumC23381m;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l == EnumC23381m.START_OBJECT) {
            enumC23381m = abstractC23376j.mo5811i2();
        } else {
            enumC23381m = mo7142l;
            if (mo7142l != EnumC23381m.FIELD_NAME) {
                return m6211s(abstractC23376j, abstractC23632g, null, "Unexpected input");
            }
        }
        LinkedList linkedList = new LinkedList(this.f65743l.keySet());
        C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
        boolean m6487S = abstractC23632g.m6487S(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        while (enumC23381m == EnumC23381m.FIELD_NAME) {
            String mo5809k = abstractC23376j.mo5809k();
            String str = mo5809k;
            if (m6487S) {
                str = mo5809k.toLowerCase();
            }
            c23893a0.m5890A2(abstractC23376j);
            Integer num = this.f65742k.get(str);
            if (num != null) {
                int intValue = num.intValue();
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    if (!((BitSet) it.next()).get(intValue)) {
                        it.remove();
                    }
                }
                if (linkedList.size() == 1) {
                    return m6212r(abstractC23376j, abstractC23632g, c23893a0, this.f65743l.get(linkedList.get(0)));
                }
            }
            enumC23381m = abstractC23376j.mo5811i2();
        }
        return m6211s(abstractC23376j, abstractC23632g, c23893a0, String.format("Cannot deduce unique subtype of %s (%d candidates match)", C23914g.m5747t(this.f65762b), Integer.valueOf(linkedList.size())));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23719g, p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23713a, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e
    /* renamed from: f */
    public AbstractC23709e mo6204f(AbstractC23462d abstractC23462d) {
        return abstractC23462d == this.f65763c ? this : new C23715c(this, abstractC23462d);
    }
}
