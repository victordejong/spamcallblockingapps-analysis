package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
/* renamed from: com.appsflyer.internal.e */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/e.class */
public final class C0810e {
    private IntentFilter AFInAppEventType = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: com.appsflyer.internal.e$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/e$b.class */
    public static final class C0811b {
        public final float AFInAppEventParameterName;
        public final String AFKeystoreWrapper;

        public C0811b(float f, String str) {
            this.AFInAppEventParameterName = f;
            this.AFKeystoreWrapper = str;
        }
    }

    /* renamed from: com.appsflyer.internal.e$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/e$e.class */
    public static final class C0812e {
        public static final C0810e AFInAppEventParameterName = new C0810e();
    }

    @NonNull
    public final C0811b AFInAppEventType(Context context) {
        float f;
        String str;
        String str2 = null;
        try {
            Intent registerReceiver = context.registerReceiver(null, this.AFInAppEventType);
            str2 = null;
            f = 0.0f;
            if (registerReceiver != null) {
                if (2 == registerReceiver.getIntExtra(UpdateKey.STATUS, -1)) {
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
        return new C0811b(f, str2);
    }
}
