package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ah.class */
public interface ah<K, V> {
    Collection<V> a(K k);

    boolean a(K k, V v);

    Map<K, Collection<V>> b();

    boolean b(Object obj, Object obj2);

    boolean c(Object obj, Object obj2);

    int e();

    void f();

    Collection<V> i();

    Collection<Map.Entry<K, V>> l();
}
