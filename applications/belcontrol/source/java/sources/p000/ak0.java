package p000;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Patterns;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: ak0 */
/* loaded from: classes-dex2jar.jar:ak0.class */
public class ak0 {

    /* renamed from: a */
    public static final String f339a = "ak0";

    /* renamed from: b */
    public static SharedPreferences f340b;

    /* renamed from: c */
    public static AtomicBoolean f341c = new AtomicBoolean(false);

    /* renamed from: d */
    public static final ConcurrentHashMap<String, String> f342d = new ConcurrentHashMap<>();

    /* renamed from: e */
    public static final ConcurrentHashMap<String, String> f343e = new ConcurrentHashMap<>();

    /* renamed from: ak0$a */
    /* loaded from: classes-dex2jar.jar:ak0$a.class */
    public static final class RunnableC0043a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f344a;

        /* renamed from: b */
        public final /* synthetic */ String f345b;

        public RunnableC0043a(String str, String str2) {
            this.f344a = str;
            this.f345b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ak0.f341c.get()) {
                ak0.m7086f();
            }
            ak0.f340b.edit().putString(this.f344a, this.f345b).apply();
        }
    }

    /* renamed from: d */
    public static String m7088d() {
        if (!f341c.get()) {
            m7086f();
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(f342d);
        hashMap.putAll(f343e);
        return fn0.Z(hashMap);
    }

    /* renamed from: e */
    public static Map<String, String> m7087e() {
        if (!f341c.get()) {
            m7086f();
        }
        return new HashMap(f343e);
    }

    /* renamed from: f */
    public static void m7086f() {
        synchronized (ak0.class) {
            try {
                if (f341c.get()) {
                    return;
                }
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ui0.e());
                f340b = defaultSharedPreferences;
                String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
                String string2 = f340b.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                f342d.putAll(fn0.a(string));
                f343e.putAll(fn0.a(string2));
                f341c.set(true);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public static void m7085g() {
        if (f341c.get()) {
            return;
        }
        m7086f();
    }

    /* renamed from: h */
    public static String m7084h(String str, String str2) {
        String str3;
        String str4;
        String lowerCase = str2.trim().toLowerCase();
        if ("em".equals(str)) {
            if (Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                return lowerCase;
            }
            str3 = f339a;
            str4 = "Setting email failure: this is not a valid email address";
        } else if ("ph".equals(str)) {
            return lowerCase.replaceAll("[^0-9]", "");
        } else {
            if (!"ge".equals(str)) {
                return lowerCase;
            }
            String substring = lowerCase.length() > 0 ? lowerCase.substring(0, 1) : "";
            if ("f".equals(substring) || "m".equals(substring)) {
                return substring;
            }
            str3 = f339a;
            str4 = "Setting gender failure: the supported value for gender is f or m";
        }
        Log.e(str3, str4);
        return "";
    }

    /* renamed from: i */
    public static void m7083i(List<String> list) {
        if (!f341c.get()) {
            m7086f();
        }
        for (String str : list) {
            ConcurrentHashMap<String, String> concurrentHashMap = f343e;
            if (concurrentHashMap.containsKey(str)) {
                concurrentHashMap.remove(str);
            }
        }
        m7081k("com.facebook.appevents.UserDataStore.internalUserData", fn0.Z(f343e));
    }

    /* renamed from: j */
    public static void m7082j(Map<String, String> map) {
        if (!f341c.get()) {
            m7086f();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String t0 = fn0.t0(m7084h(key, map.get(key).trim()));
            ConcurrentHashMap<String, String> concurrentHashMap = f343e;
            if (concurrentHashMap.containsKey(key)) {
                String str = concurrentHashMap.get(key);
                String[] split = str != null ? str.split(",") : new String[0];
                HashSet hashSet = new HashSet(Arrays.asList(split));
                if (hashSet.contains(t0)) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                if (split.length != 0) {
                    if (split.length < 5) {
                        sb.append(str);
                        sb.append(",");
                    } else {
                        for (int i = 1; i < 5; i++) {
                            sb.append(split[i]);
                            sb.append(",");
                        }
                        sb.append(t0);
                        hashSet.remove(split[0]);
                        f343e.put(key, sb.toString());
                    }
                }
                sb.append(t0);
                f343e.put(key, sb.toString());
            } else {
                concurrentHashMap.put(key, t0);
            }
        }
        m7081k("com.facebook.appevents.UserDataStore.internalUserData", fn0.Z(f343e));
    }

    /* renamed from: k */
    public static void m7081k(String str, String str2) {
        ui0.o().execute(new RunnableC0043a(str, str2));
    }
}
