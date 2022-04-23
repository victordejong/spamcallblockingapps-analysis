package com.bytedance.sdk.openadsdk.multipro.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d/b.class */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static SoftReference<ConcurrentHashMap<String, Map<String, Object>>> f9901a;

    private static float a(Context context, String str, String str2, float f) {
        SharedPreferences c2 = c(context, str);
        return c2 == null ? f : c2.getFloat(str2, f);
    }

    private static int a(Context context, String str, String str2, int i) {
        SharedPreferences c2 = c(context, str);
        return c2 == null ? i : c2.getInt(str2, i);
    }

    private static long a(Context context, String str, String str2, long j) {
        SharedPreferences c2 = c(context, str);
        return c2 == null ? j : c2.getLong(str2, j);
    }

    private static Object a(String str, String str2) {
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap;
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f9901a;
        if (softReference == null || (concurrentHashMap = softReference.get()) == null || (map = concurrentHashMap.get(a(str))) == null) {
            return null;
        }
        return map.get(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context, String str, String str2, String str3) {
        Object a2 = a(str, str2);
        if (a2 != null) {
            return String.valueOf(a2);
        }
        Object b2 = b(context, str, str2, str3);
        a(str, str2, b2);
        return String.valueOf(b2);
    }

    private static String a(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "sphelper_ttopenadsdk";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, String str) {
        SharedPreferences.Editor edit = c(context, str).edit();
        edit.clear();
        edit.apply();
        b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void a(Context context, String str, String str2, T t) {
        synchronized (b.class) {
            try {
                SharedPreferences c2 = c(context, str);
                if (c2 != null) {
                    if (!t.equals(a(str, str2))) {
                        SharedPreferences.Editor edit = c2.edit();
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
                        a(str, str2, t);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(String str, String str2, Object obj) {
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f9901a;
        if (softReference == null || softReference.get() == null) {
            f9901a = new SoftReference<>(new ConcurrentHashMap());
        }
        String a2 = a(str);
        ConcurrentHashMap<String, Map<String, Object>> concurrentHashMap = f9901a.get();
        if (concurrentHashMap.get(a2) == null) {
            concurrentHashMap.put(a2, new HashMap());
        }
        concurrentHashMap.get(a2).put(str2, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, String str, String str2) {
        SharedPreferences c2 = c(context, str);
        return c2 != null && c2.contains(str2);
    }

    private static boolean a(Context context, String str, String str2, boolean z) {
        SharedPreferences c2 = c(context, str);
        return c2 == null ? z : c2.getBoolean(str2, z);
    }

    private static Object b(Context context, String str, String str2, String str3) {
        String a2 = a(str);
        if (!a(context, a2, str2)) {
            return null;
        }
        if (str3.equalsIgnoreCase("string")) {
            return c(context, a2, str2, null);
        }
        if (str3.equalsIgnoreCase("boolean")) {
            return Boolean.valueOf(a(context, a2, str2, false));
        }
        if (str3.equalsIgnoreCase("int")) {
            return Integer.valueOf(a(context, a2, str2, 0));
        }
        if (str3.equalsIgnoreCase("long")) {
            return Long.valueOf(a(context, a2, str2, 0L));
        }
        if (str3.equalsIgnoreCase("float")) {
            return Float.valueOf(a(context, a2, str2, (float) BitmapDescriptorFactory.HUE_RED));
        }
        if (str3.equalsIgnoreCase("string_set")) {
            return c(context, a2, str2, null);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, ?> b(Context context, String str) {
        return c(context, str).getAll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context, String str, String str2) {
        try {
            SharedPreferences c2 = c(context, str);
            if (c2 != null) {
                SharedPreferences.Editor edit = c2.edit();
                edit.remove(str2);
                edit.apply();
                SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f9901a;
                if (softReference != null && softReference.get() != null) {
                    Map<String, Object> map = f9901a.get().get(a(str));
                    if (!(map == null || map.size() == 0)) {
                        map.remove(str2);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static void b(String str) {
        Map<String, Object> map;
        SoftReference<ConcurrentHashMap<String, Map<String, Object>>> softReference = f9901a;
        if (softReference != null && softReference.get() != null && (map = f9901a.get().get(a(str))) != null) {
            map.clear();
        }
    }

    private static SharedPreferences c(Context context, String str) {
        if (context == null) {
            return null;
        }
        return context.getSharedPreferences(a(str), 0);
    }

    private static String c(Context context, String str, String str2, String str3) {
        SharedPreferences c2 = c(context, str);
        return c2 == null ? str3 : c2.getString(str2, str3);
    }
}
