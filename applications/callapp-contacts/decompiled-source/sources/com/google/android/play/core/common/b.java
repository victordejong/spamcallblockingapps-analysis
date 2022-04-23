package com.google.android.play.core.common;

import android.os.Bundle;
import com.google.android.play.core.internal.h;
import io.bidmachine.Framework;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/common/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f31326a = new HashSet(Arrays.asList("app_update", "review"));

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f31327b = new HashSet(Arrays.asList("native", Framework.UNITY));

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Map<String, Integer>> f31328c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static final h f31329d = new h("PlayCoreVersion");

    private b() {
    }

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        Map<String, Integer> b2 = b(str);
        bundle.putInt("playcore_version_code", b2.get("java").intValue());
        if (b2.containsKey("native")) {
            bundle.putInt("playcore_native_version", b2.get("native").intValue());
        }
        if (b2.containsKey(Framework.UNITY)) {
            bundle.putInt("playcore_unity_version", b2.get(Framework.UNITY).intValue());
        }
        return bundle;
    }

    private static Map<String, Integer> b(String str) {
        Map<String, Integer> map;
        synchronized (b.class) {
            try {
                Map<String, Map<String, Integer>> map2 = f31328c;
                if (!map2.containsKey(str)) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("java", 11000);
                    map2.put(str, hashMap);
                }
                map = map2.get(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }
}
