package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23638c;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23648d;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d;
import p193e.p1545k.p1546a.p1556c.p1567j0.C23704b;
/* renamed from: e.k.a.c.j0.i.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/n.class */
public class C23726n extends AbstractC23708d implements Serializable {
    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d
    /* renamed from: a */
    public Collection<C23704b> mo6196a(AbstractC23458k<?> abstractC23458k, AbstractC23663i abstractC23663i, AbstractC23698i abstractC23698i) {
        List<C23704b> mo6299X;
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        Class<?> mo6378d = abstractC23698i == null ? abstractC23663i.mo6378d() : abstractC23698i.f65728a;
        HashMap<C23704b, C23704b> hashMap = new HashMap<>();
        if (abstractC23663i != null && (mo6299X = m6864e.mo6299X(abstractC23663i)) != null) {
            for (C23704b c23704b : mo6299X) {
                m6193d(C23648d.m6406h(abstractC23458k, c23704b.f65735a), c23704b, abstractC23458k, m6864e, hashMap);
            }
        }
        m6193d(C23648d.m6406h(abstractC23458k, mo6378d), new C23704b(mo6378d, null), abstractC23458k, m6864e, hashMap);
        return new ArrayList(hashMap.values());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d
    /* renamed from: b */
    public Collection<C23704b> mo6195b(AbstractC23458k<?> abstractC23458k, C23638c c23638c) {
        Class<?> cls = c23638c.f65538b;
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        m6192e(c23638c, new C23704b(cls, null), abstractC23458k, hashSet, linkedHashMap);
        return m6191f(cls, hashSet, linkedHashMap);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23708d
    /* renamed from: c */
    public Collection<C23704b> mo6194c(AbstractC23458k<?> abstractC23458k, AbstractC23663i abstractC23663i, AbstractC23698i abstractC23698i) {
        List<C23704b> mo6299X;
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        Class<?> cls = abstractC23698i.f65728a;
        HashSet hashSet = new HashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        m6192e(C23648d.m6406h(abstractC23458k, cls), new C23704b(cls, null), abstractC23458k, hashSet, linkedHashMap);
        if (abstractC23663i != null && (mo6299X = m6864e.mo6299X(abstractC23663i)) != null) {
            for (C23704b c23704b : mo6299X) {
                m6192e(C23648d.m6406h(abstractC23458k, c23704b.f65735a), c23704b, abstractC23458k, hashSet, linkedHashMap);
            }
        }
        return m6191f(cls, hashSet, linkedHashMap);
    }

    /* renamed from: d */
    public void m6193d(C23638c c23638c, C23704b c23704b, AbstractC23458k<?> abstractC23458k, AbstractC23426b abstractC23426b, HashMap<C23704b, C23704b> hashMap) {
        C23704b c23704b2 = c23704b;
        if (!c23704b.m6218a()) {
            String mo6298Y = abstractC23426b.mo6298Y(c23638c);
            c23704b2 = c23704b;
            if (mo6298Y != null) {
                c23704b2 = new C23704b(c23704b.f65735a, mo6298Y);
            }
        }
        C23704b c23704b3 = new C23704b(c23704b2.f65735a, null);
        if (hashMap.containsKey(c23704b3)) {
            if (!c23704b2.m6218a() || hashMap.get(c23704b3).m6218a()) {
                return;
            }
            hashMap.put(c23704b3, c23704b2);
            return;
        }
        hashMap.put(c23704b3, c23704b2);
        List<C23704b> mo6299X = abstractC23426b.mo6299X(c23638c);
        if (mo6299X == null || mo6299X.isEmpty()) {
            return;
        }
        for (C23704b c23704b4 : mo6299X) {
            m6193d(C23648d.m6406h(abstractC23458k, c23704b4.f65735a), c23704b4, abstractC23458k, abstractC23426b, hashMap);
        }
    }

    /* renamed from: e */
    public void m6192e(C23638c c23638c, C23704b c23704b, AbstractC23458k<?> abstractC23458k, Set<Class<?>> set, Map<String, C23704b> map) {
        List<C23704b> mo6299X;
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        C23704b c23704b2 = c23704b;
        if (!c23704b.m6218a()) {
            String mo6298Y = m6864e.mo6298Y(c23638c);
            c23704b2 = c23704b;
            if (mo6298Y != null) {
                c23704b2 = new C23704b(c23704b.f65735a, mo6298Y);
            }
        }
        if (c23704b2.m6218a()) {
            map.put(c23704b2.f65737c, c23704b2);
        }
        if (!set.add(c23704b2.f65735a) || (mo6299X = m6864e.mo6299X(c23638c)) == null || mo6299X.isEmpty()) {
            return;
        }
        for (C23704b c23704b3 : mo6299X) {
            m6192e(C23648d.m6406h(abstractC23458k, c23704b3.f65735a), c23704b3, abstractC23458k, set, map);
        }
    }

    /* renamed from: f */
    public Collection<C23704b> m6191f(Class<?> cls, Set<Class<?>> set, Map<String, C23704b> map) {
        ArrayList arrayList = new ArrayList(map.values());
        for (C23704b c23704b : map.values()) {
            set.remove(c23704b.f65735a);
        }
        for (Class<?> cls2 : set) {
            if (cls2 != cls || !Modifier.isAbstract(cls2.getModifiers())) {
                arrayList.add(new C23704b(cls2, null));
            }
        }
        return arrayList;
    }
}
