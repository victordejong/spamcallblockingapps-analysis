package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* renamed from: com.google.android.gms.internal.measurement.ev */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ev.class */
public final class C13482ev {

    /* renamed from: a */
    public static final int f50699a;

    static {
        int i = 0;
        if (Build.VERSION.SDK_INT >= 30) {
            i = 0;
            if (Build.VERSION.CODENAME.length() == 1) {
                i = 0;
                if (Build.VERSION.CODENAME.charAt(0) >= 'S') {
                    i = 0;
                    if (Build.VERSION.CODENAME.charAt(0) <= 'Z') {
                        i = 33554432;
                    }
                }
            }
        }
        f50699a = i;
    }

    /* renamed from: a */
    public static PendingIntent m12889a(Context context, Intent intent, int i) {
        return PendingIntent.getBroadcast(context, 0, intent, i);
    }
}
