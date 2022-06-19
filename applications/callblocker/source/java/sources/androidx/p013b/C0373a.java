package androidx.p013b;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.b.a */
/* loaded from: classes-dex2jar.jar:androidx/b/a.class */
public class C0373a<K, V> extends C0386g<K, V> implements Map<K, V> {

    /* renamed from: a */
    AbstractC0380f<K, V> f1544a;

    public C0373a() {
    }

    public C0373a(int i) {
        super(i);
    }

    public C0373a(C0386g c0386g) {
        super(c0386g);
    }

    /* renamed from: b */
    private AbstractC0380f<K, V> m21149b() {
        if (this.f1544a == null) {
            this.f1544a = new AbstractC0380f<K, V>() { // from class: androidx.b.a.1
                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected int mo21111a() {
                    return C0373a.this.f1594h;
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected int mo21107a(Object obj) {
                    return C0373a.this.m21089a(obj);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected Object mo21109a(int i, int i2) {
                    return C0373a.this.f1593g[(i << 1) + i2];
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected V mo21108a(int i, V v) {
                    return C0373a.this.mo17011a(i, (int) v);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected void mo21110a(int i) {
                    C0373a.this.mo17009d(i);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: a */
                protected void mo21106a(K k, V v) {
                    C0373a.this.put(k, v);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: b */
                protected int mo21100b(Object obj) {
                    return C0373a.this.m21084b(obj);
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: b */
                protected Map<K, V> mo21102b() {
                    return C0373a.this;
                }

                @Override // androidx.p013b.AbstractC0380f
                /* renamed from: c */
                protected void mo21098c() {
                    C0373a.this.clear();
                }
            };
        }
        return this.f1544a;
    }

    /* renamed from: a */
    public boolean m21150a(Collection<?> collection) {
        return AbstractC0380f.m21097c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m21149b().m21096d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m21149b().m21095e();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m21090a(this.f1594h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m21149b().m21094f();
    }
}
