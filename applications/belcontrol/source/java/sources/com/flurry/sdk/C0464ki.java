package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ki */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ki.class */
public class C0464ki {

    /* renamed from: a */
    private static final String f3467a = "ki";

    /* renamed from: b */
    private static final HashMap<String, Map<String, String>> f3468b = new HashMap<>();

    /* renamed from: c */
    private static C0464ki f3469c;

    /* renamed from: a */
    public static C0464ki m4643a() {
        C0464ki c0464ki;
        synchronized (C0464ki.class) {
            try {
                if (f3469c == null) {
                    f3469c = new C0464ki();
                }
                c0464ki = f3469c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0464ki;
    }

    /* renamed from: a */
    public final void m4642a(String str, String str2, Map<String, String> map) {
        synchronized (this) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            if (map2.size() >= 10) {
                String str3 = f3467a;
                C0478ku.m4583e(str3, "MaxOriginParams exceeded: " + map2.size());
                return;
            }
            map2.put("flurryOriginVersion", str2);
            HashMap<String, Map<String, String>> hashMap = f3468b;
            synchronized (hashMap) {
                if (hashMap.size() < 10 || hashMap.containsKey(str)) {
                    hashMap.put(str, map2);
                    return;
                }
                String str4 = f3467a;
                C0478ku.m4583e(str4, "MaxOrigins exceeded: " + hashMap.size());
            }
        }
    }

    /* renamed from: b */
    public final HashMap<String, Map<String, String>> m4641b() {
        HashMap<String, Map<String, String>> hashMap;
        synchronized (this) {
            HashMap<String, Map<String, String>> hashMap2 = f3468b;
            synchronized (hashMap2) {
                hashMap = new HashMap<>(hashMap2);
            }
        }
        return hashMap;
    }
}
