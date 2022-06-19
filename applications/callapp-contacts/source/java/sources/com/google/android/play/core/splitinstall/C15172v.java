package com.google.android.play.core.splitinstall;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.play.core.splitinstall.v */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/v.class */
public final class C15172v {

    /* renamed from: a */
    final Map<String, Map<String, String>> f54996a = new HashMap();

    /* renamed from: a */
    public final C15173w m9342a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Map<String, String>> entry : this.f54996a.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableMap(new HashMap(entry.getValue())));
        }
        return new C15173w(Collections.unmodifiableMap(hashMap));
    }
}
