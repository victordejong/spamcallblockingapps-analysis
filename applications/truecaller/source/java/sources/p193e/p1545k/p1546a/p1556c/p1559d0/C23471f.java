package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23321m0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23457j;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23506d0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23509f;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23516h0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23517i;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23527r;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23531v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23537z;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23635a0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23637b0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23908d;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.f */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/f.class */
public class C23471f extends AbstractC23465b implements Serializable {

    /* renamed from: f */
    public static final Class<?>[] f65146f = {Throwable.class};

    /* renamed from: g */
    public static final C23471f f65147g = new C23471f(new C23457j());

    public C23471f(C23457j c23457j) {
        super(c23457j);
    }

    /* renamed from: A */
    public AbstractC23488u m6802A(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, AbstractC23681s abstractC23681s) throws C23733k {
        C23664j mo5703r = abstractC23681s.mo5703r();
        AbstractC23698i m6830t = m6830t(abstractC23632g, mo5703r, mo5703r.mo6377e());
        C23506d0 c23506d0 = new C23506d0(abstractC23681s, m6830t, (AbstractC23709e) m6830t.f65731d, ((C23679q) abstractC23444c).f65652e.f65546j, mo5703r);
        AbstractC23700j<?> m6833q = m6833q(abstractC23632g, mo5703r);
        AbstractC23700j<?> abstractC23700j = m6833q;
        if (m6833q == null) {
            abstractC23700j = (AbstractC23700j) m6830t.f65730c;
        }
        AbstractC23488u abstractC23488u = c23506d0;
        if (abstractC23700j != null) {
            abstractC23488u = c23506d0.mo6683G(abstractC23632g.m6500F(abstractC23700j, c23506d0, m6830t));
        }
        return abstractC23488u;
    }

