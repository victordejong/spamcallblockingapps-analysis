package com.github.clans.fab;

import android.content.Context;
import android.os.Build;
/* renamed from: com.github.clans.fab.a */
/* loaded from: classes-dex2jar.jar:com/github/clans/fab/a.class */
final class C1268a {
    /* renamed from: a */
    public static int m9352a(Context context, float f) {
        return Math.round(f * context.getResources().getDisplayMetrics().density);
    }

    /* renamed from: b */
    public static boolean m9351b() {
        return Build.VERSION.SDK_INT >= 16;
    }

    /* renamed from: c */
    public static boolean m9350c() {
        return Build.VERSION.SDK_INT >= 21;
    }
}
