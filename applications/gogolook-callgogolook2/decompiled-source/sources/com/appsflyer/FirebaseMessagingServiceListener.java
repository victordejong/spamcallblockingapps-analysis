package com.appsflyer;

import com.appsflyer.internal.C1824af;
import com.appsflyer.internal.C1839c;
import com.google.firebase.messaging.FirebaseMessagingService;
/* loaded from: classes-dex2jar.jar:com/appsflyer/FirebaseMessagingServiceListener.class */
public class FirebaseMessagingServiceListener extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            AFLogger.afInfoLog("Firebase Refreshed Token = ".concat(String.valueOf(str)));
            C1839c.C1840a.C1841c cVar = C1839c.C1840a.C1841c.m36134(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            C1839c.C1840a.C1841c cVar2 = new C1839c.C1840a.C1841c(currentTimeMillis, str);
            if (cVar.m36138(cVar2)) {
                C1824af.m36182(getApplicationContext(), cVar2.f1843);
            }
        }
    }
}
