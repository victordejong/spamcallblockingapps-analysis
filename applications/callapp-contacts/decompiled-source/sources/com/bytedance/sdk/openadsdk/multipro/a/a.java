package com.bytedance.sdk.openadsdk.multipro.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.e;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/a/a.class */
public class a {
    public static int a(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        synchronized (a.class) {
            if (contentValues != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            ContentResolver a2 = a(context);
                            if (a2 != null) {
                                return a2.update(Uri.parse(a() + str), contentValues, str2, strArr);
                            }
                        } catch (Throwable th) {
                        }
                        return 0;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return 0;
        }
    }

    public static int a(Context context, String str, String str2, String[] strArr) {
        synchronized (a.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return 0;
                }
                try {
                    ContentResolver a2 = a(context);
                    if (a2 != null) {
                        return a2.delete(Uri.parse(a() + str), str2, strArr);
                    }
                } catch (Throwable th) {
                }
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static ContentResolver a(Context context) {
        Context context2 = context;
        if (context == null) {
            try {
                context2 = n.a();
            } catch (Throwable th) {
                return null;
            }
        }
        return context2.getContentResolver();
    }

    public static Cursor a(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        synchronized (a.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    ContentResolver a2 = a(context);
                    if (a2 != null) {
                        return a2.query(Uri.parse(a() + str), strArr, str2, strArr2, str5);
                    }
                } catch (Throwable th) {
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static String a() {
        return e.f9904b + "/t_db/ttopensdk.db/";
    }

    public static void a(Context context, String str) {
        synchronized (a.class) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        ContentResolver a2 = a(context);
                        if (a2 != null) {
                            a2.getType(Uri.parse(a() + "unknown/execSQL?sql=" + Uri.encode(str)));
                        }
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(Context context, String str, ContentValues contentValues) {
        synchronized (a.class) {
            if (contentValues != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            ContentResolver a2 = a(context);
                            if (a2 != null) {
                                a2.insert(Uri.parse(a() + str), contentValues);
                            }
                        } catch (Throwable th) {
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
