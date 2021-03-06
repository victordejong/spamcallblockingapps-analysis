package com.google.firebase.crashlytics;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsAnalyticsListener.class */
class CrashlyticsAnalyticsListener implements AbstractC15587a.AbstractC15589b {
    static final String CRASHLYTICS_ORIGIN = "clx";
    static final String EVENT_NAME_KEY = "name";
    static final String EVENT_ORIGIN_KEY = "_o";
    static final String EVENT_PARAMS_KEY = "params";
    private AnalyticsEventReceiver breadcrumbEventReceiver;
    private AnalyticsEventReceiver crashlyticsOriginEventReceiver;

    private static void notifyEventReceiver(AnalyticsEventReceiver analyticsEventReceiver, String str, Bundle bundle) {
        if (analyticsEventReceiver == null) {
            return;
        }
        analyticsEventReceiver.onEvent(str, bundle);
    }

    private void notifyEventReceivers(String str, Bundle bundle) {
        notifyEventReceiver(CRASHLYTICS_ORIGIN.equals(bundle.getString(EVENT_ORIGIN_KEY)) ? this.crashlyticsOriginEventReceiver : this.breadcrumbEventReceiver, str, bundle);
    }

    @Override // com.google.firebase.analytics.connector.AbstractC15587a.AbstractC15589b
    public void onMessageTriggered(int i, Bundle bundle) {
        String string;
        Logger.getLogger().m8482v(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle));
        if (bundle == null || (string = bundle.getString(EVENT_NAME_KEY)) == null) {
            return;
        }
        Bundle bundle2 = bundle.getBundle(EVENT_PARAMS_KEY);
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        notifyEventReceivers(string, bundle3);
    }

    public void setBreadcrumbEventReceiver(AnalyticsEventReceiver analyticsEventReceiver) {
        this.breadcrumbEventReceiver = analyticsEventReceiver;
    }

    public void setCrashlyticsOriginEventReceiver(AnalyticsEventReceiver analyticsEventReceiver) {
        this.crashlyticsOriginEventReceiver = analyticsEventReceiver;
    }
}
