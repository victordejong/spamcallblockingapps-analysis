package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import androidx.annotation.RestrictTo;
import com.facebook.internal.C2408g0;
import com.flurry.sdk.C3156ge;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.p */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/p.class */
public class C2288p {

    /* renamed from: a */
    public static final String f2714a = "p";

    /* renamed from: b */
    public static SharedPreferences f2715b;

    /* renamed from: c */
    public static AtomicBoolean f2716c = new AtomicBoolean(false);

    /* renamed from: d */
    public static final ConcurrentHashMap<String, String> f2717d = new ConcurrentHashMap<>();

    /* renamed from: e */
    public static final ConcurrentHashMap<String, String> f2718e = new ConcurrentHashMap<>();

    /* renamed from: com.facebook.appevents.p$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/p$a.class */
    public static final class RunnableC2289a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f2719a;

        /* renamed from: b */
        public final /* synthetic */ String f2720b;

        public RunnableC2289a(String str, String str2) {
            this.f2719a = str;
            this.f2720b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C2288p.f2716c.get()) {
                C2288p.m35271f();
            }
            C2288p.f2715b.edit().putString(this.f2719a, this.f2720b).apply();
        }
    }

    /* renamed from: a */
    public static String m35279a(String str, String str2) {
        String lowerCase = str2.trim().toLowerCase();
        if ("em".equals(str)) {
            if (Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                return lowerCase;
            }
            Log.e(f2714a, "Setting email failure: this is not a valid email address");
            return "";
        } else if ("ph".equals(str)) {
            return lowerCase.replaceAll("[^0-9]", "");
        } else {
            if (!C3156ge.f5159j.equals(str)) {
                return lowerCase;
            }
            String substring = lowerCase.length() > 0 ? lowerCase.substring(0, 1) : "";
            if ("f".equals(substring) || "m".equals(substring)) {
                return substring;
            }
            Log.e(f2714a, "Setting gender failure: the supported value for gender is f or m");
            return "";
        }
    }

    /* renamed from: a */
    public static void m35278a(List<String> list) {
        if (!f2716c.get()) {
            m35271f();
        }
        for (String str : list) {
            if (f2718e.containsKey(str)) {
                f2718e.remove(str);
            }
        }
        m35275b("com.facebook.appevents.UserDataStore.internalUserData", C2408g0.m34843a(f2718e));
    }

    /* renamed from: a */
    public static void m35277a(Map<String, String> map) {
        if (!f2716c.get()) {
            m35271f();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String g = C2408g0.m34806g(m35279a(key, map.get(key).trim()));
            if (f2718e.containsKey(key)) {
                String str = f2718e.get(key);
                String[] split = str != null ? str.split(",") : new String[0];
                HashSet hashSet = new HashSet(Arrays.asList(split));
                if (!hashSet.contains(g)) {
                    StringBuilder sb = new StringBuilder();
                    if (split.length == 0) {
                        sb.append(g);
                    } else if (split.length < 5) {
                        sb.append(str);
                        sb.append(",");
                        sb.append(g);
                    } else {
                        for (int i = 1; i < 5; i++) {
                            sb.append(split[i]);
                            sb.append(",");
                        }
                        sb.append(g);
                        hashSet.remove(split[0]);
                    }
                    f2718e.put(key, sb.toString());
                } else {
                    return;
                }
            } else {
                f2718e.put(key, g);
            }
        }
        m35275b("com.facebook.appevents.UserDataStore.internalUserData", C2408g0.m34843a(f2718e));
    }

    /* renamed from: b */
    public static void m35275b(String str, String str2) {
        C6135n.m23737n().execute(new RunnableC2289a(str, str2));
    }

    /* renamed from: d */
    public static String m35273d() {
        if (!f2716c.get()) {
            m35271f();
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(f2717d);
        hashMap.putAll(f2718e);
        return C2408g0.m34843a(hashMap);
    }

    /* renamed from: e */
    public static Map<String, String> m35272e() {
        if (!f2716c.get()) {
            m35271f();
        }
        return new HashMap(f2718e);
    }

    /* renamed from: f */
    public static void m35271f() {
        synchronized (C2288p.class) {
            try {
                if (!f2716c.get()) {
                    f2715b = PreferenceManager.getDefaultSharedPreferences(C6135n.m23746e());
                    String string = f2715b.getString("com.facebook.appevents.UserDataStore.userData", "");
                    String string2 = f2715b.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                    f2717d.putAll(C2408g0.m34855a(string));
                    f2718e.putAll(C2408g0.m34855a(string2));
                    f2716c.set(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public static void m35270g() {
        if (!f2716c.get()) {
            m35271f();
        }
    }
}
