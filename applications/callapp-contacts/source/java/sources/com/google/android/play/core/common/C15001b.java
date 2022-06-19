package com.google.android.play.core.common;

import android.os.Bundle;
import com.google.android.play.core.internal.C15072h;
import io.bidmachine.Framework;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.play.core.common.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/common/b.class */
public final class C15001b {

    /* renamed from: a */
    private static final Set<String> f54727a = new HashSet(Arrays.asList("app_update", "review"));

    /* renamed from: b */
    private static final Set<String> f54728b = new HashSet(Arrays.asList("native", Framework.UNITY));

    /* renamed from: c */
    private static final Map<String, Map<String, Integer>> f54729c = new HashMap();

    /* renamed from: d */
    private static final C15072h f54730d = new C15072h("PlayCoreVersion");

    private C15001b() {
    }

    /* renamed from: a */
    public static Bundle m9634a(String str) {
        Bundle bundle = new Bundle();
        Map<String, Integer> m9633b = m9633b(str);
        bundle.putInt("playcore_version_code", m9633b.get("java").intValue());
        if (m9633b.containsKey("native")) {
            bundle.putInt("playcore_native_version", m9633b.get("native").intValue());
        }
        if (m9633b.containsKey(Framework.UNITY)) {
            bundle.putInt("playcore_unity_version", m9633b.get(Framework.UNITY).intValue());
        }
        return bundle;
    }

    /* renamed from: b */
    private static Map<String, Integer> m9633b(String str) {
        Map<String, Integer> map;
        synchronized (C15001b.class) {
            try {
                Map<String, Map<String, Integer>> map2 = f54729c;
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
