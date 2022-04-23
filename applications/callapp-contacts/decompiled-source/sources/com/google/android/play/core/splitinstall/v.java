package com.google.android.play.core.splitinstall;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, Map<String, String>> f31549a = new HashMap();

    public final w a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Map<String, String>> entry : this.f31549a.entrySet()) {
            hashMap.put(entry.getKey(), Collections.unmodifiableMap(new HashMap(entry.getValue())));
        }
        return new w(Collections.unmodifiableMap(hashMap));
    }
}
