package com.facebook.p094a;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import com.facebook.C2095j;
import com.facebook.internal.C2079x;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.a.p */
/* loaded from: classes-dex2jar.jar:com/facebook/a/p.class */
public class C1932p {

    /* renamed from: b */
    private static SharedPreferences f5820b;

    /* renamed from: a */
    private static final String f5819a = C1932p.class.getSimpleName();

    /* renamed from: c */
    private static AtomicBoolean f5821c = new AtomicBoolean(false);

    /* renamed from: d */
    private static final ConcurrentHashMap<String, String> f5822d = new ConcurrentHashMap<>();

    /* renamed from: e */
    private static final ConcurrentHashMap<String, String> f5823e = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static void m15838a() {
        if (f5821c.get()) {
            return;
        }
        m15828g();
    }

    /* renamed from: a */
    private static void m15837a(final String str, final String str2) {
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.p.1
            @Override // java.lang.Runnable
            public void run() {
                if (!C1932p.f5821c.get()) {
                    C1932p.m15828g();
                }
                C1932p.f5820b.edit().putString(str, str2).apply();
            }
        });
    }

    /* renamed from: a */
    public static void m15836a(List<String> list) {
        if (!f5821c.get()) {
            m15828g();
        }
        for (String str : list) {
            if (f5823e.containsKey(str)) {
                f5823e.remove(str);
            }
        }
        m15837a("com.facebook.appevents.UserDataStore.internalUserData", C2079x.m15461a(f5823e));
    }

    /* renamed from: a */
    public static void m15835a(Map<String, String> map) {
        if (!f5821c.get()) {
            m15828g();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String m15442c = C2079x.m15442c(m15833b(key, map.get(key).trim()));
            if (f5823e.containsKey(key)) {
                String str = f5823e.get(key);
                String[] split = str != null ? str.split(",") : new String[0];
                HashSet hashSet = new HashSet(Arrays.asList(split));
                if (hashSet.contains(m15442c)) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                if (split.length == 0) {
                    sb.append(m15442c);
                } else if (split.length < 5) {
                    sb.append(str).append(",").append(m15442c);
                } else {
                    for (int i = 1; i < 5; i++) {
                        sb.append(split[i]).append(",");
                    }
                    sb.append(m15442c);
                    hashSet.remove(split[0]);
                }
                f5823e.put(key, sb.toString());
            } else {
                f5823e.put(key, m15442c);
            }
        }
        m15837a("com.facebook.appevents.UserDataStore.internalUserData", C2079x.m15461a(f5823e));
    }

    /* renamed from: b */
    public static String m15834b() {
        if (!f5821c.get()) {
            m15828g();
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(f5822d);
        hashMap.putAll(f5823e);
        return C2079x.m15461a(hashMap);
    }

    /* renamed from: b */
    private static String m15833b(String str, String str2) {
        String str3;
        String lowerCase = str2.trim().toLowerCase();
        if ("em".equals(str)) {
            if (Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                str3 = lowerCase;
            } else {
                Log.e(f5819a, "Setting email failure: this is not a valid email address");
                str3 = "";
            }
        } else if ("ph".equals(str)) {
            str3 = lowerCase.replaceAll("[^0-9]", "");
        } else {
            str3 = lowerCase;
            if ("ge".equals(str)) {
                String substring = lowerCase.length() > 0 ? lowerCase.substring(0, 1) : "";
                str3 = substring;
                if (!"f".equals(substring)) {
                    str3 = substring;
                    if (!"m".equals(substring)) {
                        Log.e(f5819a, "Setting gender failure: the supported value for gender is f or m");
                        str3 = "";
                    }
                }
            }
        }
        return str3;
    }

    /* renamed from: c */
    public static Map<String, String> m15832c() {
        if (!f5821c.get()) {
            m15828g();
        }
        return new HashMap(f5823e);
    }

    /* renamed from: g */
    public static void m15828g() {
        synchronized (C1932p.class) {
            try {
                if (!f5821c.get()) {
                    f5820b = PreferenceManager.getDefaultSharedPreferences(C2095j.m15360h());
                    String string = f5820b.getString("com.facebook.appevents.UserDataStore.userData", "");
                    String string2 = f5820b.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                    f5822d.putAll(C2079x.m15434e(string));
                    f5823e.putAll(C2079x.m15434e(string2));
                    f5821c.set(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
