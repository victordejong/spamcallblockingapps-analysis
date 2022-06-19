package com.bytedance.sdk.openadsdk.multipro.p187a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.C5109e;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/a/a.class */
public class C5069a {
    /* renamed from: a */
    public static int m33118a(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        synchronized (C5069a.class) {
            if (contentValues != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            ContentResolver m33121a = m33121a(context);
                            if (m33121a != null) {
                                return m33121a.update(Uri.parse(m33122a() + str), contentValues, str2, strArr);
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

    /* renamed from: a */
    public static int m33117a(Context context, String str, String str2, String[] strArr) {
        synchronized (C5069a.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return 0;
                }
                try {
                    ContentResolver m33121a = m33121a(context);
                    if (m33121a != null) {
                        return m33121a.delete(Uri.parse(m33122a() + str), str2, strArr);
                    }
                } catch (Throwable th) {
                }
                return 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    private static ContentResolver m33121a(Context context) {
        Context context2 = context;
        if (context == null) {
            try {
                context2 = C4600n.m34815a();
            } catch (Throwable th) {
                return null;
            }
        }
        return context2.getContentResolver();
    }

    /* renamed from: a */
    public static Cursor m33116a(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        synchronized (C5069a.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    ContentResolver m33121a = m33121a(context);
                    if (m33121a != null) {
                        return m33121a.query(Uri.parse(m33122a() + str), strArr, str2, strArr2, str5);
                    }
                } catch (Throwable th) {
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    private static String m33122a() {
        return C5109e.f18378b + "/t_db/ttopensdk.db/";
    }

    /* renamed from: a */
    public static void m33120a(Context context, String str) {
        synchronized (C5069a.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    ContentResolver m33121a = m33121a(context);
                    if (m33121a != null) {
                        m33121a.getType(Uri.parse(m33122a() + "unknown/execSQL?sql=" + Uri.encode(str)));
                    }
                } catch (Throwable th) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m33119a(Context context, String str, ContentValues contentValues) {
        synchronized (C5069a.class) {
            if (contentValues != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            ContentResolver m33121a = m33121a(context);
                            if (m33121a != null) {
                                m33121a.insert(Uri.parse(m33122a() + str), contentValues);
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
