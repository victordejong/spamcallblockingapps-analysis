package com.google.android.play.core.splitinstall;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Map<String, String>> f31550a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w(Map map) {
        this.f31550a = map;
    }

    public final Map<String, Set<String>> a(Collection<String> collection) {
        Set set;
        HashMap hashMap = new HashMap();
        for (String str : this.f31550a.keySet()) {
            if (!this.f31550a.containsKey(str)) {
                set = Collections.emptySet();
            } else {
                HashSet hashSet = new HashSet();
                for (Map.Entry<String, String> entry : this.f31550a.get(str).entrySet()) {
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
