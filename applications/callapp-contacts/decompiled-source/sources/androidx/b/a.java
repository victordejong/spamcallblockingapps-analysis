package androidx.b;

import androidx.b.f;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/b/a.class */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* renamed from: a  reason: collision with root package name */
    f<K, V> f1156a;

    public a() {
    }

    public a(int i) {
        super(i);
    }

    public a(g gVar) {
        super(gVar);
    }

    private f<K, V> a() {
        if (this.f1156a == null) {
            this.f1156a = new f<K, V>() { // from class: androidx.b.a.1
                @Override // androidx.b.f
                protected final int a() {
                    return a.this.h;
                }

                @Override // androidx.b.f
                protected final int a(Object obj) {
                    return a.this.a(obj);
                }

                @Override // androidx.b.f
                protected final Object a(int i, int i2) {
                    return a.this.g[(i << 1) + i2];
                }

                @Override // androidx.b.f
                protected final V a(int i, V v) {
                    return a.this.a(i, (int) v);
                }

                @Override // androidx.b.f
                protected final void a(int i) {
                    a.this.d(i);
                }

                @Override // androidx.b.f
                protected final void a(K k, V v) {
                    a.this.put(k, v);
                }

                @Override // androidx.b.f
                protected final int b(Object obj) {
                    return a.this.b(obj);
                }

                @Override // androidx.b.f
                protected final Map<K, V> b() {
                    return a.this;
                }

                @Override // androidx.b.f
                protected final void c() {
                    a.this.clear();
                }
            };
        }
        return this.f1156a;
    }

    public final boolean a(Collection<?> collection) {
        return f.a((Map) this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        f<K, V> a2 = a();
        if (a2.f1174b == null) {
            a2.f1174b = new f.b();
        }
        return a2.f1174b;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return a().d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        f<K, V> a2 = a();
        if (a2.f1176d == null) {
            a2.f1176d = new f.e();
        }
        return a2.f1176d;
    }
}
