package p1727n3.p1788g;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p1727n3.p1788g.AbstractC26181g;
/* renamed from: n3.g.a */
/* loaded from: classes-dex2jar.jar:n3/g/a.class */
public class C26174a<K, V> extends C26187h<K, V> implements Map<K, V> {

    /* renamed from: h */
    public AbstractC26181g<K, V> f72983h;

    /* renamed from: n3.g.a$a */
    /* loaded from: classes-dex2jar.jar:n3/g/a$a.class */
    public class C26175a extends AbstractC26181g<K, V> {
        public C26175a() {
            C26174a.this = r4;
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: a */
        public void mo2596a() {
            C26174a.this.clear();
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: b */
        public Object mo2595b(int i, int i2) {
            return C26174a.this.f73024b[(i << 1) + i2];
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: c */
        public Map<K, V> mo2594c() {
            return C26174a.this;
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: d */
        public int mo2593d() {
            return C26174a.this.f73025c;
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: e */
        public int mo2592e(Object obj) {
            return C26174a.this.m2579i(obj);
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: f */
        public int mo2591f(Object obj) {
            return C26174a.this.m2577k(obj);
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: g */
        public void mo2590g(K k, V v) {
            C26174a.this.put(k, v);
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: h */
        public void mo2589h(int i) {
            C26174a.this.m2574n(i);
        }

        @Override // p1727n3.p1788g.AbstractC26181g
        /* renamed from: i */
        public V mo2588i(int i, V v) {
            return C26174a.this.m2573o(i, v);
        }
    }

    public C26174a() {
    }

    public C26174a(int i) {
        super(i);
    }

    public C26174a(C26187h c26187h) {
        if (c26187h != null) {
            m2575m(c26187h);
        }
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        AbstractC26181g<K, V> m2621q = m2621q();
        if (m2621q.f73004a == null) {
            m2621q.f73004a = new AbstractC26181g.C26183b();
        }
        return m2621q.f73004a;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        AbstractC26181g<K, V> m2621q = m2621q();
        if (m2621q.f73005b == null) {
            m2621q.f73005b = new AbstractC26181g.C26184c();
        }
        return m2621q.f73005b;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m2582d(map.size() + this.f73025c);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: q */
    public final AbstractC26181g<K, V> m2621q() {
        if (this.f72983h == null) {
            this.f72983h = new C26175a();
        }
        return this.f72983h;
    }

    @Override // java.util.Map
    public Collection<V> values() {
        AbstractC26181g<K, V> m2621q = m2621q();
        if (m2621q.f73006c == null) {
            m2621q.f73006c = new AbstractC26181g.C26186e();
        }
        return m2621q.f73006c;
    }
}
