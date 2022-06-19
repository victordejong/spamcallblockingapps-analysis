package com.callerid.block.util;

import android.content.Context;
import android.util.TypedValue;
import androidx.core.content.C0265a;
/* renamed from: com.callerid.block.util.p0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/p0.class */
public class C1205p0 {
    /* renamed from: a */
    public static int m9636a(Context context, int i, int i2) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            return typedValue.data;
        } catch (Exception e) {
            e.printStackTrace();
            return C0265a.m13553d(context, i2);
        }
    }

    /* renamed from: b */
    public static int m9635b(Context context, int i, int i2) {
        try {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(i, typedValue, true);
            return typedValue.resourceId;
        } catch (Exception e) {
            e.printStackTrace();
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "Exception: " + e.getMessage());
            }
            return i2;
        }
    }

    /* renamed from: c */
    public static void m9634c(Context context, int i) {
        if (context == null) {
            return;
        }
        context.getApplicationContext().setTheme(i);
    }
}
