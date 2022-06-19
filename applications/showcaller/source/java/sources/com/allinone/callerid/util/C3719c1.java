package com.allinone.callerid.util;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.content.C0586a;
/* renamed from: com.allinone.callerid.util.c1 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/c1.class */
public class C3719c1 {
    /* renamed from: a */
    public static int m24432a(Context context, int i, int i2) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            return typedValue.data;
        } catch (Exception e) {
            e.printStackTrace();
            return C0586a.m33350d(context, i2);
        }
    }

    /* renamed from: b */
    public static int m24431b(Context context, int i, int i2) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            return typedValue.resourceId;
        } catch (Exception e) {
            e.printStackTrace();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "Exception: " + e.getMessage());
            }
            return i2;
        }
    }

    /* renamed from: c */
    public static void m24430c(Context context, int i) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().setTheme(i);
    }
}
