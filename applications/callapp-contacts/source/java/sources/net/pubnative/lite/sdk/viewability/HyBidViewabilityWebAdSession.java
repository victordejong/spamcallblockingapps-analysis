package net.pubnative.lite.sdk.viewability;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.AbstractC16418b;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.C16419c;
import com.iab.omid.library.pubnativenet.adsession.C16425i;
import com.iab.omid.library.pubnativenet.adsession.EnumC16420d;
import com.iab.omid.library.pubnativenet.adsession.EnumC16421e;
import com.iab.omid.library.pubnativenet.adsession.EnumC16423g;
import com.iab.omid.library.pubnativenet.adsession.EnumC16424h;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession.class */
public class HyBidViewabilityWebAdSession extends HyBidViewabilityAdSession {
    private static final String TAG = "HyBidViewabilityWebAdSession";

    public HyBidViewabilityWebAdSession(ViewabilityManager viewabilityManager) {
        super(viewabilityManager);
    }

    public void initAdSession(WebView webView, boolean z) {
        if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            return;
        }
        try {
            C16425i partner = this.viewabilityManager.getPartner();
            C16448d.m7223a(partner, "Partner is null");
            C16448d.m7223a(webView, "WebView is null");
            C16448d.m7220b("", "CustomReferenceData is greater than 256 characters");
            C16419c c16419c = new C16419c(partner, webView, null, null, "", "", EnumC16420d.HTML);
            EnumC16424h enumC16424h = z ? EnumC16424h.JAVASCRIPT : EnumC16424h.NATIVE;
            this.mAdSession = AbstractC16418b.m7278a(AdSessionConfiguration.createAdSessionConfiguration(z ? EnumC16421e.DEFINED_BY_JAVASCRIPT : EnumC16421e.HTML_DISPLAY, z ? EnumC16423g.DEFINED_BY_JAVASCRIPT : EnumC16423g.BEGIN_TO_RENDER, enumC16424h, z ? enumC16424h : EnumC16424h.NONE, false), c16419c);
            this.mAdSession.mo7274a(webView);
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
