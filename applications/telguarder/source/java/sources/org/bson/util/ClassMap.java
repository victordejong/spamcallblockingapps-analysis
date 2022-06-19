package org.bson.util;

import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes3-dex2jar.jar:org/bson/util/ClassMap.class */
public class ClassMap<T> {
    private final Map<Class<?>, T> map = CopyOnWriteMap.newHashMap();
    private final Map<Class<?>, T> cache = ComputingMap.create(new ComputeFunction());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/bson/util/ClassMap$ComputeFunction.class */
    public final class ComputeFunction implements Function<Class<?>, T> {
        private ComputeFunction() {
            ClassMap.this = r4;
        }

        public T apply(Class<?> cls) {
            for (Class<?> cls2 : ClassMap.getAncestry(cls)) {
                T t = (T) ClassMap.this.map.get(cls2);
                if (t != null) {
                    return t;
                }
            }
            return null;
        }
    }

    public static <T> List<Class<?>> getAncestry(Class<T> cls) {
        return ClassAncestry.getAncestry(cls);
    }

    public void clear() {
        this.map.clear();
        this.cache.clear();
    }

    public T get(Object obj) {
        return this.cache.get(obj);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public T put(Class<?> cls, T t) {
        try {
            return this.map.put(cls, t);
        } finally {
            this.cache.clear();
        }
    }

    public T remove(Object obj) {
        try {
            return this.map.remove(obj);
        } finally {
            this.cache.clear();
        }
    }

    public int size() {
        return this.map.size();
    }
}
