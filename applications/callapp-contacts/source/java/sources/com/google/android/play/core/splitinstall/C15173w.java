package com.google.android.play.core.splitinstall;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.w */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/w.class */
public final class C15173w {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f54997a;

    /* renamed from: a */
    public final Map<String, Set<String>> m9341a(Collection<String> collection) {
        Set set;
        HashMap hashMap = new HashMap();
        for (String str : this.f54997a.keySet()) {
            if (!this.f54997a.containsKey(str)) {
                set = Collections.emptySet();
            } else {
                HashSet hashSet = new HashSet();
                for (Map.Entry<String, String> entry : this.f54997a.get(str).entrySet()) {
                    if (collection.contains(entry.getKey())) {
                        hashSet.add(entry.getValue());
                    }
                }
                set = Collections.unmodifiableSet(hashSet);
            }
            hashMap.put(str, set);
        }
        return hashMap;
    }
}
