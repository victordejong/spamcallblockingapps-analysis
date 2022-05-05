package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/collection/ArrayMap.class */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    @Nullable

    /* renamed from: m */
    MapCollections<K, V> f1536m;

    public ArrayMap() {
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    /* renamed from: p */
    private MapCollections<K, V> m21065p() {
        if (this.f1536m == null) {
            this.f1536m = new MapCollections<K, V>() { // from class: androidx.collection.ArrayMap.1
                @Override // androidx.collection.MapCollections
                /* renamed from: a */
                protected void mo21035a() {
                    ArrayMap.this.clear();
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: b */
                protected Object mo21034b(int i, int i2) {
                    return ArrayMap.this.f1578g[(i << 1) + i2];
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: c */
                protected Map<K, V> mo21033c() {
                    return ArrayMap.this;
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: d */
                protected int mo21032d() {
                    return ArrayMap.this.f1579h;
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: e */
                protected int mo21031e(Object obj) {
                    return ArrayMap.this.m21010h(obj);
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: f */
                protected int mo21030f(Object obj) {
                    return ArrayMap.this.m21008j(obj);
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: g */
                protected void mo21029g(K k, V v) {
                    ArrayMap.this.put(k, v);
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: h */
                protected void mo21028h(int i) {
                    ArrayMap.this.mo18659m(i);
                }

                @Override // androidx.collection.MapCollections
                /* renamed from: i */
                protected V mo21027i(int i, V v) {
                    return ArrayMap.this.mo18658n(i, v);
                }
            };
        }
        return this.f1536m;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m21065p().m21024l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m21065p().m21023m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m21013e(this.f1579h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: q */
    public boolean mo18657q(@NonNull Collection<?> collection) {
        return MapCollections.m21020p(this, collection);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m21065p().m21022n();
    }
}
