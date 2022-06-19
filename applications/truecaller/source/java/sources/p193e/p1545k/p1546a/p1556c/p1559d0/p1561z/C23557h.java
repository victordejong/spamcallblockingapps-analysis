package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23446b;
import p193e.p1545k.p1546a.p1556c.p1558c0.EnumC23448d;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23490v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/h.class */
public class C23557h extends AbstractC23561i<Collection<Object>> implements AbstractC23474i {

    /* renamed from: h */
    public final AbstractC23700j<Object> f65349h;

    /* renamed from: i */
    public final AbstractC23709e f65350i;

    /* renamed from: j */
    public final AbstractC23491w f65351j;

    /* renamed from: k */
    public final AbstractC23700j<Object> f65352k;

    /* renamed from: e.k.a.c.d0.z.h$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/h$a.class */
    public static final class C23558a extends C23502c0.AbstractC23503a {

        /* renamed from: b */
        public final C23559b f65353b;

        /* renamed from: c */
        public final List<Object> f65354c = new ArrayList();

        public C23558a(C23559b c23559b, C23490v c23490v, Class<?> cls) {
            super(c23490v, cls);
            this.f65353b = c23559b;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0.AbstractC23503a
        /* renamed from: a */
        public void mo6544a(Object obj, Object obj2) throws IOException {
            C23559b c23559b = this.f65353b;
            Iterator<C23558a> it = c23559b.f65357c.iterator();
            Collection collection = c23559b.f65356b;
            while (true) {
                Collection collection2 = collection;
                if (it.hasNext()) {
                    C23558a next = it.next();
                    if (obj.equals(next.f65219a.f65183d.f65216b.f64507c)) {
                        it.remove();
                        collection2.add(obj2);
                        collection2.addAll(next.f65354c);
                        return;
                    }
                    collection = next.f65354c;
                } else {
                    throw new IllegalArgumentException(C22128a.m8547y2("Trying to resolve a forward reference with id [", obj, "] that wasn't previously seen as unresolved."));
                }
            }
        }
    }

    /* renamed from: e.k.a.c.d0.z.h$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/h$b.class */
    public static class C23559b {

        /* renamed from: a */
        public final Class<?> f65355a;

        /* renamed from: b */
        public final Collection<Object> f65356b;

        /* renamed from: c */
        public List<C23558a> f65357c = new ArrayList();

        public C23559b(Class<?> cls, Collection<Object> collection) {
            this.f65355a = cls;
            this.f65356b = collection;
        }

        /* renamed from: a */
        public void m6585a(Object obj) {
            if (this.f65357c.isEmpty()) {
                this.f65356b.add(obj);
            } else {
                ((C23558a) C22128a.m8714F1(this.f65357c, -1)).f65354c.add(obj);
            }
        }
    }

    public C23557h(AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23491w abstractC23491w) {
        super(abstractC23698i, (AbstractC23484r) null, (Boolean) null);
        this.f65349h = abstractC23700j;
        this.f65350i = abstractC23709e;
        this.f65351j = abstractC23491w;
        this.f65352k = null;
    }

    public C23557h(AbstractC23698i abstractC23698i, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23491w abstractC23491w, AbstractC23700j<Object> abstractC23700j2, AbstractC23484r abstractC23484r, Boolean bool) {
        super(abstractC23698i, abstractC23484r, bool);
        this.f65349h = abstractC23700j;
        this.f65350i = abstractC23709e;
        this.f65351j = abstractC23491w;
        this.f65352k = abstractC23700j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fe  */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23700j mo6534a(p193e.p1545k.p1546a.p1556c.AbstractC23632g r9, p193e.p1545k.p1546a.p1556c.AbstractC23462d r10) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h.mo6534a(e.k.a.c.g, e.k.a.c.d):e.k.a.c.j");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Collection<Object> collection;
        AbstractC23700j<Object> abstractC23700j = this.f65352k;
        if (abstractC23700j != null) {
            collection = (Collection) this.f65351j.mo6595w(abstractC23632g, abstractC23700j.mo6232d(abstractC23376j, abstractC23632g));
        } else if (abstractC23376j.mo7146V1()) {
            collection = mo6589o0(abstractC23376j, abstractC23632g, mo6588p0(abstractC23632g));
        } else if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            String mo5817U0 = abstractC23376j.mo5817U0();
            Class<?> cls = this.f65309a;
            if (mo5817U0.isEmpty()) {
                EnumC23446b m6463q = abstractC23632g.m6463q(EnumC23876f.Collection, cls, EnumC23448d.EmptyString);
                m6641r(abstractC23632g, m6463q, cls, mo5817U0, "empty String (\"\")");
                if (m6463q != null) {
                    collection = (Collection) m6675B(abstractC23632g, m6463q, cls);
                }
            }
            collection = m6587q0(abstractC23376j, abstractC23632g, mo6588p0(abstractC23632g));
        } else {
            collection = m6587q0(abstractC23376j, abstractC23632g, mo6588p0(abstractC23632g));
        }
        return collection;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        Collection<Object> collection = (Collection) obj;
        return abstractC23376j.mo7146V1() ? mo6589o0(abstractC23376j, abstractC23632g, collection) : m6587q0(abstractC23376j, abstractC23632g, collection);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return this.f65351j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i
    /* renamed from: m0 */
    public AbstractC23700j<Object> mo6541m0() {
        return this.f65349h;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return this.f65349h == null && this.f65350i == null && this.f65352k == null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Collection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0173, code lost:
        if (r8.m6488R(p193e.p1545k.p1546a.p1556c.EnumC23694h.WRAP_EXCEPTIONS) != false) goto L57;
     */
    /* renamed from: o0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.Object> mo6589o0(p193e.p1545k.p1546a.p1548b.AbstractC23376j r7, p193e.p1545k.p1546a.p1556c.AbstractC23632g r8, java.util.Collection<java.lang.Object> r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23557h.mo6589o0(e.k.a.b.j, e.k.a.c.g, java.util.Collection):java.util.Collection");
    }

    /* renamed from: p0 */
    public Collection<Object> mo6588p0(AbstractC23632g abstractC23632g) throws IOException {
        return (Collection) this.f65351j.mo6596v(abstractC23632g);
    }

    /* renamed from: q0 */
    public final Collection<Object> m6587q0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Collection<Object> collection) throws IOException {
        Object obj;
        Boolean bool = this.f65364g;
        if (!(bool == Boolean.TRUE || (bool == null && abstractC23632g.m6488R(EnumC23694h.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            abstractC23632g.m6498H(this.f65361d, abstractC23376j);
            throw null;
        }
        AbstractC23700j<Object> abstractC23700j = this.f65349h;
        AbstractC23709e abstractC23709e = this.f65350i;
        try {
            if (!abstractC23376j.mo7150O1(EnumC23381m.VALUE_NULL)) {
                obj = abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
            } else if (this.f65363f) {
                return collection;
            } else {
                obj = this.f65362e.mo6233c(abstractC23632g);
            }
            collection.add(obj);
            return collection;
        } catch (Exception e) {
            if (!abstractC23632g.m6488R(EnumC23694h.WRAP_EXCEPTIONS)) {
                C23914g.m5770K(e);
            }
            throw C23733k.m6158i(e, Object.class, collection.size());
        }
    }

    /* renamed from: r0 */
    public C23557h mo6586r0(AbstractC23700j<?> abstractC23700j, AbstractC23700j<?> abstractC23700j2, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r, Boolean bool) {
        return new C23557h(this.f65361d, abstractC23700j2, abstractC23709e, this.f65351j, abstractC23700j, abstractC23484r, bool);
    }
}
