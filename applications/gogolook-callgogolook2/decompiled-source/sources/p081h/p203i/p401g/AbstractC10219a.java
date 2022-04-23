package p081h.p203i.p401g;

import androidx.core.app.Person;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p401g.AbstractC10228b;
import p081h.p203i.p401g.AbstractC10287j0;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10418l;
import p081h.p203i.p401g.C10446o0;
import p081h.p203i.p401g.C10516z;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.g.a */
/* loaded from: classes2-dex2jar.jar:h/i/g/a.class */
public abstract class AbstractC10219a extends AbstractC10228b implements AbstractC10287j0 {

    /* renamed from: b */
    public int f23054b = -1;

    /* renamed from: h.i.g.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a$a.class */
    public static abstract class AbstractC10220a<BuilderType extends AbstractC10220a<BuilderType>> extends AbstractC10228b.AbstractC10229a implements AbstractC10287j0.AbstractC10288a {
        /* renamed from: b */
        public static C10241d1 m13080b(AbstractC10287j0 j0Var) {
            return new C10241d1(C10446o0.m11811a(j0Var));
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo12764a(AbstractC10253g gVar) throws C10222a0 {
            super.mo12764a(gVar);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo12763a(AbstractC10253g gVar, C10459r rVar) throws C10222a0 {
            super.mo12763a(gVar, rVar);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a
        /* renamed from: a */
        public BuilderType mo13060a(AbstractC10267h hVar) throws IOException {
            return mo11837a(hVar, (C10459r) C10452p.m11796a());
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public BuilderType mo11837a(AbstractC10267h hVar, C10459r rVar) throws IOException {
            int r;
            C10247f1.C10249b b = hVar.m12933u() ? null : C10247f1.m13022b(mo11664d());
            do {
                r = hVar.mo12899r();
                if (r == 0) {
                    break;
                }
            } while (C10446o0.m11815a(hVar, b, rVar, mo11666c(), new C10446o0.C10448b(this), r));
            if (b != null) {
                mo11672a(b.build());
            }
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo11824a(AbstractC10287j0 j0Var) {
            m13081a(j0Var, j0Var.mo11648a());
            return this;
        }

        /* renamed from: a */
        public BuilderType m13081a(AbstractC10287j0 j0Var, Map<C10418l.C10428g, Object> map) {
            if (j0Var.mo11666c() == mo11666c()) {
                for (Map.Entry<C10418l.C10428g, Object> entry : map.entrySet()) {
                    C10418l.C10428g key = entry.getKey();
                    if (key.mo11731X()) {
                        for (Object obj : (List) entry.getValue()) {
                            mo11652b(key, obj);
                        }
                    } else if (key.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                        AbstractC10287j0 j0Var2 = (AbstractC10287j0) mo11644c(key);
                        if (j0Var2 == j0Var2.mo11818b()) {
                            mo11655a(key, entry.getValue());
                        } else {
                            mo11655a(key, j0Var2.mo11827e().mo11824a(j0Var2).mo11824a((AbstractC10287j0) entry.getValue()).build());
                        }
                    } else {
                        mo11655a(key, entry.getValue());
                    }
                }
                mo11668b(j0Var.mo11664d());
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a, p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public BuilderType mo11836a(byte[] bArr) throws C10222a0 {
            return (BuilderType) ((AbstractC10220a) super.mo11836a(bArr));
        }

        @Override // p081h.p203i.p401g.AbstractC10228b.AbstractC10229a
        /* renamed from: a */
        public BuilderType mo13058a(byte[] bArr, int i, int i2) throws C10222a0 {
            super.mo13058a(bArr, i, i2);
            return this;
        }

        /* renamed from: b */
        public BuilderType mo11668b(C10247f1 f1Var) {
            C10247f1.C10249b b = C10247f1.m13022b(mo11664d());
            b.m13008b(f1Var);
            mo11672a(b.build());
            return this;
        }

        public BuilderType clone() {
            throw new UnsupportedOperationException("clone() should be implemented in subclasses.");
        }

        /* renamed from: e */
        public void mo11663e() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        public String toString() {
            return C10521z0.m11535a().m11509a(this);
        }
    }

    /* renamed from: h.i.g.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a$b.class */
    public interface AbstractC10221b {
        /* renamed from: a */
        void mo11585a();
    }

    /* renamed from: a */
    public static int m13088a(int i, Map<C10418l.C10428g, Object> map) {
        int i2;
        int a;
        for (Map.Entry<C10418l.C10428g, Object> entry : map.entrySet()) {
            C10418l.C10428g key = entry.getKey();
            Object value = entry.getValue();
            int number = (i * 37) + key.getNumber();
            if (key.m11874q()) {
                i2 = number * 53;
                a = m13087a(value);
            } else if (key.m11876o() != C10418l.C10428g.EnumC10430b.ENUM) {
                i2 = number * 53;
                a = value.hashCode();
            } else if (key.mo11731X()) {
                i2 = number * 53;
                a = C10516z.m11544a((List<? extends C10516z.AbstractC10517a>) value);
            } else {
                i2 = number * 53;
                a = C10516z.m11546a((C10516z.AbstractC10517a) value);
            }
            i = i2 + a;
        }
        return i;
    }

    /* renamed from: a */
    public static int m13087a(Object obj) {
        return C10265g0.m12944a(m13085a((List) obj));
    }

    /* renamed from: a */
    public static Map m13085a(List list) {
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        AbstractC10287j0 j0Var = (AbstractC10287j0) it.next();
        C10418l.C10420b c = j0Var.mo11666c();
        C10418l.C10428g a = c.m11914a(Person.KEY_KEY);
        C10418l.C10428g a2 = c.m11914a(C13032a.f29462d);
        Object c2 = j0Var.mo11644c(a2);
        Object obj = c2;
        if (c2 instanceof C10418l.C10427f) {
            obj = Integer.valueOf(((C10418l.C10427f) c2).getNumber());
        }
        hashMap.put(j0Var.mo11644c(a), obj);
        while (it.hasNext()) {
            AbstractC10287j0 j0Var2 = (AbstractC10287j0) it.next();
            Object c3 = j0Var2.mo11644c(a2);
            Object obj2 = c3;
            if (c3 instanceof C10418l.C10427f) {
                obj2 = Integer.valueOf(((C10418l.C10427f) c3).getNumber());
            }
            hashMap.put(j0Var2.mo11644c(a), obj2);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static boolean m13086a(Object obj, Object obj2) {
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? m13083b(obj).equals(m13083b(obj2)) : Arrays.equals((byte[]) obj, (byte[]) obj2);
    }

    /* renamed from: a */
    public static boolean m13084a(Map<C10418l.C10428g, Object> map, Map<C10418l.C10428g, Object> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (C10418l.C10428g gVar : map.keySet()) {
            if (!map2.containsKey(gVar)) {
                return false;
            }
            Object obj = map.get(gVar);
            Object obj2 = map2.get(gVar);
            if (gVar.m11876o() == C10418l.C10428g.EnumC10430b.BYTES) {
                if (gVar.mo11731X()) {
                    List list = (List) obj;
                    List list2 = (List) obj2;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i = 0; i < list.size(); i++) {
                        if (!m13086a(list.get(i), list2.get(i))) {
                            return false;
                        }
                    }
                    continue;
                } else if (!m13086a(obj, obj2)) {
                    return false;
                }
            } else if (gVar.m11874q()) {
                if (!m13082b(obj, obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static AbstractC10253g m13083b(Object obj) {
        return obj instanceof byte[] ? AbstractC10253g.m12973a((byte[]) obj) : (AbstractC10253g) obj;
    }

    /* renamed from: b */
    public static boolean m13082b(Object obj, Object obj2) {
        return C10265g0.m12943a(m13085a((List) obj), m13085a((List) obj2));
    }

    /* renamed from: a */
    public AbstractC10287j0.AbstractC10288a mo11693a(AbstractC10221b bVar) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: a */
    public void mo11692a(AbstractC10274i iVar) throws IOException {
        C10446o0.m11812a((AbstractC10287j0) this, mo11648a(), iVar, false);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10287j0)) {
            return false;
        }
        AbstractC10287j0 j0Var = (AbstractC10287j0) obj;
        if (mo11666c() != j0Var.mo11666c()) {
            return false;
        }
        if (!m13084a(mo11648a(), j0Var.mo11648a()) || !mo11664d().equals(j0Var.mo11664d())) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: h */
    public int mo11678h() {
        int i = this.f23054b;
        if (i != -1) {
            return i;
        }
        this.f23054b = C10446o0.m11813a(this, mo11648a());
        return this.f23054b;
    }

    public int hashCode() {
        int i = this.f23058a;
        int i2 = i;
        if (i == 0) {
            i2 = (m13088a(779 + mo11666c().hashCode(), mo11648a()) * 29) + mo11664d().hashCode();
            this.f23058a = i2;
        }
        return i2;
    }

    @Override // p081h.p203i.p401g.AbstractC10442m0
    public boolean isInitialized() {
        return C10446o0.m11808b(this);
    }

    @Override // p081h.p203i.p401g.AbstractC10228b
    /* renamed from: k */
    public C10241d1 mo13061k() {
        return AbstractC10220a.m13080b(this);
    }

    public final String toString() {
        return C10521z0.m11535a().m11509a(this);
    }
}
