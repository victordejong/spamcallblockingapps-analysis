package com.huawei.updatesdk.p111b.p121h;

import android.content.Context;
import android.content.res.Resources;
/* renamed from: com.huawei.updatesdk.b.h.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/h/c.class */
public final class C2573c {

    /* renamed from: a */
    private static String f8288a;

    /* renamed from: b */
    private static Resources f8289b;

    /* renamed from: a */
    public static int m36576a(Context context, String str) {
        return m36575a(context, str, "id");
    }

    /* renamed from: a */
    private static int m36575a(Context context, String str, String str2) {
        if (f8289b == null) {
            f8289b = context.getResources();
        }
        return f8289b.getIdentifier(str, str2, m36577a(context));
    }

    /* renamed from: a */
    private static String m36577a(Context context) {
        if (f8288a == null) {
            f8288a = context.getPackageName();
        }
        return f8288a;
    }

    /* renamed from: b */
    public static int m36574b(Context context, String str) {
        return m36575a(context, str, "layout");
    }

    /* renamed from: c */
    public static int m36573c(Context context, String str) {
        return m36575a(context, str, "string");
    }
}
