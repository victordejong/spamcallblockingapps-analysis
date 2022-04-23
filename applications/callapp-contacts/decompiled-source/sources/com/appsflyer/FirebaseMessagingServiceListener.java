package com.appsflyer;

import com.appsflyer.internal.af;
import com.appsflyer.internal.b;
import com.google.firebase.messaging.FirebaseMessagingService;
/* loaded from: classes-dex2jar.jar:com/appsflyer/FirebaseMessagingServiceListener.class */
public class FirebaseMessagingServiceListener extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            AFLogger.afInfoLog("Firebase Refreshed Token = ".concat(String.valueOf(str)));
            b.a.C0133a aVar = b.a.C0133a.m989(AppsFlyerProperties.getInstance().getString("afUninstallToken"));
            b.a.C0133a aVar2 = new b.a.C0133a(currentTimeMillis, str);
            if (aVar.m993(aVar2)) {
                af.m953(getApplicationContext(), aVar2.f244);
            }
        }
    }
}
