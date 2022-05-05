package p081h.p203i.p401g;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p081h.p203i.p401g.AbstractC10253g;
import p081h.p203i.p401g.AbstractC10437l0;
/* renamed from: h.i.g.f1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/f1.class */
public final class C10247f1 implements AbstractC10437l0 {

    /* renamed from: b */
    public static final C10247f1 f23075b = new C10247f1(Collections.emptyMap(), Collections.emptyMap());

    /* renamed from: c */
    public static final C10252d f23076c = new C10252d();

    /* renamed from: a */
    public final Map<Integer, C10250c> f23077a;

    /* renamed from: h.i.g.f1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/f1$b.class */
    public static final class C10249b implements AbstractC10437l0.AbstractC10438a {

        /* renamed from: a */
        public Map<Integer, C10250c> f23078a;

        /* renamed from: b */
        public int f23079b;

        /* renamed from: c */
        public C10250c.C10251a f23080c;

        /* renamed from: d */
        public static C10249b m13007d() {
            C10249b bVar = new C10249b();
            bVar.m13018a();
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: E */
        public C10247f1 mo11825E() {
            return build();
        }

        /* renamed from: a */
        public C10249b m13016a(int i, int i2) {
            if (i != 0) {
                m13017a(i).m12978b(i2);
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        /* renamed from: a */
        public C10249b m13015a(int i, C10250c cVar) {
            if (i != 0) {
                if (this.f23080c != null && this.f23079b == i) {
                    this.f23080c = null;
                    this.f23079b = 0;
                }
                if (this.f23078a.isEmpty()) {
                    this.f23078a = new TreeMap();
                }
                this.f23078a.put(Integer.valueOf(i), cVar);
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        /* renamed from: a */
        public C10249b m13013a(AbstractC10253g gVar) throws C10222a0 {
            try {
                AbstractC10267h c = gVar.mo12951c();
                m13012a(c);
                c.mo12924a(0);
                return this;
            } catch (C10222a0 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e2);
            }
        }

        /* renamed from: a */
        public C10249b m13012a(AbstractC10267h hVar) throws IOException {
            int r;
            do {
                r = hVar.mo12899r();
                if (r == 0) {
                    break;
                }
            } while (m13014a(r, hVar));
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public C10249b mo11837a(AbstractC10267h hVar, C10459r rVar) throws IOException {
            m13012a(hVar);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public C10249b mo11836a(byte[] bArr) throws C10222a0 {
            try {
                AbstractC10267h a = AbstractC10267h.m12937a(bArr);
                m13012a(a);
                a.mo12924a(0);
                return this;
            } catch (C10222a0 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
            }
        }

        /* renamed from: a */
        public final C10250c.C10251a m13017a(int i) {
            C10250c.C10251a aVar = this.f23080c;
            if (aVar != null) {
                int i2 = this.f23079b;
                if (i == i2) {
                    return aVar;
                }
                m13015a(i2, aVar.m12985a());
            }
            if (i == 0) {
                return null;
            }
            C10250c cVar = this.f23078a.get(Integer.valueOf(i));
            this.f23079b = i;
            this.f23080c = C10250c.m12986g();
            if (cVar != null) {
                this.f23080c.m12982a(cVar);
            }
            return this.f23080c;
        }

        /* renamed from: a */
        public final void m13018a() {
            this.f23078a = Collections.emptyMap();
            this.f23079b = 0;
            this.f23080c = null;
        }

        /* renamed from: a */
        public boolean m13014a(int i, AbstractC10267h hVar) throws IOException {
            int a = C10406k1.m11927a(i);
            int b = C10406k1.m11924b(i);
            if (b == 0) {
                m13017a(a).m12978b(hVar.mo12907j());
                return true;
            } else if (b == 1) {
                m13017a(a).m12983a(hVar.mo12911g());
                return true;
            } else if (b == 2) {
                m13017a(a).m12980a(hVar.mo12918c());
                return true;
            } else if (b == 3) {
                C10249b d = C10247f1.m13019d();
                hVar.mo12923a(a, d, C10452p.m11796a());
                m13017a(a).m12981a(d.build());
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m13017a(a).m12984a(hVar.mo12913f());
                    return true;
                }
                throw C10222a0.m13073f();
            }
        }

        /* renamed from: b */
        public C10249b m13009b(int i, C10250c cVar) {
            if (i != 0) {
                if (m13010b(i)) {
                    m13017a(i).m12982a(cVar);
                } else {
                    m13015a(i, cVar);
                }
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        /* renamed from: b */
        public C10249b m13008b(C10247f1 f1Var) {
            if (f1Var != C10247f1.m13020c()) {
                for (Map.Entry entry : f1Var.f23077a.entrySet()) {
                    m13009b(((Integer) entry.getKey()).intValue(), (C10250c) entry.getValue());
                }
            }
            return this;
        }

        /* renamed from: b */
        public boolean m13010b(int i) {
            if (i != 0) {
                return i == this.f23079b || this.f23078a.containsKey(Integer.valueOf(i));
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        public C10247f1 build() {
            C10247f1 f1Var;
            m13017a(0);
            if (this.f23078a.isEmpty()) {
                f1Var = C10247f1.m13020c();
            } else {
                f1Var = new C10247f1(Collections.unmodifiableMap(this.f23078a), Collections.unmodifiableMap(((TreeMap) this.f23078a).descendingMap()));
            }
            this.f23078a = null;
            return f1Var;
        }

        public C10249b clone() {
            m13017a(0);
            Map unmodifiableMap = Collections.unmodifiableMap(((TreeMap) this.f23078a).descendingMap());
            C10249b d = C10247f1.m13019d();
            d.m13008b(new C10247f1(this.f23078a, unmodifiableMap));
            return d;
        }
    }

    /* renamed from: h.i.g.f1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/f1$c.class */
    public static final class C10250c {

        /* renamed from: a */
        public List<Long> f23081a;

        /* renamed from: b */
        public List<Integer> f23082b;

        /* renamed from: c */
        public List<Long> f23083c;

        /* renamed from: d */
        public List<AbstractC10253g> f23084d;

        /* renamed from: e */
        public List<C10247f1> f23085e;

        /* renamed from: h.i.g.f1$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/f1$c$a.class */
        public static final class C10251a {

            /* renamed from: a */
            public C10250c f23086a;

            /* renamed from: c */
            public static C10251a m12977c() {
                C10251a aVar = new C10251a();
                aVar.f23086a = new C10250c();
                return aVar;
            }

            /* renamed from: a */
            public C10251a m12984a(int i) {
                if (this.f23086a.f23082b == null) {
                    this.f23086a.f23082b = new ArrayList();
                }
                this.f23086a.f23082b.add(Integer.valueOf(i));
                return this;
            }

            /* renamed from: a */
            public C10251a m12983a(long j) {
                if (this.f23086a.f23083c == null) {
                    this.f23086a.f23083c = new ArrayList();
                }
                this.f23086a.f23083c.add(Long.valueOf(j));
                return this;
            }

            /* renamed from: a */
            public C10251a m12982a(C10250c cVar) {
                if (!cVar.f23081a.isEmpty()) {
                    if (this.f23086a.f23081a == null) {
                        this.f23086a.f23081a = new ArrayList();
                    }
                    this.f23086a.f23081a.addAll(cVar.f23081a);
                }
                if (!cVar.f23082b.isEmpty()) {
                    if (this.f23086a.f23082b == null) {
                        this.f23086a.f23082b = new ArrayList();
                    }
                    this.f23086a.f23082b.addAll(cVar.f23082b);
                }
                if (!cVar.f23083c.isEmpty()) {
                    if (this.f23086a.f23083c == null) {
                        this.f23086a.f23083c = new ArrayList();
                    }
                    this.f23086a.f23083c.addAll(cVar.f23083c);
                }
                if (!cVar.f23084d.isEmpty()) {
                    if (this.f23086a.f23084d == null) {
                        this.f23086a.f23084d = new ArrayList();
                    }
                    this.f23086a.f23084d.addAll(cVar.f23084d);
                }
                if (!cVar.f23085e.isEmpty()) {
                    if (this.f23086a.f23085e == null) {
                        this.f23086a.f23085e = new ArrayList();
                    }
                    this.f23086a.f23085e.addAll(cVar.f23085e);
                }
                return this;
            }

            /* renamed from: a */
            public C10251a m12981a(C10247f1 f1Var) {
                if (this.f23086a.f23085e == null) {
                    this.f23086a.f23085e = new ArrayList();
                }
                this.f23086a.f23085e.add(f1Var);
                return this;
            }

            /* renamed from: a */
            public C10251a m12980a(AbstractC10253g gVar) {
                if (this.f23086a.f23084d == null) {
                    this.f23086a.f23084d = new ArrayList();
                }
                this.f23086a.f23084d.add(gVar);
                return this;
            }

            /* renamed from: a */
            public C10250c m12985a() {
                if (this.f23086a.f23081a == null) {
                    this.f23086a.f23081a = Collections.emptyList();
                } else {
                    C10250c cVar = this.f23086a;
                    cVar.f23081a = Collections.unmodifiableList(cVar.f23081a);
                }
                if (this.f23086a.f23082b == null) {
                    this.f23086a.f23082b = Collections.emptyList();
                } else {
                    C10250c cVar2 = this.f23086a;
                    cVar2.f23082b = Collections.unmodifiableList(cVar2.f23082b);
                }
                if (this.f23086a.f23083c == null) {
                    this.f23086a.f23083c = Collections.emptyList();
                } else {
                    C10250c cVar3 = this.f23086a;
                    cVar3.f23083c = Collections.unmodifiableList(cVar3.f23083c);
                }
                if (this.f23086a.f23084d == null) {
                    this.f23086a.f23084d = Collections.emptyList();
                } else {
                    C10250c cVar4 = this.f23086a;
                    cVar4.f23084d = Collections.unmodifiableList(cVar4.f23084d);
                }
                if (this.f23086a.f23085e == null) {
                    this.f23086a.f23085e = Collections.emptyList();
                } else {
                    C10250c cVar5 = this.f23086a;
                    cVar5.f23085e = Collections.unmodifiableList(cVar5.f23085e);
                }
                C10250c cVar6 = this.f23086a;
                this.f23086a = null;
                return cVar6;
            }

            /* renamed from: b */
            public C10251a m12978b(long j) {
                if (this.f23086a.f23081a == null) {
                    this.f23086a.f23081a = new ArrayList();
                }
                this.f23086a.f23081a.add(Long.valueOf(j));
                return this;
            }
        }

        static {
            m12986g().m12985a();
        }

        public C10250c() {
        }

        /* renamed from: g */
        public static C10251a m12986g() {
            return C10251a.m12977c();
        }

        /* renamed from: a */
        public int m13005a(int i) {
            int i2 = 0;
            for (Long l : this.f23081a) {
                i2 += AbstractC10274i.m12841f(i, l.longValue());
            }
            for (Integer num : this.f23082b) {
                i2 += AbstractC10274i.m12842f(i, num.intValue());
            }
            for (Long l2 : this.f23083c) {
                i2 += AbstractC10274i.m12852d(i, l2.longValue());
            }
            for (AbstractC10253g gVar : this.f23084d) {
                i2 += AbstractC10274i.m12858c(i, gVar);
            }
            for (C10247f1 f1Var : this.f23085e) {
                i2 += AbstractC10274i.m12850d(i, f1Var);
            }
            return i2;
        }

        /* renamed from: a */
        public List<Integer> m13006a() {
            return this.f23082b;
        }

        /* renamed from: a */
        public void m13004a(int i, AbstractC10274i iVar) throws IOException {
            for (AbstractC10253g gVar : this.f23084d) {
                iVar.mo12809b(i, gVar);
            }
        }

        /* renamed from: b */
        public int m13000b(int i) {
            int i2 = 0;
            for (AbstractC10253g gVar : this.f23084d) {
                i2 += AbstractC10274i.m12851d(i, gVar);
            }
            return i2;
        }

        /* renamed from: b */
        public List<Long> m13001b() {
            return this.f23083c;
        }

        /* renamed from: b */
        public void m12999b(int i, AbstractC10274i iVar) throws IOException {
            for (Long l : this.f23081a) {
                iVar.mo12803c(i, l.longValue());
            }
            for (Integer num : this.f23082b) {
                iVar.mo12810b(i, num.intValue());
            }
            for (Long l2 : this.f23083c) {
                iVar.mo12820a(i, l2.longValue());
            }
            for (AbstractC10253g gVar : this.f23084d) {
                iVar.mo12819a(i, gVar);
            }
            for (C10247f1 f1Var : this.f23085e) {
                iVar.m12877a(i, f1Var);
            }
        }

        /* renamed from: c */
        public List<C10247f1> m12996c() {
            return this.f23085e;
        }

        /* renamed from: d */
        public final Object[] m12993d() {
            return new Object[]{this.f23081a, this.f23082b, this.f23083c, this.f23084d, this.f23085e};
        }

        /* renamed from: e */
        public List<AbstractC10253g> m12990e() {
            return this.f23084d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C10250c)) {
                return false;
            }
            return Arrays.equals(m12993d(), ((C10250c) obj).m12993d());
        }

        /* renamed from: f */
        public List<Long> m12987f() {
            return this.f23081a;
        }

        public int hashCode() {
            return Arrays.hashCode(m12993d());
        }
    }

    /* renamed from: h.i.g.f1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/f1$d.class */
    public static final class C10252d extends AbstractC10235c<C10247f1> {
        @Override // p081h.p203i.p401g.AbstractC10462s0
        /* renamed from: a */
        public C10247f1 mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            C10249b d = C10247f1.m13019d();
            try {
                d.m13012a(hVar);
                return d.mo11825E();
            } catch (C10222a0 e) {
                e.m13078a(d.mo11825E());
                throw e;
            } catch (IOException e2) {
                C10222a0 a0Var = new C10222a0(e2);
                a0Var.m13078a(d.mo11825E());
                throw a0Var;
            }
        }
    }

    public C10247f1() {
        this.f23077a = null;
    }

    public C10247f1(Map<Integer, C10250c> map, Map<Integer, C10250c> map2) {
        this.f23077a = map;
    }

    /* renamed from: a */
    public static C10247f1 m13024a(AbstractC10253g gVar) throws C10222a0 {
        C10249b d = m13019d();
        d.m13013a(gVar);
        return d.build();
    }

    /* renamed from: b */
    public static C10249b m13022b(C10247f1 f1Var) {
        C10249b d = m13019d();
        d.m13008b(f1Var);
        return d;
    }

    /* renamed from: c */
    public static C10247f1 m13020c() {
        return f23075b;
    }

    /* renamed from: d */
    public static C10249b m13019d() {
        return C10249b.m13007d();
    }

    /* renamed from: a */
    public Map<Integer, C10250c> m13026a() {
        return this.f23077a;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: a */
    public void mo11692a(AbstractC10274i iVar) throws IOException {
        for (Map.Entry<Integer, C10250c> entry : this.f23077a.entrySet()) {
            entry.getValue().m12999b(entry.getKey().intValue(), iVar);
        }
    }

    /* renamed from: b */
    public int m13023b() {
        int i = 0;
        for (Map.Entry<Integer, C10250c> entry : this.f23077a.entrySet()) {
            i += entry.getValue().m13000b(entry.getKey().intValue());
        }
        return i;
    }

    /* renamed from: b */
    public void m13021b(AbstractC10274i iVar) throws IOException {
        for (Map.Entry<Integer, C10250c> entry : this.f23077a.entrySet()) {
            entry.getValue().m13004a(entry.getKey().intValue(), iVar);
        }
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: e */
    public C10249b mo11827e() {
        return m13019d();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10247f1) || !this.f23077a.equals(((C10247f1) obj).f23077a)) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: f */
    public C10249b mo11826f() {
        C10249b d = m13019d();
        d.m13008b(this);
        return d;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: g */
    public AbstractC10253g mo11839g() {
        try {
            AbstractC10253g.C10261h i = AbstractC10253g.m12966i(mo11678h());
            mo11692a(i.m12959b());
            return i.m12960a();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e);
        }
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: h */
    public int mo11678h() {
        int i = 0;
        for (Map.Entry<Integer, C10250c> entry : this.f23077a.entrySet()) {
            i += entry.getValue().m13005a(entry.getKey().intValue());
        }
        return i;
    }

    public int hashCode() {
        return this.f23077a.hashCode();
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: i */
    public byte[] mo11838i() {
        try {
            byte[] bArr = new byte[mo11678h()];
            AbstractC10274i c = AbstractC10274i.m12855c(bArr);
            mo11692a(c);
            c.m12884a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    @Override // p081h.p203i.p401g.AbstractC10442m0
    public boolean isInitialized() {
        return true;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: j */
    public final C10252d mo11677j() {
        return f23076c;
    }

    public String toString() {
        return C10521z0.m11535a().m11513a(this);
    }
}
