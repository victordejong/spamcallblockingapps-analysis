package p020b.p036e;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: b.e.a */
/* loaded from: classes-dex2jar.jar:b/e/a.class */
public class C1489a<K, V> extends C1502g<K, V> implements Map<K, V> {

    /* renamed from: k */
    AbstractC1496f<K, V> f5929k;

    /* renamed from: b.e.a$a */
    /* loaded from: classes-dex2jar.jar:b/e/a$a.class */
    public class C1490a extends AbstractC1496f<K, V> {
        C1490a() {
            C1489a.this = r4;
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: a */
        protected void mo29938a() {
            C1489a.this.clear();
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: b */
        protected Object mo29937b(int i, int i2) {
            return C1489a.this.f5978i[(i << 1) + i2];
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: c */
        protected Map<K, V> mo29936c() {
            return C1489a.this;
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: d */
        protected int mo29935d() {
            return C1489a.this.f5979j;
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: e */
        protected int mo29934e(Object obj) {
            return C1489a.this.m29913f(obj);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: f */
        protected int mo29933f(Object obj) {
            return C1489a.this.m29911h(obj);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: g */
        protected void mo29932g(K k, V v) {
            C1489a.this.put(k, v);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: h */
        protected void mo29931h(int i) {
            C1489a.this.mo22746k(i);
        }

        @Override // p020b.p036e.AbstractC1496f
        /* renamed from: i */
        protected V mo29930i(int i, V v) {
            return C1489a.this.mo22745l(i, v);
        }
    }

    public C1489a() {
    }

    public C1489a(int i) {
        super(i);
    }

    public C1489a(C1502g c1502g) {
        super(c1502g);
    }

    /* renamed from: n */
    private AbstractC1496f<K, V> m29974n() {
        if (this.f5929k == null) {
            this.f5929k = new C1490a();
        }
        return this.f5929k;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m29974n().m29927l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m29974n().m29926m();
    }

    /* renamed from: o */
    public boolean m29973o(Collection<?> collection) {
        return AbstractC1496f.m29923p(this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m29916c(this.f5979j + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m29974n().m29925n();
    }
}
