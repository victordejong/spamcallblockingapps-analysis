package net.pubnative.lite.sdk.reporting;

import android.text.TextUtils;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/reporting/ReportingEventBridge.class */
public class ReportingEventBridge {
    private static final String TAG = ReportingEvent.class.getSimpleName();
    ReportingEvent reportingEvent = new ReportingEvent();

    public ReportingEventBridge() {
    }

    public ReportingEventBridge(String str) {
        setCustomString(Reporting.Key.AD_FORMAT, str);
    }

    public ReportingEventBridge(String str, AdSize adSize) {
        if (!TextUtils.isEmpty(str)) {
            setCustomString(Reporting.Key.AD_FORMAT, str);
        }
        setCustomString(Reporting.Key.AD_SIZE, adSize.toString());
    }

    public String getAdFormat() {
        return this.reportingEvent.getAdFormat();
    }

    public String getAdSize() {
        return this.reportingEvent.getAdSize();
    }

    public String getFormattedEventJson() {
        return this.reportingEvent.toString();
    }

    public ReportingEvent getReportingEvent() {
        return this.reportingEvent;
    }

    public void setAdSize(Object obj) {
        if (obj instanceof AdSize) {
            this.reportingEvent.setAdSize(obj.toString());
        } else {
            Logger.e(TAG, "object must be an instance of AdSize");
        }
    }

    public void setCustomBoolean(String str, boolean z) {
        this.reportingEvent.setCustomBoolean(str, z);
    }

    public void setCustomDecimal(String str, double d2) {
        this.reportingEvent.setCustomDecimal(str, d2);
    }

    public void setCustomInteger(String str, long j) {
        this.reportingEvent.setCustomInteger(str, j);
    }

    public void setCustomString(String str, String str2) {
        this.reportingEvent.setCustomString(str, str2);
    }
}
