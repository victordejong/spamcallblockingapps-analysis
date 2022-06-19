package com.appsflyer;

import com.appsflyer.internal.C3407af;
import com.appsflyer.internal.C3418b;
import com.google.firebase.messaging.FirebaseMessagingService;
/* loaded from: classes-dex2jar.jar:com/appsflyer/FirebaseMessagingServiceListener.class */
public class FirebaseMessagingServiceListener extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            AFLogger.afInfoLog("Firebase Refreshed Token = ".concat(String.valueOf(str)));
            C3418b.C3419a.C3420a m37974 = C3418b.C3419a.C3420a.m37974(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            C3418b.C3419a.C3420a c3420a = new C3418b.C3419a.C3420a(currentTimeMillis, str);
            if (!m37974.m37977(c3420a)) {
                return;
            }
            C3407af.m38005(getApplicationContext(), c3420a.f12920);
        }
    }
}
