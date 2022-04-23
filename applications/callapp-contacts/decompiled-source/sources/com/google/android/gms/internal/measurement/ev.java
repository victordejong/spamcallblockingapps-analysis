package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ev.class */
public final class ev {

    /* renamed from: a  reason: collision with root package name */
    public static final int f29000a;

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
        f29000a = i;
    }

    public static PendingIntent a(Context context, Intent intent, int i) {
        return PendingIntent.getBroadcast(context, 0, intent, i);
    }
}
