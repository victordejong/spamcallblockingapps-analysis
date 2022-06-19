package androidx.p023b;

import androidx.p023b.AbstractC0435f;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.b.a */
/* loaded from: classes-dex2jar.jar:androidx/b/a.class */
public class C0428a<K, V> extends C0441g<K, V> implements Map<K, V> {

    /* renamed from: a */
    AbstractC0435f<K, V> f1701a;

    public C0428a() {
    }

    public C0428a(int i) {
        super(i);
    }

    public C0428a(C0441g c0441g) {
        super(c0441g);
    }

    /* renamed from: a */
    private AbstractC0435f<K, V> m45567a() {
        if (this.f1701a == null) {
            this.f1701a = new AbstractC0435f<K, V>() { // from class: androidx.b.a.1
                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final int mo45537a() {
                    return C0428a.this.f1751h;
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final int mo45533a(Object obj) {
                    return C0428a.this.m45521a(obj);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final Object mo45535a(int i, int i2) {
                    return C0428a.this.f1750g[(i << 1) + i2];
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final V mo45534a(int i, V v) {
                    return C0428a.this.mo37602a(i, (int) v);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final void mo45536a(int i) {
                    C0428a.this.mo37600d(i);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: a */
                protected final void mo45532a(K k, V v) {
                    C0428a.this.put(k, v);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: b */
                protected final int mo45526b(Object obj) {
                    return C0428a.this.m45516b(obj);
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: b */
                protected final Map<K, V> mo45528b() {
                    return C0428a.this;
                }

                @Override // androidx.p023b.AbstractC0435f
                /* renamed from: c */
                protected final void mo45525c() {
                    C0428a.this.clear();
                }
            };
        }
        return this.f1701a;
    }

    /* renamed from: a */
    public final boolean m45566a(Collection<?> collection) {
        return AbstractC0435f.m45531a((Map) this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        AbstractC0435f<K, V> m45567a = m45567a();
        if (m45567a.f1730b == null) {
            m45567a.f1730b = new AbstractC0435f.C0437b();
        }
        return m45567a.f1730b;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m45567a().m45524d();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m45522a(this.f1751h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        AbstractC0435f<K, V> m45567a = m45567a();
        if (m45567a.f1732d == null) {
            m45567a.f1732d = new AbstractC0435f.C0440e();
        }
        return m45567a.f1732d;
    }
}
