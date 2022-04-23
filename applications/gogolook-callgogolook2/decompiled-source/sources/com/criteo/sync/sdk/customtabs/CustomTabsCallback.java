package com.criteo.sync.sdk.customtabs;

import android.net.Uri;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/customtabs/CustomTabsCallback.class */
public class CustomTabsCallback {
    public static final int NAVIGATION_ABORTED = 4;
    public static final int NAVIGATION_FAILED = 3;
    public static final int NAVIGATION_FINISHED = 2;
    public static final int NAVIGATION_STARTED = 1;
    public static final int TAB_HIDDEN = 6;
    public static final int TAB_SHOWN = 5;

    public void extraCallback(String str, Bundle bundle) {
    }

    public void onMessageChannelReady(Bundle bundle) {
    }

    public void onNavigationEvent(int i, Bundle bundle) {
    }

    public void onPostMessage(String str, Bundle bundle) {
    }

    public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
    }
}
