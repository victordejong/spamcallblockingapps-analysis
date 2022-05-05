package dagger.internal;

import dagger.internal.AbstractMapFactory;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Provider;
/* loaded from: classes-dex2jar.jar:dagger/internal/MapFactory.class */
public final class MapFactory<K, V> extends AbstractMapFactory<K, V, V> {

    /* loaded from: classes-dex2jar.jar:dagger/internal/MapFactory$Builder.class */
    public static final class Builder<K, V> extends AbstractMapFactory.Builder<K, V, V> {
    }

    static {
        InstanceFactory.m4637a(Collections.emptyMap());
    }

    /* renamed from: b */
    public Map<K, V> get() {
        LinkedHashMap c = DaggerCollections.m4641c(m4644a().size());
        for (Map.Entry<K, Provider<V>> entry : m4644a().entrySet()) {
            c.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(c);
    }
}
