package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* renamed from: com.google.android.gms.internal.measurement.l4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l4.class */
public final class C7447l4 {

    /* renamed from: a */
    public static final int f34578a;

    static {
        int i = 0;
        if (Build.VERSION.SDK_INT >= 30) {
            String str = Build.VERSION.CODENAME;
            i = 0;
            if (str.length() == 1) {
                i = 0;
                if (str.charAt(0) >= 'S') {
                    i = 0;
                    if (str.charAt(0) <= 'Z') {
                        i = 33554432;
                    }
                }
            }
        }
        f34578a = i;
    }

    /* renamed from: a */
    public static PendingIntent m7189a(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, 0, intent, i2);
    }
}
