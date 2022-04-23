package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* renamed from: $r8$backportedMethods$utility$Map$1$copyOfMap  reason: invalid class name and default package */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$Map$1$copyOfMap.class */
public /* synthetic */ class C$r8$backportedMethods$utility$Map$1$copyOfMap {
    public static /* synthetic */ Map copyOf(Map map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            hashMap.put(key, value);
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
