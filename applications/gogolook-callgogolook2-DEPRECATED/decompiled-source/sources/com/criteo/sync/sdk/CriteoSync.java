package com.criteo.sync.sdk;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CriteoSync.class */
public class CriteoSync {
    public static CriteoSyncManager syncManager;

    public static void init(Context context) {
        init(context, new CriteoSyncOptions());
    }

    public static void init(Context context, CriteoSyncOptions criteoSyncOptions) {
        syncManager = new CriteoSyncManager(context, criteoSyncOptions.getIntegrationId(), criteoSyncOptions.isLoggingEnabled(), criteoSyncOptions.isConsentRequired());
        syncManager.initCollection();
    }

    public static void setUserConsent(boolean z) {
        CriteoSyncManager criteoSyncManager = syncManager;
        if (criteoSyncManager == null) {
            CrtoLog.eForced("You must first initialize the library before setting consent");
        } else {
            criteoSyncManager.processUserConsent(z);
        }
    }
}
