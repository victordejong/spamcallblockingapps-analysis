package net.pubnative.lite.sdk.viewability;

import android.webkit.WebView;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.b;
import com.iab.omid.library.pubnativenet.adsession.c;
import com.iab.omid.library.pubnativenet.adsession.e;
import com.iab.omid.library.pubnativenet.adsession.g;
import com.iab.omid.library.pubnativenet.adsession.h;
import com.iab.omid.library.pubnativenet.adsession.i;
import com.iab.omid.library.pubnativenet.d.d;
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
        if (this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            try {
                i partner = this.viewabilityManager.getPartner();
                d.a(partner, "Partner is null");
                d.a(webView, "WebView is null");
                d.b("", "CustomReferenceData is greater than 256 characters");
                c cVar = new c(partner, webView, null, null, "", "", com.iab.omid.library.pubnativenet.adsession.d.HTML);
                h hVar = z ? h.JAVASCRIPT : h.NATIVE;
                this.mAdSession = b.a(AdSessionConfiguration.createAdSessionConfiguration(z ? e.DEFINED_BY_JAVASCRIPT : e.HTML_DISPLAY, z ? g.DEFINED_BY_JAVASCRIPT : g.BEGIN_TO_RENDER, hVar, z ? hVar : h.NONE, false), cVar);
                this.mAdSession.a(webView);
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
