package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbs.class */
public final class zzbs {
    public static final int zza;

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
        zza = i;
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, 0, intent, i2);
    }
}
