package androidx.p014c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.c.a */
/* loaded from: classes-dex2jar.jar:androidx/c/a.class */
public class C0374a<K, V> extends C0387g<K, V> implements Map<K, V> {

    /* renamed from: a */
    AbstractC0381f<K, V> f1472a;

    public C0374a() {
    }

    public C0374a(int i) {
        super(i);
    }

    public C0374a(C0387g c0387g) {
        super(c0387g);
    }

    /* renamed from: b */
    private AbstractC0381f<K, V> m6870b() {
        if (this.f1472a == null) {
            this.f1472a = new AbstractC0381f<K, V>() { // from class: androidx.c.a.1
                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected int mo6839a() {
                    return C0374a.this.f1514h;
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected int mo6835a(Object obj) {
                    return C0374a.this.m6815a(obj);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected Object mo6837a(int i, int i2) {
                    return C0374a.this.f1513g[(i << 1) + i2];
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected V mo6836a(int i, V v) {
                    return C0374a.this.m6817a(i, (int) v);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected void mo6838a(int i) {
                    C0374a.this.m6808d(i);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: a */
                protected void mo6834a(K k, V v) {
                    C0374a.this.put(k, v);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: b */
                protected int mo6828b(Object obj) {
                    return C0374a.this.m6810b(obj);
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: b */
                protected Map<K, V> mo6830b() {
                    return C0374a.this;
                }

                @Override // androidx.p014c.AbstractC0381f
                /* renamed from: c */
                protected void mo6826c() {
                    C0374a.this.clear();
                }
            };
        }
        return this.f1472a;
    }

    /* renamed from: a */
    public boolean m6871a(Collection<?> collection) {
        return AbstractC0381f.m6825c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m6870b().m6824d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m6870b().m6823e();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m6818a(this.f1514h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m6870b().m6822f();
    }
}
