package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.util.Calendar;
/* renamed from: com.flurry.sdk.ed */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ed.class */
public final class C3017ed {
    /* renamed from: a */
    public static int m33280a(Long l) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(l.longValue());
        return Calendar.getInstance().get(1) - instance.get(1);
    }

    /* renamed from: a */
    public static boolean m33282a(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    /* renamed from: a */
    public static boolean m33281a(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
