package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.appsflyer.internal.a */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a.class */
public final class C3398a {

    /* renamed from: ɩ */
    private IntentFilter f12847 = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: com.appsflyer.internal.a$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$d.class */
    public static final class C3399d {

        /* renamed from: ı */
        public static final C3398a f12848 = new C3398a();
    }

    /* renamed from: com.appsflyer.internal.a$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/a$e.class */
    public static final class C3400e {

        /* renamed from: ı */
        public final float f12849;

        /* renamed from: Ι */
        public final String f12850;

        C3400e(float f, String str) {
            this.f12849 = f;
            this.f12850 = str;
        }
    }

    C3398a() {
    }

    /* renamed from: ι */
    public final C3400e m38039(Context context) {
        float f;
        String str;
        String str2 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.f12847);
            str2 = null;
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
        return new C3400e(f, str2);
    }
}
