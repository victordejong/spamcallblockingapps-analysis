package net.pubnative.lite.sdk.analytics;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/ReportingController.class */
public class ReportingController {
    private static final String TAG = "ReportingController";
    private final List<ReportingEventCallback> mListeners = new ArrayList();

    public void addCallback(ReportingEventCallback reportingEventCallback) {
        if (reportingEventCallback != null && !this.mListeners.contains(reportingEventCallback)) {
            this.mListeners.add(reportingEventCallback);
        }
    }

    public boolean removeCallback(ReportingEventCallback reportingEventCallback) {
        int indexOf;
        if (reportingEventCallback == null || (indexOf = this.mListeners.indexOf(reportingEventCallback)) == -1) {
            return false;
        }
        this.mListeners.remove(indexOf);
        return true;
    }

    public void reportEvent(ReportingEvent reportingEvent) {
        for (ReportingEventCallback reportingEventCallback : this.mListeners) {
            if (reportingEventCallback != null) {
                reportingEventCallback.onEvent(reportingEvent);
            }
        }
    }
}
