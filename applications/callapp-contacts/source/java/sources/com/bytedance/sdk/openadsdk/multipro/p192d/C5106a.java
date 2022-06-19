package com.bytedance.sdk.openadsdk.multipro.p192d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5109e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.HashSet;
import java.util.Set;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d/a.class */
public class C5106a {

    /* renamed from: a */
    private static Context f18374a;

    /* renamed from: a */
    public static int m33047a(String str, String str2, int i) {
        if (!m33051a()) {
            return i;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b != null) {
                String type = m33038b.getType(Uri.parse(m33032d() + "int/" + str2 + m33037b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Integer.parseInt(type);
                }
            }
        } catch (Throwable th) {
        }
        return i;
    }

    /* renamed from: a */
    public static long m33046a(String str, String str2, long j) {
        if (!m33051a()) {
            return j;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b != null) {
                String type = m33038b.getType(Uri.parse(m33032d() + "long/" + str2 + m33037b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Long.parseLong(type);
                }
            }
        } catch (Throwable th) {
        }
        return j;
    }

    /* renamed from: a */
    public static void m33050a(Context context) {
        f18374a = context == null ? C4600n.m34815a() : context.getApplicationContext();
    }

    /* renamed from: a */
    public static void m33049a(String str) {
        if (!m33051a()) {
            return;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b == null) {
                return;
            }
            m33038b.delete(Uri.parse(m33032d() + "clean" + m33037b(str)), null, null);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m33048a(String str, String str2) {
        synchronized (C5106a.class) {
            try {
                m33041a((String) null, str, str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m33045a(String str, String str2, Boolean bool) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "boolean/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", bool);
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33044a(String str, String str2, Float f) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "float/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", f);
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33043a(String str, String str2, Integer num) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "int/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", num);
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33042a(String str, String str2, Long l) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "long/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", l);
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33041a(String str, String str2, String str3) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "string/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", str3);
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33040a(String str, String str2, Set<String> set) {
        synchronized (C5106a.class) {
            try {
                if (!m33051a()) {
                    return;
                }
                try {
                    ContentResolver m33038b = m33038b();
                    if (m33038b != null) {
                        Uri parse = Uri.parse(m33032d() + "string_set/" + str2 + m33037b(str));
                        ContentValues contentValues = new ContentValues();
                        HashSet hashSet = new HashSet();
                        for (String str3 : set) {
                            hashSet.add(str3.replace(",", "__COMMA__"));
                        }
                        contentValues.put("value", hashSet.toString());
                        m33038b.update(parse, contentValues, null, null);
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static boolean m33051a() {
        if (f18374a == null || C4600n.m34815a() == null) {
            C5478q.m32113b("The context of SPHelper is null, please initialize sdk in main process");
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m33039a(String str, String str2, boolean z) {
        if (!m33051a()) {
            return z;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b != null) {
                String type = m33038b.getType(Uri.parse(m33032d() + "boolean/" + str2 + m33037b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Boolean.parseBoolean(type);
                }
            }
        } catch (Throwable th) {
        }
        return z;
    }

    /* renamed from: b */
    private static ContentResolver m33038b() {
        try {
            if (!m33051a()) {
                return null;
            }
            return m33033c().getContentResolver();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static String m33037b(String str) {
        return TextUtils.isEmpty(str) ? "" : "?sp_file_name=".concat(String.valueOf(str));
    }

    /* renamed from: b */
    public static String m33035b(String str, String str2, String str3) {
        if (!m33051a()) {
            return str3;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b != null) {
                String type = m33038b.getType(Uri.parse(m33032d() + "string/" + str2 + m33037b(str)));
                if (type != null) {
                    if (!type.equals(JsonReaderKt.NULL)) {
                        return type;
                    }
                }
            }
        } catch (Throwable th) {
        }
        return str3;
    }

    /* renamed from: b */
    public static Set<String> m33034b(String str, String str2, Set<String> set) {
        if (!m33051a()) {
            return set;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b != null) {
                String type = m33038b.getType(Uri.parse(m33032d() + "string_set/" + str2 + m33037b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    if (!type.matches("\\[.*\\]")) {
                        return set;
                    }
                    String[] split = type.substring(1, type.length() - 1).split(", ");
                    HashSet hashSet = new HashSet();
                    for (String str3 : split) {
                        hashSet.add(str3.replace("__COMMA__", ", "));
                    }
                    return hashSet;
                }
            }
        } catch (Throwable th) {
        }
        return set;
    }

    /* renamed from: b */
    public static void m33036b(String str, String str2) {
        if (!m33051a()) {
            return;
        }
        try {
            ContentResolver m33038b = m33038b();
            if (m33038b == null) {
                return;
            }
            m33038b.delete(Uri.parse(m33032d() + "long/" + str2 + m33037b(str)), null, null);
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    private static Context m33033c() {
        Context context = f18374a;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    /* renamed from: d */
    private static String m33032d() {
        return C5109e.f18378b + "/t_sp/";
    }
}
