package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.sdk.android.core.C17282n;
/* renamed from: com.twitter.sdk.android.core.internal.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b.class */
public final class C17243b {
    /* renamed from: a */
    public static String m5676a(Context context, String str, String str2) {
        Resources resources;
        int m5674b;
        return (context == null || (resources = context.getResources()) == null || (m5674b = m5674b(context, str, "string")) <= 0) ? str2 : resources.getString(m5674b);
    }

    /* renamed from: a */
    public static void m5675a(String str, String str2) {
        if (!C17282n.m5630b()) {
            C17282n.m5628c().mo5712b(str, str2);
            return;
        }
        throw new IllegalStateException(str2);
    }

    /* renamed from: b */
    private static int m5674b(Context context, String str, String str2) {
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return resources.getIdentifier(str, str2, i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName());
    }
}
