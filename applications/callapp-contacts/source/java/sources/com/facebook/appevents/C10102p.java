package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import com.facebook.C10181g;
import com.facebook.appevents.p279a.C9964c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.p */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/p.class */
public class C10102p {

    /* renamed from: a */
    private static final String f33455a = "p";

    /* renamed from: b */
    private static SharedPreferences f33456b;

    /* renamed from: c */
    private static AtomicBoolean f33457c = new AtomicBoolean(false);

    /* renamed from: d */
    private static final ConcurrentHashMap<String, String> f33458d = new ConcurrentHashMap<>();

    /* renamed from: e */
    private static final ConcurrentHashMap<String, String> f33459e = new ConcurrentHashMap<>();

    /* renamed from: a */
    private static String m23402a(String str, String str2) {
        if (C10249a.m23108a(C10102p.class)) {
            return null;
        }
        try {
            String lowerCase = str2.trim().toLowerCase();
            if ("em".equals(str)) {
                if (Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                    return lowerCase;
                }
                Log.e(f33455a, "Setting email failure: this is not a valid email address");
                return "";
            } else if ("ph".equals(str)) {
                return lowerCase.replaceAll("[^0-9]", "");
            } else {
                if (!"ge".equals(str)) {
                    return lowerCase;
                }
                String substring = lowerCase.length() > 0 ? lowerCase.substring(0, 1) : "";
                if (!"f".equals(substring) && !"m".equals(substring)) {
                    Log.e(f33455a, "Setting gender failure: the supported value for gender is f or m");
                    return "";
                }
                return substring;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23403a() {
        if (C10249a.m23108a(C10102p.class)) {
            return;
        }
        try {
            if (f33457c.get()) {
                return;
            }
            m23395g();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
        }
    }

    /* renamed from: a */
    public static void m23401a(Map<String, String> map) {
        if (C10249a.m23108a(C10102p.class)) {
            return;
        }
        try {
            if (!f33457c.get()) {
                m23395g();
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String m23200c = C10213ae.m23200c(m23402a(key, map.get(key).trim()));
                ConcurrentHashMap<String, String> concurrentHashMap = f33459e;
                if (concurrentHashMap.containsKey(key)) {
                    String str = concurrentHashMap.get(key);
                    String[] split = str != null ? str.split(",") : new String[0];
                    HashSet hashSet = new HashSet(Arrays.asList(split));
                    if (hashSet.contains(m23200c)) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    if (split.length == 0) {
                        sb.append(m23200c);
                    } else if (split.length < 5) {
                        sb.append(str);
                        sb.append(",");
                        sb.append(m23200c);
                    } else {
                        for (int i = 1; i < 5; i++) {
                            sb.append(split[i]);
                            sb.append(",");
                        }
                        sb.append(m23200c);
                        hashSet.remove(split[0]);
                    }
                    f33459e.put(key, sb.toString());
                } else {
                    concurrentHashMap.put(key, m23200c);
                }
            }
            final String m23221a = C10213ae.m23221a(f33459e);
            if (C10249a.m23108a(C10102p.class)) {
                return;
            }
            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.p.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        if (!C10102p.m23399c().get()) {
                            C10102p.m23398d();
                        }
                        C10102p.m23397e().edit().putString(r4, m23221a).apply();
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
        }
    }

    /* renamed from: b */
    public static String m23400b() {
        if (C10249a.m23108a(C10102p.class)) {
            return null;
        }
        try {
            if (!f33457c.get()) {
                m23395g();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(f33458d);
            hashMap.putAll(m23396f());
            return C10213ae.m23221a(hashMap);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
            return null;
        }
    }

    /* renamed from: c */
    static /* synthetic */ AtomicBoolean m23399c() {
        if (C10249a.m23108a(C10102p.class)) {
            return null;
        }
        try {
            return f33457c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
            return null;
        }
    }

    /* renamed from: d */
    static /* synthetic */ void m23398d() {
        if (C10249a.m23108a(C10102p.class)) {
            return;
        }
        try {
            m23395g();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
        }
    }

    /* renamed from: e */
    static /* synthetic */ SharedPreferences m23397e() {
        if (C10249a.m23108a(C10102p.class)) {
            return null;
        }
        try {
            return f33456b;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
            return null;
        }
    }

    /* renamed from: f */
    private static Map<String, String> m23396f() {
        if (C10249a.m23108a(C10102p.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Set<String> m23731e = C9964c.m23731e();
            for (String str : f33459e.keySet()) {
                if (m23731e.contains(str)) {
                    hashMap.put(str, f33459e.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10102p.class);
            return null;
        }
    }

    /* renamed from: g */
    private static void m23395g() {
        synchronized (C10102p.class) {
            try {
                if (C10249a.m23108a(C10102p.class)) {
                    return;
                }
                if (f33457c.get()) {
                    return;
                }
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C10181g.m23290i());
                f33456b = defaultSharedPreferences;
                String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
                String string2 = f33456b.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                f33458d.putAll(C10213ae.m23189f(string));
                f33459e.putAll(C10213ae.m23189f(string2));
                f33457c.set(true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
