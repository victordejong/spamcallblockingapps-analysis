package com.iab.omid.library.applovin;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/Omid.class */
public final class Omid {
    private static C1930b INSTANCE = new C1930b();

    private Omid() {
    }

    public static void activate(Context context) {
        INSTANCE.m4175a(context.getApplicationContext());
    }

    public static String getVersion() {
        return INSTANCE.m4176a();
    }

    public static boolean isActive() {
        return INSTANCE.m4173b();
    }
}
