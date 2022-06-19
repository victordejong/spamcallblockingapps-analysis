package p000;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* renamed from: $r8$backportedMethods$utility$Map$1$ofEntries */
/* loaded from: classes-dex2jar.jar:$r8$backportedMethods$utility$Map$1$ofEntries.class */
public /* synthetic */ class C$r8$backportedMethods$utility$Map$1$ofEntries {
    public static /* synthetic */ Map ofEntries(Map.Entry[] entryArr) {
        HashMap hashMap = new HashMap(entryArr.length);
        for (Map.Entry entry : entryArr) {
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                throw new IllegalArgumentException("duplicate key: " + key);
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
