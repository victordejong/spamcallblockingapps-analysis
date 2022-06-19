package com.callapp.common.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Ordering.class */
public class Ordering {
    /* renamed from: a */
    public static <K, V extends Comparable<? super V>> Collection<K> m31914a(final Map<K, V> map) {
        ArrayList arrayList = new ArrayList();
        for (K k : map.keySet()) {
            arrayList.add(k);
        }
        Collections.sort(arrayList, new Comparator<K>() { // from class: com.callapp.common.util.Ordering.1
            @Override // java.util.Comparator
            public final int compare(K k2, K k3) {
                return ((Comparable) map.get(k2)).compareTo(map.get(k3));
            }
        });
        return arrayList;
    }
}
