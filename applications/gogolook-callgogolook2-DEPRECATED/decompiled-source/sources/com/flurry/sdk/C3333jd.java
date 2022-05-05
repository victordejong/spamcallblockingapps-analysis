package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.jd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jd.class */
public class C3333jd {

    /* renamed from: a */
    public static final String f5686a = "jd";

    /* renamed from: b */
    public static final HashMap<String, Map<String, String>> f5687b = new HashMap<>();

    /* renamed from: c */
    public static C3333jd f5688c;

    /* renamed from: a */
    public static C3333jd m32671a() {
        C3333jd jdVar;
        synchronized (C3333jd.class) {
            try {
                if (f5688c == null) {
                    f5688c = new C3333jd();
                }
                jdVar = f5688c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jdVar;
    }

    /* renamed from: a */
    public final void m32670a(String str, String str2, Map<String, String> map) {
        synchronized (this) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            if (map2.size() >= 10) {
                String str3 = f5686a;
                C3356jq.m32602e(str3, "MaxOriginParams exceeded: " + map2.size());
                return;
            }
            map2.put("flurryOriginVersion", str2);
            synchronized (f5687b) {
                if (f5687b.size() < 10 || f5687b.containsKey(str)) {
                    f5687b.put(str, map2);
                    return;
                }
                String str4 = f5686a;
                C3356jq.m32602e(str4, "MaxOrigins exceeded: " + f5687b.size());
            }
        }
    }

    /* renamed from: b */
    public final HashMap<String, Map<String, String>> m32669b() {
        HashMap<String, Map<String, String>> hashMap;
        synchronized (this) {
            synchronized (f5687b) {
                hashMap = new HashMap<>(f5687b);
            }
        }
        return hashMap;
    }
}
