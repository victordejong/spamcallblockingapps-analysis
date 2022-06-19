package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* renamed from: com.bytedance.sdk.openadsdk.utils.x */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/x.class */
public final class C5486x {

    /* renamed from: a */
    private static String f19029a;

    /* renamed from: b */
    private static Resources f19030b;

    /* renamed from: a */
    private static int m32070a(Context context, String str, String str2) {
        if (f19030b == null) {
            f19030b = context.getResources();
        }
        return f19030b.getIdentifier(str, str2, m32072a(context));
    }

    /* renamed from: a */
    private static String m32072a(Context context) {
        if (f19029a == null) {
            f19029a = context.getPackageName();
        }
        return f19029a;
    }

    /* renamed from: a */
    public static String m32071a(Context context, String str) {
        return context.getResources().getString(m32069b(context, str));
    }

    /* renamed from: b */
    public static int m32069b(Context context, String str) {
        return m32070a(context, str, "string");
    }

    /* renamed from: c */
    public static Drawable m32068c(Context context, String str) {
        return context.getResources().getDrawable(m32067d(context, str));
    }

    /* renamed from: d */
    public static int m32067d(Context context, String str) {
        return m32070a(context, str, "drawable");
    }

    /* renamed from: e */
    public static int m32066e(Context context, String str) {
        return m32070a(context, str, "id");
    }

    /* renamed from: f */
    public static int m32065f(Context context, String str) {
        return m32070a(context, str, "layout");
    }

    /* renamed from: g */
    public static int m32064g(Context context, String str) {
        return m32070a(context, str, "style");
    }

    /* renamed from: h */
    public static int m32063h(Context context, String str) {
        return m32070a(context, str, "dimen");
    }

    /* renamed from: i */
    public static int m32062i(Context context, String str) {
        return context.getResources().getColor(m32061j(context, str));
    }

    /* renamed from: j */
    public static int m32061j(Context context, String str) {
        return m32070a(context, str, "color");
    }

    /* renamed from: k */
    public static int m32060k(Context context, String str) {
        return m32070a(context, str, "integer");
    }

    /* renamed from: l */
    public static int m32059l(Context context, String str) {
        return context.getResources().getInteger(m32060k(context, str));
    }
}
