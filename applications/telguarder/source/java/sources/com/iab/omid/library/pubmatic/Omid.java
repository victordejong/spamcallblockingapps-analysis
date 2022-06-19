package com.iab.omid.library.pubmatic;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/Omid.class */
public final class Omid {
    private static C1754b INSTANCE = new C1754b();

    private Omid() {
    }

    public static void activate(Context context) {
        INSTANCE.m1310a(context.getApplicationContext());
    }

    public static String getVersion() {
        return INSTANCE.m1311a();
    }

    public static boolean isActive() {
        return INSTANCE.m1308b();
    }
}
