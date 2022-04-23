package com.klinker.android.send_message;

import android.os.Build;
import android.telephony.SmsManager;
/* renamed from: com.klinker.android.send_message.g */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/g.class */
public class C2710g {
    /* renamed from: a */
    public static SmsManager m2058a(int i) {
        if (i == -1 || Build.VERSION.SDK_INT < 22) {
            return SmsManager.getDefault();
        }
        SmsManager smsManager = null;
        try {
            smsManager = SmsManager.getSmsManagerForSubscriptionId(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return smsManager != null ? smsManager : SmsManager.getDefault();
    }

    /* renamed from: b */
    public static SmsManager m2057b(C2709f fVar) {
        return m2058a(fVar.m2071n());
    }
}
