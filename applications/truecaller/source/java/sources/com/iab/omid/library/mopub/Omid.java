package com.iab.omid.library.mopub;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/Omid.class */
public final class Omid {
    private static C2600b INSTANCE = new C2600b();

    private Omid() {
    }

    public static void activate(Context context) {
        INSTANCE.m36482a(context.getApplicationContext());
    }

    public static String getVersion() {
        return INSTANCE.m36483a();
    }

    public static boolean isActive() {
        return INSTANCE.m36480b();
    }
}
