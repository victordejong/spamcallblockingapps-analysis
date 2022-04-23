package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.b;
import com.iab.omid.library.pubnativenet.adsession.c;
import com.iab.omid.library.pubnativenet.adsession.e;
import com.iab.omid.library.pubnativenet.adsession.g;
import com.iab.omid.library.pubnativenet.adsession.h;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession.class */
public class HyBidViewabilityNativeAdSession extends HyBidViewabilityAdSession {
    private static final String TAG = "HyBidViewabilityNativeAdSession";

    public HyBidViewabilityNativeAdSession(ViewabilityManager viewabilityManager) {
        super(viewabilityManager);
    }

    public void initAdSession(View view) {
        if (this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            try {
                this.mAdSession = b.a(AdSessionConfiguration.createAdSessionConfiguration(e.NATIVE_DISPLAY, g.BEGIN_TO_RENDER, h.NATIVE, h.NONE, false), c.a(this.viewabilityManager.getPartner(), this.viewabilityManager.getServiceJs(), this.mVerificationScriptResources, "", ""));
                this.mAdSession.a(view);
                createAdEvents();
                this.mAdSession.a();
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            } catch (IllegalArgumentException e) {
                Logger.e("", e.getMessage());
            } catch (NullPointerException e2) {
                Logger.e(TAG, "OM SDK Ad Session - Exception", e2);
            }
        }
    }
}
