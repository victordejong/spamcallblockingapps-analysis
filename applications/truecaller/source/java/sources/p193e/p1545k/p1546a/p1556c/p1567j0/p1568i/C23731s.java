package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1545k.p1546a.p1556c.AbstractC23614e;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.j0.i.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/s.class */
public class C23731s extends AbstractC23730r {

    /* renamed from: c */
    public final AbstractC23458k<?> f65771c;

    /* renamed from: d */
    public final ConcurrentHashMap<String, String> f65772d;

    /* renamed from: e */
    public final Map<String, AbstractC23698i> f65773e;

    /* renamed from: f */
    public final boolean f65774f;

    public C23731s(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, ConcurrentHashMap<String, String> concurrentHashMap, HashMap<String, AbstractC23698i> hashMap) {
        super(abstractC23698i, abstractC23458k.f65071b.f65022a);
        this.f65771c = abstractC23458k;
        this.f65772d = concurrentHashMap;
        this.f65773e = hashMap;
        this.f65774f = abstractC23458k.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_VALUES);
    }

    /* renamed from: g */
    public static String m6166g(Class<?> cls) {
        String name = cls.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            name = name.substring(lastIndexOf + 1);
        }
        return name;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: a */
    public String mo6170a(Object obj) {
        return m6165h(obj.getClass());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: b */
    public String mo6169b() {
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<String, AbstractC23698i> entry : this.f65773e.entrySet()) {
            if (entry.getValue().mo5984y()) {
                treeSet.add(entry.getKey());
            }
        }
        return treeSet.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: c */
    public AbstractC23698i mo6168c(AbstractC23614e abstractC23614e, String str) {
        String str2 = str;
        if (this.f65774f) {
            str2 = str.toLowerCase();
        }
        return this.f65773e.get(str2);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: e */
    public String mo6167e(Object obj, Class<?> cls) {
        return obj == null ? m6165h(cls) : m6165h(obj.getClass());
    }

    /* renamed from: h */
    public String m6165h(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        String name = cls.getName();
        String str = this.f65772d.get(name);
        String str2 = str;
        if (str == null) {
            Class<?> cls2 = this.f65769a.m5914b(null, cls, C23887o.f66073e).f65728a;
            if (this.f65771c.m6860n()) {
                str = this.f65771c.m6864e().mo6298Y(((C23679q) this.f65771c.m6861m(cls2)).f65652e);
            }
            String str3 = str;
            if (str == null) {
                str3 = m6166g(cls2);
            }
            this.f65772d.put(name, str3);
            str2 = str3;
        }
        return str2;
    }

    public String toString() {
        return String.format("[%s; id-to-type=%s]", C23731s.class.getName(), this.f65773e);
    }
}
