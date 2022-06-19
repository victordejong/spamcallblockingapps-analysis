package com.clevertap.android.sdk.pushnotification.amp;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.HashMap;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.C22877x;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/pushnotification/amp/CTBackgroundIntentService.class */
public class CTBackgroundIntentService extends IntentService {
    public CTBackgroundIntentService() {
        super("CTBackgroundIntentService");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        Context applicationContext = getApplicationContext();
        HashMap<String, C22773p> hashMap = C22773p.f63085e;
        if (hashMap == null) {
            C22773p m7793h = C22773p.m7793h(applicationContext);
            if (m7793h == null) {
                return;
            }
            C22877x c22877x = m7793h.f63088b;
            if (!c22877x.f63515a.f2245f) {
                return;
            }
            c22877x.f63525k.m7647n(applicationContext, null);
            return;
        }
        for (String str : hashMap.keySet()) {
            C22773p c22773p = C22773p.f63085e.get(str);
            if (c22773p != null) {
                C22877x c22877x2 = c22773p.f63088b;
                CleverTapInstanceConfig cleverTapInstanceConfig = c22877x2.f63515a;
                if (!cleverTapInstanceConfig.f2244e && cleverTapInstanceConfig.f2245f) {
                    c22877x2.f63525k.m7647n(applicationContext, null);
                }
            }
        }
    }
}
