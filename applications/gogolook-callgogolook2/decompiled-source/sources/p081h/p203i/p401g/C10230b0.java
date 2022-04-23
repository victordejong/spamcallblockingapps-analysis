package p081h.p203i.p401g;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.g.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/b0.class */
public class C10230b0 extends C10236c0 {

    /* renamed from: e */
    public final AbstractC10437l0 f23059e;

    /* renamed from: h.i.g.b0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/b0$b.class */
    public static class C10232b<K> implements Map.Entry<K, Object> {

        /* renamed from: a */
        public Map.Entry<K, C10230b0> f23060a;

        public C10232b(Map.Entry<K, C10230b0> entry) {
            this.f23060a = entry;
        }

        /* renamed from: a */
        public C10230b0 m13056a() {
            return this.f23060a.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f23060a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            C10230b0 value = this.f23060a.getValue();
            if (value == null) {
                return null;
            }
            return value.m13057c();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof AbstractC10437l0) {
                return this.f23060a.getValue().m13044c((AbstractC10437l0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* renamed from: h.i.g.b0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/b0$c.class */
    public static class C10233c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a */
        public Iterator<Map.Entry<K, Object>> f23061a;

        public C10233c(Iterator<Map.Entry<K, Object>> it) {
            this.f23061a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f23061a.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f23061a.next();
            return next.getValue() instanceof C10230b0 ? new C10232b(next) : next;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f23061a.remove();
        }
    }

    public C10230b0(AbstractC10437l0 l0Var, C10459r rVar, AbstractC10253g gVar) {
        super(rVar, gVar);
        this.f23059e = l0Var;
    }

    /* renamed from: c */
    public AbstractC10437l0 m13057c() {
        return m13045b(this.f23059e);
    }

    public boolean equals(Object obj) {
        return m13057c().equals(obj);
    }

    public int hashCode() {
        return m13057c().hashCode();
    }

    public String toString() {
        return m13057c().toString();
    }
}
