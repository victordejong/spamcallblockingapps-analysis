package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.HashMap;
import java.util.Map;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/arch/core/internal/FastSafeIterableMap.class */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {

    /* renamed from: j */
    private HashMap<K, SafeIterableMap.Entry<K, V>> f1467j = new HashMap<>();

    public boolean contains(K k) {
        return this.f1467j.containsKey(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    /* renamed from: d */
    protected SafeIterableMap.Entry<K, V> mo21138d(K k) {
        return this.f1467j.get(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    /* renamed from: h */
    public V mo21134h(@NonNull K k, @NonNull V v) {
        SafeIterableMap.Entry<K, V> d = mo21138d(k);
        if (d != null) {
            return d.f1473g;
        }
        this.f1467j.put(k, m21135g(k, v));
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    /* renamed from: j */
    public V mo21133j(@NonNull K k) {
        V v = (V) super.mo21133j(k);
        this.f1467j.remove(k);
        return v;
    }

    /* renamed from: k */
    public Map.Entry<K, V> m21140k(K k) {
        if (contains(k)) {
            return this.f1467j.get(k).f1475i;
        }
        return null;
    }
}
