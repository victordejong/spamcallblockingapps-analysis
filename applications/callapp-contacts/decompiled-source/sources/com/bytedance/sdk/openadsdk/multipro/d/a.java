package com.bytedance.sdk.openadsdk.multipro.d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.e;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashSet;
import java.util.Set;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Context f9900a;

    public static int a(String str, String str2, int i) {
        if (!a()) {
            return i;
        }
        try {
            ContentResolver b2 = b();
            if (b2 != null) {
                String type = b2.getType(Uri.parse(d() + "int/" + str2 + b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Integer.parseInt(type);
                }
            }
        } catch (Throwable th) {
        }
        return i;
    }

    public static long a(String str, String str2, long j) {
        if (!a()) {
            return j;
        }
        try {
            ContentResolver b2 = b();
            if (b2 != null) {
                String type = b2.getType(Uri.parse(d() + "long/" + str2 + b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Long.parseLong(type);
                }
            }
        } catch (Throwable th) {
        }
        return j;
    }

    public static void a(Context context) {
        f9900a = context == null ? n.a() : context.getApplicationContext();
    }

    public static void a(String str) {
        if (a()) {
            try {
                ContentResolver b2 = b();
                if (b2 != null) {
                    b2.delete(Uri.parse(d() + "clean" + b(str)), null, null);
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(String str, String str2) {
        synchronized (a.class) {
            try {
                a((String) null, str, str2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void a(String str, String str2, Boolean bool) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "boolean/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("value", bool);
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(String str, String str2, Float f) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "float/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("value", f);
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(String str, String str2, Integer num) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "int/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("value", num);
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(String str, String str2, Long l) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "long/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("value", l);
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(String str, String str2, String str3) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "string/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("value", str3);
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(String str, String str2, Set<String> set) {
        synchronized (a.class) {
            try {
                if (a()) {
                    try {
                        ContentResolver b2 = b();
                        if (b2 != null) {
                            Uri parse = Uri.parse(d() + "string_set/" + str2 + b(str));
                            ContentValues contentValues = new ContentValues();
                            HashSet hashSet = new HashSet();
                            for (String str3 : set) {
                                hashSet.add(str3.replace(",", "__COMMA__"));
                            }
                            contentValues.put("value", hashSet.toString());
                            b2.update(parse, contentValues, null, null);
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean a() {
        if (f9900a != null && n.a() != null) {
            return true;
        }
        q.b("The context of SPHelper is null, please initialize sdk in main process");
        return false;
    }

    public static boolean a(String str, String str2, boolean z) {
        if (!a()) {
            return z;
        }
        try {
            ContentResolver b2 = b();
            if (b2 != null) {
                String type = b2.getType(Uri.parse(d() + "boolean/" + str2 + b(str)));
                if (type != null && !type.equals(JsonReaderKt.NULL)) {
                    return Boolean.parseBoolean(type);
                }
            }
        } catch (Throwable th) {
        }
        return z;
    }

    private static ContentResolver b() {
        try {
            if (a()) {
                return c().getContentResolver();
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : "?sp_file_name=".concat(String.valueOf(str));
    }

    public static String b(String str, String str2, String str3) {
        if (!a()) {
            return str3;
        }
        try {
            ContentResolver b2 = b();
            if (b2 != null) {
                String type = b2.getType(Uri.parse(d() + "string/" + str2 + b(str)));
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

    public static Set<String> b(String str, String str2, Set<String> set) {
        if (!a()) {
            return set;
        }
        try {
            ContentResolver b2 = b();
            if (b2 != null) {
                String type = b2.getType(Uri.parse(d() + "string_set/" + str2 + b(str)));
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

    public static void b(String str, String str2) {
        if (a()) {
            try {
                ContentResolver b2 = b();
                if (b2 != null) {
                    b2.delete(Uri.parse(d() + "long/" + str2 + b(str)), null, null);
                }
            } catch (Throwable th) {
            }
        }
    }

    private static Context c() {
        Context context = f9900a;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }

    private static String d() {
        return e.f9904b + "/t_sp/";
    }
}
