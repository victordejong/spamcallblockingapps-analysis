package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import com.facebook.appevents.a.c;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/p.class */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19665a = "p";

    /* renamed from: b  reason: collision with root package name */
    private static SharedPreferences f19666b;

    /* renamed from: c  reason: collision with root package name */
    private static AtomicBoolean f19667c = new AtomicBoolean(false);

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentHashMap<String, String> f19668d = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, String> e = new ConcurrentHashMap<>();

    private static String a(String str, String str2) {
        if (a.a(p.class)) {
            return null;
        }
        try {
            String lowerCase = str2.trim().toLowerCase();
            if ("em".equals(str)) {
                if (Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                    return lowerCase;
                }
                Log.e(f19665a, "Setting email failure: this is not a valid email address");
                return "";
            } else if ("ph".equals(str)) {
                return lowerCase.replaceAll("[^0-9]", "");
            } else {
                if (!"ge".equals(str)) {
                    return lowerCase;
                }
                String substring = lowerCase.length() > 0 ? lowerCase.substring(0, 1) : "";
                if (!"f".equals(substring) && !"m".equals(substring)) {
                    Log.e(f19665a, "Setting gender failure: the supported value for gender is f or m");
                    return "";
                }
                return substring;
            }
        } catch (Throwable th) {
            a.a(th, p.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!a.a(p.class)) {
            try {
                if (!f19667c.get()) {
                    g();
                }
            } catch (Throwable th) {
                a.a(th, p.class);
            }
        }
    }

    public static void a(Map<String, String> map) {
        if (!a.a(p.class)) {
            try {
                if (!f19667c.get()) {
                    g();
                }
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String c2 = ae.c(a(key, map.get(key).trim()));
                    ConcurrentHashMap<String, String> concurrentHashMap = e;
                    if (concurrentHashMap.containsKey(key)) {
                        String str = concurrentHashMap.get(key);
                        String[] split = str != null ? str.split(",") : new String[0];
                        HashSet hashSet = new HashSet(Arrays.asList(split));
                        if (!hashSet.contains(c2)) {
                            StringBuilder sb = new StringBuilder();
                            if (split.length == 0) {
                                sb.append(c2);
                            } else if (split.length < 5) {
                                sb.append(str);
                                sb.append(",");
                                sb.append(c2);
                            } else {
                                for (int i = 1; i < 5; i++) {
                                    sb.append(split[i]);
                                    sb.append(",");
                                }
                                sb.append(c2);
                                hashSet.remove(split[0]);
                            }
                            e.put(key, sb.toString());
                        } else {
                            return;
                        }
                    } else {
                        concurrentHashMap.put(key, c2);
                    }
                }
                final String a2 = ae.a(e);
                if (!a.a(p.class)) {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.p.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.a(this)) {
                                try {
                                    if (!p.c().get()) {
                                        p.d();
                                    }
                                    p.e().edit().putString(r4, a2).apply();
                                } catch (Throwable th) {
                                    a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                a.a(th, p.class);
            }
        }
    }

    public static String b() {
        if (a.a(p.class)) {
            return null;
        }
        try {
            if (!f19667c.get()) {
                g();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(f19668d);
            hashMap.putAll(f());
            return ae.a(hashMap);
        } catch (Throwable th) {
            a.a(th, p.class);
            return null;
        }
    }

    static /* synthetic */ AtomicBoolean c() {
        if (a.a(p.class)) {
            return null;
        }
        try {
            return f19667c;
        } catch (Throwable th) {
            a.a(th, p.class);
            return null;
        }
    }

    static /* synthetic */ void d() {
        if (!a.a(p.class)) {
            try {
                g();
            } catch (Throwable th) {
                a.a(th, p.class);
            }
        }
    }

    static /* synthetic */ SharedPreferences e() {
        if (a.a(p.class)) {
            return null;
        }
        try {
            return f19666b;
        } catch (Throwable th) {
            a.a(th, p.class);
            return null;
        }
    }

    private static Map<String, String> f() {
        if (a.a(p.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Set<String> e2 = c.e();
            for (String str : e.keySet()) {
                if (e2.contains(str)) {
                    hashMap.put(str, e.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            a.a(th, p.class);
            return null;
        }
    }

    private static void g() {
        synchronized (p.class) {
            try {
                if (!a.a(p.class)) {
                    if (!f19667c.get()) {
                        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(g.i());
                        f19666b = defaultSharedPreferences;
                        String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
                        String string2 = f19666b.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                        f19668d.putAll(ae.f(string));
                        e.putAll(ae.f(string2));
                        f19667c.set(true);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
