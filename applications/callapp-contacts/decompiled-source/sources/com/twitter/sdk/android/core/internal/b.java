package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.sdk.android.core.n;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b.class */
public final class b {
    public static String a(Context context, String str, String str2) {
        Resources resources;
        int b2;
        return (context == null || (resources = context.getResources()) == null || (b2 = b(context, str, "string")) <= 0) ? str2 : resources.getString(b2);
    }

    public static void a(String str, String str2) {
        if (!n.b()) {
            n.c().b(str, str2);
            return;
        }
        throw new IllegalStateException(str2);
    }

    private static int b(Context context, String str, String str2) {
        Resources resources = context.getResources();
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return resources.getIdentifier(str, str2, i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName());
    }
}
