package dagger.internal;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:dagger/internal/MapBuilder.class */
public final class MapBuilder<K, V> {
    private final Map<K, V> contributions;

    private MapBuilder(int i) {
        this.contributions = DaggerCollections.newLinkedHashMapWithExpectedSize(i);
    }

    public static <K, V> MapBuilder<K, V> newMapBuilder(int i) {
        return new MapBuilder<>(i);
    }

    public Map<K, V> build() {
        return this.contributions.size() != 0 ? Collections.unmodifiableMap(this.contributions) : Collections.emptyMap();
    }

    public MapBuilder<K, V> put(K k, V v) {
        this.contributions.put(k, v);
        return this;
    }
}
