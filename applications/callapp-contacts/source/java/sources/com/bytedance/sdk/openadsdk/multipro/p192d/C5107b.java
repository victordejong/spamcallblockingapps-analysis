package com.bytedance.sdk.openadsdk.multipro.p192d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.d.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d/b.class */
class C5107b {

    /* renamed from: a */
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> f18375a;

    /* renamed from: a */
    private static float m33029a(Context context, String str, String str2, float f) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c == null ? f : m33016c.getFloat(str2, f);
    }

    /* renamed from: a */
    private static int m33028a(Context context, String str, String str2, int i) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c == null ? i : m33016c.getInt(str2, i);
    }

    /* renamed from: a */
    private static long m33027a(Context context, String str, String str2, long j) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c == null ? j : m33016c.getLong(str2, j);
    }

    /* renamed from: a */
    private static Object m33022a(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f18375a;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(m33023a(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    /* renamed from: a */
    public static String m33025a(Context context, String str, String str2, String str3) {
        Object m33022a = m33022a(str, str2);
        if (m33022a != null) {
            return String.valueOf(m33022a);
        }
        Object m33018b = m33018b(context, str, str2, str3);
        m33021a(str, str2, m33018b);
        return String.valueOf(m33018b);
    }

    /* renamed from: a */
    private static String m33023a(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "sphelper_ttopenadsdk";
        }
        return str2;
    }

    /* renamed from: a */
    public static void m33031a(Context context, String str) {
        SharedPreferences.Editor edit = m33016c(context, str).edit();
        edit.clear();
        edit.apply();
        m33017b(str);
    }

    /* renamed from: a */
    public static <T> void m33026a(Context context, String str, String str2, T t) {
        synchronized (C5107b.class) {
            try {
                SharedPreferences m33016c = m33016c(context, str);
                if (m33016c == null) {
                    return;
                }
                if (t.equals(m33022a(str, str2))) {
                    return;
                }
                SharedPreferences.Editor edit = m33016c.edit();
                if (t instanceof Boolean) {
                    edit.putBoolean(str2, ((Boolean) t).booleanValue());
                }
                if (t instanceof String) {
                    edit.putString(str2, (String) t);
                }
                if (t instanceof Integer) {
                    edit.putInt(str2, ((Integer) t).intValue());
                }
                if (t instanceof Long) {
                    edit.putLong(str2, ((Long) t).longValue());
                }
                if (t instanceof Float) {
                    edit.putFloat(str2, ((Float) t).floatValue());
                }
                edit.apply();
                m33021a(str, str2, t);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m33021a(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f18375a;
        if (softReference == null || softReference.get() == null) {
            f18375a = new SoftReference<>(new ConcurrentHashMap());
        }
        String m33023a = m33023a(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = f18375a.get();
        if (concurrentHashMap.get(m33023a) == null) {
            concurrentHashMap.put(m33023a, new HashMap());
        }
        concurrentHashMap.get(m33023a).put(str2, obj);
    }

    /* renamed from: a */
    public static boolean m33030a(Context context, String str, String str2) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c != null && m33016c.contains(str2);
    }

    /* renamed from: a */
    private static boolean m33024a(Context context, String str, String str2, boolean z) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c == null ? z : m33016c.getBoolean(str2, z);
    }

    /* renamed from: b */
    private static Object m33018b(Context context, String str, String str2, String str3) {
        String m33023a = m33023a(str);
        if (!m33030a(context, m33023a, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase("string")) {
            return m33015c(context, m33023a, str2, null);
        }
        if (str3.equalsIgnoreCase("boolean")) {
            return Boolean.valueOf(m33024a(context, m33023a, str2, false));
        }
        if (str3.equalsIgnoreCase("int")) {
            return Integer.valueOf(m33028a(context, m33023a, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(m33027a(context, m33023a, str2, 0L));
        }
        if (str3.equalsIgnoreCase("float")) {
            return Float.valueOf(m33029a(context, m33023a, str2, (float) BitmapDescriptorFactory.HUE_RED));
        }
        if (!str3.equalsIgnoreCase("string_set")) {
            return null;
        }
        return m33015c(context, m33023a, str2, null);
    }

    /* renamed from: b */
    public static Map<String, ?> m33020b(Context context, String str) {
        return m33016c(context, str).getAll();
    }

    /* renamed from: b */
    public static void m33019b(Context context, String str, String str2) {
        try {
            SharedPreferences m33016c = m33016c(context, str);
            if (m33016c == null) {
                return;
            }
            SharedPreferences.Editor edit = m33016c.edit();
            edit.remove(str2);
            edit.apply();
            SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f18375a;
            if (softReference == null || softReference.get() == null) {
                return;
            }
            Map<String, Object> map = f18375a.get().get(m33023a(str));
            if (map != null && map.size() != 0) {
                map.remove(str2);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private static void m33017b(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f18375a;
        if (softReference == null || softReference.get() == null || (map = f18375a.get().get(m33023a(str))) == null) {
            return;
        }
        map.clear();
    }

    /* renamed from: c */
    private static SharedPreferences m33016c(Context context, String str) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences(m33023a(str), 0);
    }

    /* renamed from: c */
    private static String m33015c(Context context, String str, String str2, String str3) {
        SharedPreferences m33016c = m33016c(context, str);
        return m33016c == null ? str3 : m33016c.getString(str2, str3);
    }
}
