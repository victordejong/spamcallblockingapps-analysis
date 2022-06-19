package com.facebook.login;

import android.content.ComponentName;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
/* loaded from: classes-dex2jar.jar:com/facebook/login/CustomTabPrefetchHelper.class */
public class CustomTabPrefetchHelper extends CustomTabsServiceConnection {
    private static CustomTabsClient client;
    private static CustomTabsSession session;

    public static CustomTabsSession getPreparedSessionOnce() {
        CustomTabsSession customTabsSession = session;
        session = null;
        return customTabsSession;
    }

    public static void mayLaunchUrl(Uri uri) {
        if (session == null) {
            prepareSession();
        }
        CustomTabsSession customTabsSession = session;
        if (customTabsSession != null) {
            customTabsSession.mayLaunchUrl(uri, null, null);
        }
    }

    private static void prepareSession() {
        CustomTabsClient customTabsClient;
        if (session != null || (customTabsClient = client) == null) {
            return;
        }
        session = customTabsClient.newSession(null);
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        client = customTabsClient;
        customTabsClient.warmup(0L);
        prepareSession();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