    /* renamed from: u */
    public void m6801u(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23470e c23470e) throws C23733k {
        ArrayList<AbstractC23681s> arrayList = null;
        HashSet hashSet = null;
        for (AbstractC23681s abstractC23681s : ((C23679q) abstractC23444c).m6352h()) {
            AbstractC23426b.C23427a mo6340j = abstractC23681s.mo6340j();
            if (mo6340j != null) {
                if (!(mo6340j.f65003a == AbstractC23426b.C23427a.EnumC23428a.BACK_REFERENCE)) {
                    continue;
                } else {
                    String str = mo6340j.f65004b;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        hashSet = new HashSet();
                        hashSet.add(str);
                    } else if (!hashSet.add(str)) {
                        StringBuilder m8728C = C22128a.m8728C("Multiple back-reference properties with name ");
                        m8728C.append(C23914g.m5777D(str));
                        throw new IllegalArgumentException(m8728C.toString());
                    }
                    arrayList.add(abstractC23681s);
                }
            }
        }
        if (arrayList != null) {
            for (AbstractC23681s abstractC23681s2 : arrayList) {
                AbstractC23426b.C23427a mo6340j2 = abstractC23681s2.mo6340j();
                String str2 = mo6340j2 == null ? null : mo6340j2.f65004b;
                AbstractC23488u m6796z = m6796z(abstractC23632g, abstractC23444c, abstractC23681s2, abstractC23681s2.mo5701t());
                if (c23470e.f65138f == null) {
                    c23470e.f65138f = new HashMap<>(4);
                }
                if (c23470e.f65133a.m6867b()) {
                    m6796z.mo6688l(c23470e.f65133a);
                }
                c23470e.f65138f.put(str2, m6796z);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x050d, code lost:
        if (r0 == null) goto L142;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0255  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6800v(p193e.p1545k.p1546a.p1556c.AbstractC23632g r10, p193e.p1545k.p1546a.p1556c.AbstractC23444c r11, p193e.p1545k.p1546a.p1556c.p1559d0.C23470e r12) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 1869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.C23471f.m6800v(e.k.a.c.g, e.k.a.c.c, e.k.a.c.d0.e):void");
    }

    /* renamed from: w */
    public void m6799w(AbstractC23444c abstractC23444c, C23470e c23470e) throws C23733k {
        LinkedHashMap<Object, AbstractC23663i> linkedHashMap;
        C23637b0 c23637b0 = ((C23679q) abstractC23444c).f65649b;
        if (c23637b0 != null) {
            if (!c23637b0.f65524i) {
                c23637b0.m6446h();
            }
            linkedHashMap = c23637b0.f65535t;
        } else {
            linkedHashMap = Collections.emptyMap();
        }
        if (linkedHashMap != null) {
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                AbstractC23663i abstractC23663i = (AbstractC23663i) entry.getValue();
                C23951v m5665a = C23951v.m5665a(abstractC23663i.getName());
                AbstractC23698i mo6377e = abstractC23663i.mo6377e();
                AbstractC23896b abstractC23896b = ((C23679q) abstractC23444c).f65652e.f65546j;
                Object key = entry.getKey();
                if (c23470e.f65137e == null) {
                    c23470e.f65137e = new ArrayList();
                }
                if (c23470e.f65133a.m6867b()) {
                    abstractC23663i.m6386f(c23470e.f65133a.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                }
                c23470e.f65137e.add(new C23516h0(m5665a, mo6377e, abstractC23663i, key));
            }
        }
    }

    /* renamed from: x */
    public void m6798x(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23470e c23470e) throws C23733k {
        AbstractC23488u abstractC23488u;
        C23537z c23537z;
        AbstractC23698i abstractC23698i;
        C23679q c23679q = (C23679q) abstractC23444c;
        C23635a0 c23635a0 = c23679q.f65656i;
        if (c23635a0 == null) {
            return;
        }
        Class<? extends AbstractC23316k0<?>> cls = c23635a0.f65512b;
        AbstractC23323n0 m6522l = abstractC23632g.m6522l(c23679q.f65652e, c23635a0);
        if (cls == AbstractC23321m0.class) {
            C23951v c23951v = c23635a0.f65511a;
            abstractC23488u = c23470e.f65136d.get(c23951v.f66304a);
            if (abstractC23488u == null) {
                throw new IllegalArgumentException(String.format("Invalid Object Id definition for %s: cannot find property with name %s", C23914g.m5747t(abstractC23444c.f65020a), C23914g.m5778C(c23951v)));
            }
            abstractC23698i = abstractC23488u.f65172d;
            c23537z = new C23537z(c23635a0.f65514d);
        } else {
            abstractC23698i = abstractC23632g.mo6470i().m5902n(abstractC23632g.m6465o(cls), AbstractC23316k0.class)[0];
            abstractC23488u = null;
            c23537z = abstractC23632g.m6523k(c23679q.f65652e, c23635a0);
        }
        c23470e.f65142j = C23531v.m6691a(abstractC23698i, c23635a0.f65511a, c23537z, abstractC23632g.m6456x(abstractC23698i), abstractC23488u, m6522l);
    }

    /* renamed from: y */
    public AbstractC23700j<Object> m6797y(AbstractC23632g abstractC23632g, AbstractC23698i abstractC23698i, AbstractC23444c abstractC23444c) throws C23733k {
        try {
            AbstractC23491w m6831s = m6831s(abstractC23632g, abstractC23444c);
            C23470e c23470e = new C23470e(abstractC23444c, abstractC23632g);
            c23470e.f65141i = m6831s;
            m6800v(abstractC23632g, abstractC23444c, c23470e);
            m6798x(abstractC23632g, abstractC23444c, c23470e);
            m6801u(abstractC23632g, abstractC23444c, c23470e);
            m6799w(abstractC23444c, c23470e);
            if (this.f65104a.m6868c()) {
                C23908d c23908d = (C23908d) this.f65104a.m6870a();
                while (c23908d.hasNext()) {
                    Objects.requireNonNull((AbstractC23472g) c23908d.next());
                }
            }
            C23464a m6803f = (!abstractC23698i.mo5986v() || m6831s.mo6605l()) ? c23470e.m6803f() : new C23464a(c23470e, c23470e.f65135c, c23470e.f65138f, c23470e.f65136d);
            if (this.f65104a.m6868c()) {
                C23908d c23908d2 = (C23908d) this.f65104a.m6870a();
                while (c23908d2.hasNext()) {
                    Objects.requireNonNull((AbstractC23472g) c23908d2.next());
                }
            }
            return m6803f;
        } catch (IllegalArgumentException e) {
            C23616b c23616b = new C23616b(abstractC23632g.f65505g, C23914g.m5757j(e), abstractC23444c, (AbstractC23681s) null);
            c23616b.initCause(e);
            throw c23616b;
        } catch (NoClassDefFoundError e2) {
            return new C23509f(e2);
        }
    }

    /* renamed from: z */
    public AbstractC23488u m6796z(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, AbstractC23681s abstractC23681s, AbstractC23698i abstractC23698i) throws C23733k {
        C23664j mo5699v = abstractC23681s.mo5699v();
        C23664j c23664j = mo5699v;
        if (mo5699v == null) {
            c23664j = abstractC23681s.mo5704q();
        }
        boolean z = false;
        if (c23664j == null) {
            abstractC23632g.m6483W(abstractC23444c, abstractC23681s, "No non-constructor mutator available", new Object[0]);
            throw null;
        }
        AbstractC23698i m6830t = m6830t(abstractC23632g, c23664j, abstractC23698i);
        AbstractC23709e abstractC23709e = (AbstractC23709e) m6830t.f65731d;
        C23527r c23527r = c23664j instanceof C23664j ? new C23527r(abstractC23681s, m6830t, abstractC23709e, ((C23679q) abstractC23444c).f65652e.f65546j, c23664j) : new C23517i(abstractC23681s, m6830t, abstractC23709e, ((C23679q) abstractC23444c).f65652e.f65546j, c23664j);
        AbstractC23700j<?> m6833q = m6833q(abstractC23632g, c23664j);
        AbstractC23700j<?> abstractC23700j = m6833q;
        if (m6833q == null) {
            abstractC23700j = (AbstractC23700j) m6830t.f65730c;
        }
        AbstractC23488u abstractC23488u = c23527r;
        if (abstractC23700j != null) {
            abstractC23488u = c23527r.mo6683G(abstractC23632g.m6500F(abstractC23700j, c23527r, m6830t));
        }
        AbstractC23426b.C23427a mo6340j = abstractC23681s.mo6340j();
        if (mo6340j != null) {
            if (mo6340j.f65003a == AbstractC23426b.C23427a.EnumC23428a.MANAGED_REFERENCE) {
                z = true;
            }
            if (z) {
                abstractC23488u.f65178j = mo6340j.f65004b;
            }
        }
        C23635a0 mo6341i = abstractC23681s.mo6341i();
        if (mo6341i != null) {
            abstractC23488u.f65179k = mo6341i;
        }
        return abstractC23488u;
    }
}
