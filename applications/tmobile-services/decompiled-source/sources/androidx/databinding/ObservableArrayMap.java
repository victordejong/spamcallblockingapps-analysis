package androidx.databinding;

import androidx.collection.ArrayMap;
import androidx.databinding.ObservableMap;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableArrayMap.class */
public class ObservableArrayMap<K, V> extends ArrayMap<K, V> implements ObservableMap<K, V> {

    /* renamed from: n */
    private transient MapChangeRegistry f3529n;

    /* renamed from: r */
    private void m18656r(Object obj) {
        MapChangeRegistry mapChangeRegistry = this.f3529n;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.mo18672c(this, 0, obj);
        }
    }

    @Override // androidx.databinding.ObservableMap
    /* renamed from: c */
    public void mo18639c(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        MapChangeRegistry mapChangeRegistry = this.f3529n;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.m18683j(onMapChangedCallback);
        }
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        if (!isEmpty()) {
            super.clear();
            m18656r(null);
        }
    }

    @Override // androidx.collection.SimpleArrayMap
    /* renamed from: m */
    public V mo18659m(int i) {
        K k = m21007k(i);
        V v = (V) super.mo18659m(i);
        if (v != null) {
            m18656r(k);
        }
        return v;
    }

    @Override // androidx.collection.SimpleArrayMap
    /* renamed from: n */
    public V mo18658n(int i, V v) {
        K k = m21007k(i);
        V v2 = (V) super.mo18658n(i, v);
        m18656r(k);
        return v2;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k, V v) {
        super.put(k, v);
        m18656r(k);
        return v;
    }

    @Override // androidx.collection.ArrayMap
    /* renamed from: q */
    public boolean mo18657q(Collection<?> collection) {
        boolean z = false;
        for (int size = size() - 1; size >= 0; size--) {
            if (!collection.contains(m21007k(size))) {
                mo18659m(size);
                z = true;
            }
        }
        return z;
    }
}
