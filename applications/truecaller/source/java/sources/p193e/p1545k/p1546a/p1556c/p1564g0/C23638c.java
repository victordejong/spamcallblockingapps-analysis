package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23661h;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23666k;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c.class */
public final class C23638c extends AbstractC23636b implements AbstractC23652e0 {

    /* renamed from: o */
    public static final C23639a f65536o = new C23639a(null, Collections.emptyList(), Collections.emptyList());

    /* renamed from: a */
    public final AbstractC23698i f65537a;

    /* renamed from: b */
    public final Class<?> f65538b;

    /* renamed from: c */
    public final C23884n f65539c;

    /* renamed from: d */
    public final List<AbstractC23698i> f65540d;

    /* renamed from: e */
    public final AbstractC23426b f65541e;

    /* renamed from: f */
    public final C23887o f65542f;

    /* renamed from: g */
    public final AbstractC23682t.AbstractC23683a f65543g;

    /* renamed from: h */
    public final Class<?> f65544h;

    /* renamed from: i */
    public final boolean f65545i;

    /* renamed from: j */
    public final AbstractC23896b f65546j;

    /* renamed from: k */
    public C23639a f65547k;

    /* renamed from: l */
    public C23668l f65548l;

    /* renamed from: m */
    public List<C23657g> f65549m;

    /* renamed from: n */
    public transient Boolean f65550n;

    /* renamed from: e.k.a.c.g0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c$a.class */
    public static final class C23639a {

        /* renamed from: a */
        public final C23650e f65551a;

        /* renamed from: b */
        public final List<C23650e> f65552b;

        /* renamed from: c */
        public final List<C23664j> f65553c;

        public C23639a(C23650e c23650e, List<C23650e> list, List<C23664j> list2) {
            this.f65551a = c23650e;
            this.f65552b = list;
            this.f65553c = list2;
        }
    }

    public C23638c(AbstractC23698i abstractC23698i, Class<?> cls, List<AbstractC23698i> list, Class<?> cls2, AbstractC23896b abstractC23896b, C23884n c23884n, AbstractC23426b abstractC23426b, AbstractC23682t.AbstractC23683a abstractC23683a, C23887o c23887o, boolean z) {
        this.f65537a = abstractC23698i;
        this.f65538b = cls;
        this.f65540d = list;
        this.f65544h = cls2;
        this.f65546j = abstractC23896b;
        this.f65539c = c23884n;
        this.f65541e = abstractC23426b;
        this.f65543g = abstractC23683a;
        this.f65542f = c23887o;
        this.f65545i = z;
    }

