package com.criteo.sync.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import com.criteo.sync.sdk.customtabs.CustomTabsCallback;
import com.criteo.sync.sdk.customtabs.CustomTabsClient;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.criteo.sync.sdk.customtabs.CustomTabsServiceConnection;
import com.criteo.sync.sdk.customtabs.CustomTabsSession;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CustomTabsServiceCaller.class */
public class CustomTabsServiceCaller {
    public static CustomTabsServiceConnection connection;
    public CriteoSyncManager manager;
    public Uri uri;

    public CustomTabsServiceCaller(CriteoSyncManager criteoSyncManager, Uri uri) {
        this.manager = criteoSyncManager;
        this.uri = uri;
    }

    private void delayedUnbindService() {
        new Handler().postDelayed(new Runnable() { // from class: com.criteo.sync.sdk.CustomTabsServiceCaller.2
            @Override // java.lang.Runnable
            public void run() {
                CrtoLog.m35516d("Unbind service");
                try {
                    CustomTabsServiceCaller.this.manager.getContext().unbindService(CustomTabsServiceCaller.connection);
                } catch (Exception e) {
                    CrtoLog.m35513e("Couldn't unbind service", e);
                }
            }
        }, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void warmupAndLoadUri(CustomTabsClient customTabsClient) {
        customTabsClient.warmup(0L);
        CrtoLog.m35516d("Warmup done");
        CustomTabsSession newSession = customTabsClient.newSession(new CustomTabsCallback());
        boolean z = newSession != null && newSession.mayLaunchUrl(this.uri, null, null);
        CrtoLog.m35516d("maySync " + z + " " + this.uri);
        if (z) {
            this.manager.getPreferencesManager().writeLastCollectionTime();
        }
        delayedUnbindService();
    }

    public void createAndLoad() {
        createAndLoad(CustomTabsHelper.getPackageNameToUse(this.manager.getContext()));
    }

    public void createAndLoad(String str) {
        if (str == null) {
            CrtoLog.m35514e("No CustomTab capability found on this device");
            return;
        }
        final Context context = this.manager.getContext();
        connection = new CustomTabsServiceConnection() { // from class: com.criteo.sync.sdk.CustomTabsServiceCaller.1
            @Override // com.criteo.sync.sdk.customtabs.CustomTabsServiceConnection
            public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                CrtoLog.m35516d("Created Sync service with " + componentName);
                try {
                    CustomTabsServiceCaller.this.warmupAndLoadUri(customTabsClient);
                } catch (Throwable th) {
                    try {
                        ErrorReporting.Report(th, context, ConfigManager.getConfig(CustomTabsServiceCaller.this.manager, false), false);
                    } catch (Throwable th2) {
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                CrtoLog.m35516d("Service disconnected");
            }
        };
        boolean bindCustomTabsService = CustomTabsClient.bindCustomTabsService(context, str, connection);
        CrtoLog.m35516d("Launch Sync " + bindCustomTabsService + " on " + str);
    }
}
