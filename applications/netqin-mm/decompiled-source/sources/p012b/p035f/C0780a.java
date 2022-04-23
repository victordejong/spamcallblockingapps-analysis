package p012b.p035f;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: b.f.a */
/* loaded from: classes-dex2jar.jar:b/f/a.class */
public class C0780a<K, V> extends C0793g<K, V> implements Map<K, V> {

    /* renamed from: h */
    public AbstractC0787f<K, V> f3659h;

    /* renamed from: b.f.a$a */
    /* loaded from: classes-dex2jar.jar:b/f/a$a.class */
    public class C0781a extends AbstractC0787f<K, V> {
        public C0781a() {
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public int mo36038a(Object obj) {
            return C0780a.this.m36019a(obj);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public Object mo36040a(int i, int i2) {
            return C0780a.this.f3708b[(i << 1) + i2];
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public V mo36039a(int i, V v) {
            return C0780a.this.m36021a(i, (int) v);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36042a() {
            C0780a.this.clear();
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36041a(int i) {
            C0780a.this.m36012d(i);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: a */
        public void mo36037a(K k, V v) {
            C0780a.this.put(k, v);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: b */
        public int mo36031b(Object obj) {
            return C0780a.this.m36014b(obj);
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: b */
        public Map<K, V> mo36033b() {
            return C0780a.this;
        }

        @Override // p012b.p035f.AbstractC0787f
        /* renamed from: c */
        public int mo36029c() {
            return C0780a.this.f3709c;
        }
    }

    public C0780a() {
    }

    public C0780a(int i) {
        super(i);
    }

    /* renamed from: a */
    public boolean m36072a(Collection<?> collection) {
        return AbstractC0787f.m36028c(this, collection);
    }

    /* renamed from: b */
    public final AbstractC0787f<K, V> m36071b() {
        if (this.f3659h == null) {
            this.f3659h = new C0781a();
        }
        return this.f3659h;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m36071b().m36027d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m36071b().m36026e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m36015b(this.f3709c + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m36071b().m36025f();
    }
}
