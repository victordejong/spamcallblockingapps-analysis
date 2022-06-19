package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23501c;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23516h0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23531v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23534x;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23664j;
/* renamed from: e.k.a.c.d0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/e.class */
public class C23470e {

    /* renamed from: a */
    public final C23624f f65133a;

    /* renamed from: b */
    public final AbstractC23632g f65134b;

    /* renamed from: c */
    public final AbstractC23444c f65135c;

    /* renamed from: d */
    public final Map<String, AbstractC23488u> f65136d = new LinkedHashMap();

    /* renamed from: e */
    public List<C23516h0> f65137e;

    /* renamed from: f */
    public HashMap<String, AbstractC23488u> f65138f;

    /* renamed from: g */
    public HashSet<String> f65139g;

    /* renamed from: h */
    public HashSet<String> f65140h;

    /* renamed from: i */
    public AbstractC23491w f65141i;

    /* renamed from: j */
    public C23531v f65142j;

    /* renamed from: k */
    public C23486t f65143k;

    /* renamed from: l */
    public boolean f65144l;

    /* renamed from: m */
    public C23664j f65145m;

    public C23470e(AbstractC23444c abstractC23444c, AbstractC23632g abstractC23632g) {
        this.f65135c = abstractC23444c;
        this.f65134b = abstractC23632g;
        this.f65133a = abstractC23632g.f65501c;
    }

    /* renamed from: a */
    public Map<String, List<C23951v>> m6808a(Collection<AbstractC23488u> collection) {
        AbstractC23426b m6864e = this.f65133a.m6864e();
        HashMap hashMap = null;
        if (m6864e != null) {
            Iterator<AbstractC23488u> it = collection.iterator();
            HashMap hashMap2 = null;
            while (true) {
                hashMap = hashMap2;
                if (!it.hasNext()) {
                    break;
                }
                AbstractC23488u next = it.next();
                List<C23951v> mo6319D = m6864e.mo6319D(next.mo6108c());
                if (mo6319D != null && !mo6319D.isEmpty()) {
                    HashMap hashMap3 = hashMap2;
                    if (hashMap2 == null) {
                        hashMap3 = new HashMap();
                    }
                    hashMap3.put(next.f65171c.f66304a, mo6319D);
                    hashMap2 = hashMap3;
                }
            }
        }
        return hashMap == null ? Collections.emptyMap() : hashMap;
    }

    /* renamed from: b */
    public boolean m6807b() {
        Boolean m7286b = this.f65135c.mo6358b(null).m7286b(AbstractC23311k.EnumC23312a.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        return m7286b == null ? this.f65133a.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES) : m7286b.booleanValue();
    }

    /* renamed from: c */
    public void m6806c(Collection<AbstractC23488u> collection) {
        if (this.f65133a.m6867b()) {
            for (AbstractC23488u abstractC23488u : collection) {
                abstractC23488u.mo6688l(this.f65133a);
            }
        }
        C23486t c23486t = this.f65143k;
        if (c23486t != null) {
            c23486t.f65161b.m6386f(this.f65133a.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        C23664j c23664j = this.f65145m;
        if (c23664j != null) {
            c23664j.m6386f(this.f65133a.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
    }

    /* renamed from: d */
    public void m6805d(String str) {
        if (this.f65139g == null) {
            this.f65139g = new HashSet<>();
        }
        this.f65139g.add(str);
    }

    /* renamed from: e */
    public void m6804e(AbstractC23488u abstractC23488u) {
        AbstractC23488u put = this.f65136d.put(abstractC23488u.f65171c.f66304a, abstractC23488u);
        if (put == null || put == abstractC23488u) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("Duplicate property '");
        m8728C.append(abstractC23488u.f65171c.f66304a);
        m8728C.append("' for ");
        m8728C.append(this.f65135c.f65020a);
        throw new IllegalArgumentException(m8728C.toString());
    }

    /* renamed from: f */
    public AbstractC23700j<?> m6803f() {
        Collection<AbstractC23488u> values = this.f65136d.values();
        m6806c(values);
        C23501c c23501c = new C23501c(m6807b(), values, m6808a(values), this.f65133a.f65071b.f65030i);
        c23501c.m6727d();
        boolean z = !this.f65133a.m6859o(EnumC23942p.DEFAULT_VIEW_INCLUSION);
        if (!z) {
            Iterator<AbstractC23488u> it = values.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().mo6747v()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        C23501c c23501c2 = c23501c;
        if (this.f65142j != null) {
            c23501c2 = c23501c.m6722i(new C23534x(this.f65142j, C23949u.f66290h));
        }
        return new C23467c(this, this.f65135c, c23501c2, this.f65138f, this.f65139g, this.f65144l, this.f65140h, z);
    }
}