    public C23638c(Class<?> cls) {
        this.f65537a = null;
        this.f65538b = cls;
        this.f65540d = Collections.emptyList();
        this.f65544h = null;
        this.f65546j = AbstractC23671o.f65635b;
        this.f65539c = C23884n.f66055g;
        this.f65541e = null;
        this.f65543g = null;
        this.f65542f = null;
        this.f65545i = false;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0
    /* renamed from: a */
    public AbstractC23698i mo6404a(Type type) {
        return this.f65542f.m5914b(null, type, this.f65539c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: c */
    public <A extends Annotation> A mo6387c(Class<A> cls) {
        return (A) this.f65546j.mo5787a(cls);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65538b;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65537a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23638c.class)) {
            return false;
        }
        if (((C23638c) obj).f65538b != this.f65538b) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x02c5 A[EDGE_INSN: B:231:0x02c5->B:89:0x02c5 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d0  */
    /* JADX WARN: Type inference failed for: r0v285, types: [java.util.List] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1556c.p1564g0.C23638c.C23639a m6444f() {
        /*
            Method dump skipped, instructions count: 1750
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23638c.m6444f():e.k.a.c.g0.c$a");
    }

    /* renamed from: g */
    public final C23668l m6443g() {
        boolean z;
        Class<?> mo6337a;
        C23668l c23668l = this.f65548l;
        C23668l c23668l2 = c23668l;
        if (c23668l == null) {
            AbstractC23698i abstractC23698i = this.f65537a;
            if (abstractC23698i == null) {
                c23668l2 = new C23668l();
            } else {
                AbstractC23426b abstractC23426b = this.f65541e;
                AbstractC23682t.AbstractC23683a abstractC23683a = this.f65543g;
                C23887o c23887o = this.f65542f;
                List<AbstractC23698i> list = this.f65540d;
                Class<?> cls = this.f65544h;
                C23666k c23666k = new C23666k(abstractC23426b, abstractC23683a, this.f65545i);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                c23666k.m6382f(this, abstractC23698i.f65728a, linkedHashMap, cls);
                Iterator<AbstractC23698i> it = list.iterator();
                while (true) {
                    Class<?> cls2 = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractC23698i next = it.next();
                    AbstractC23682t.AbstractC23683a abstractC23683a2 = c23666k.f65625d;
                    if (abstractC23683a2 != null) {
                        cls2 = abstractC23683a2.mo6337a(next.f65728a);
                    }
                    c23666k.m6382f(new AbstractC23652e0.C23653a(c23887o, next.mo5924j()), next.f65728a, linkedHashMap, cls2);
                }
                AbstractC23682t.AbstractC23683a abstractC23683a3 = c23666k.f65625d;
                if (abstractC23683a3 == null || (mo6337a = abstractC23683a3.mo6337a(Object.class)) == null) {
                    z = false;
                } else {
                    c23666k.m6381g(this, abstractC23698i.f65728a, linkedHashMap, mo6337a);
                    z = true;
                }
                if (z && c23666k.f65666a != null && !linkedHashMap.isEmpty()) {
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        C23691y c23691y = (C23691y) entry.getKey();
                        if ("hashCode".equals(c23691y.f65681a) && c23691y.f65682b.length == 0) {
                            try {
                                Method declaredMethod = Object.class.getDeclaredMethod(c23691y.f65681a, new Class[0]);
                                if (declaredMethod != null) {
                                    C23666k.C23667a c23667a = (C23666k.C23667a) entry.getValue();
                                    c23667a.f65629c = c23666k.m6333d(c23667a.f65629c, declaredMethod.getDeclaredAnnotations());
                                    c23667a.f65628b = declaredMethod;
                                }
                            } catch (Exception e) {
                            }
                        }
                    }
                }
                if (linkedHashMap.isEmpty()) {
                    c23668l2 = new C23668l();
                } else {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap.size());
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        C23666k.C23667a c23667a2 = (C23666k.C23667a) entry2.getValue();
                        Method method = c23667a2.f65628b;
                        C23664j c23664j = method == null ? null : new C23664j(c23667a2.f65627a, method, c23667a2.f65629c.mo6364b(), null);
                        if (c23664j != null) {
                            linkedHashMap2.put(entry2.getKey(), c23664j);
                        }
                    }
                    c23668l2 = new C23668l(linkedHashMap2);
                }
            }
            this.f65548l = c23668l2;
        }
        return c23668l2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return this.f65538b.getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.List] */
    /* renamed from: h */
    public Iterable<C23657g> m6442h() {
        ArrayList arrayList;
        List<C23657g> list = this.f65549m;
        ArrayList arrayList2 = list;
        if (list == null) {
            AbstractC23698i abstractC23698i = this.f65537a;
            if (abstractC23698i == null) {
                arrayList = Collections.emptyList();
            } else {
                Map<String, C23661h.C23662a> m6389f = new C23661h(this.f65541e, this.f65542f, this.f65543g, this.f65545i).m6389f(this, abstractC23698i, null);
                if (m6389f == null) {
                    arrayList = Collections.emptyList();
                } else {
                    arrayList = new ArrayList(m6389f.size());
                    for (C23661h.C23662a c23662a : m6389f.values()) {
                        arrayList.add(new C23657g(c23662a.f65614a, c23662a.f65615b, c23662a.f65616c.mo6364b()));
                    }
                }
            }
            this.f65549m = arrayList;
            arrayList2 = arrayList;
        }
        return arrayList2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65538b.getName().hashCode();
    }

    /* renamed from: i */
    public List<C23650e> m6441i() {
        return m6444f().f65552b;
    }

    /* renamed from: j */
    public List<C23664j> m6440j() {
        return m6444f().f65553c;
    }

    /* renamed from: k */
    public boolean m6439k() {
        Boolean bool = this.f65550n;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(C23914g.m5741z(this.f65538b));
            this.f65550n = bool2;
        }
        return bool2.booleanValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        return C22128a.m8639b2(this.f65538b, C22128a.m8728C("[AnnotedClass "), "]");
    }
}
