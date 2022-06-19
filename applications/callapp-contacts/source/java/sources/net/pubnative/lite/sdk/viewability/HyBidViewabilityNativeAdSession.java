package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.AbstractC16418b;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.C16419c;
import com.iab.omid.library.pubnativenet.adsession.EnumC16421e;
import com.iab.omid.library.pubnativenet.adsession.EnumC16423g;
import com.iab.omid.library.pubnativenet.adsession.EnumC16424h;
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
        if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            return;
        }
        try {
            this.mAdSession = AbstractC16418b.m7278a(AdSessionConfiguration.createAdSessionConfiguration(EnumC16421e.NATIVE_DISPLAY, EnumC16423g.BEGIN_TO_RENDER, EnumC16424h.NATIVE, EnumC16424h.NONE, false), C16419c.m7277a(this.viewabilityManager.getPartner(), this.viewabilityManager.getServiceJs(), this.mVerificationScriptResources, "", ""));
            this.mAdSession.mo7274a(view);
            createAdEvents();
            this.mAdSession.mo7275a();
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (IllegalArgumentException e) {
            Logger.m628e("", e.getMessage());
        } catch (NullPointerException e2) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e2);
        }
    }
}
