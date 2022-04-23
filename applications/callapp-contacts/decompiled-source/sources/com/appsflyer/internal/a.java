package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a.class */
public final class a {

    /* renamed from: ɩ  reason: contains not printable characters */
    private IntentFilter f171 = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$d.class */
    public static final class d {

        /* renamed from: ı  reason: contains not printable characters */
        public static final a f172 = new a();
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$e.class */
    public static final class e {

        /* renamed from: ı  reason: contains not printable characters */
        public final float f173;

        /* renamed from: Ι  reason: contains not printable characters */
        public final String f174;

        e(float f, String str) {
            this.f173 = f;
            this.f174 = str;
        }
    }

    a() {
    }

    /* renamed from: ι  reason: contains not printable characters */
    public final e m918(Context context) {
        float f;
        String str;
        String str2 = null;
        str2 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.f171);
            f = 0.0f;
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra("status", -1)) {
                    int intExtra = registerReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : "ac";
                } else {
                    str = "no";
                }
                int intExtra2 = registerReceiver.getIntExtra("level", -1);
                str2 = str;
                int intExtra3 = registerReceiver.getIntExtra("scale", -1);
                str2 = str;
                f = 0.0f;
                if (-1 != intExtra2) {
                    str2 = str;
                    f = 0.0f;
                    if (-1 != intExtra3) {
                        f = (intExtra2 * 100.0f) / intExtra3;
                        str2 = str;
                    }
                }
            }
        } catch (Throwable th) {
            f = 0.0f;
        }
        return new e(f, str2);
    }
}
