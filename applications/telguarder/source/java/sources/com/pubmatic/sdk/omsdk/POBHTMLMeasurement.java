package com.pubmatic.sdk.omsdk;

import android.content.Context;
import android.webkit.WebView;
import com.iab.omid.library.pubmatic.Omid;
import com.iab.omid.library.pubmatic.adsession.AdEvents;
import com.iab.omid.library.pubmatic.adsession.AdSession;
import com.iab.omid.library.pubmatic.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubmatic.adsession.AdSessionContext;
import com.iab.omid.library.pubmatic.adsession.CreativeType;
import com.iab.omid.library.pubmatic.adsession.ImpressionType;
import com.iab.omid.library.pubmatic.adsession.Owner;
import com.iab.omid.library.pubmatic.adsession.Partner;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.viewability.POBHTMLMeasurementProvider;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBHTMLMeasurement.class */
public class POBHTMLMeasurement extends POBMeasurement implements POBHTMLMeasurementProvider {

    /* renamed from: com.pubmatic.sdk.omsdk.POBHTMLMeasurement$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBHTMLMeasurement$a.class */
    static /* synthetic */ class C1915a {

        /* renamed from: a */
        static final /* synthetic */ int[] f627a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBHTMLMeasurementProvider.POBHTMLAdEventType.values().length];
            f627a = iArr;
            try {
                iArr[POBHTMLMeasurementProvider.POBHTMLAdEventType.LOADED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f627a[POBHTMLMeasurementProvider.POBHTMLAdEventType.IMPRESSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBHTMLMeasurementProvider
    public void signalAdEvent(POBHTMLMeasurementProvider.POBHTMLAdEventType pOBHTMLAdEventType) {
        if (this.adEvents == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, pOBHTMLAdEventType.name());
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, pOBHTMLAdEventType.name());
            int i = C1915a.f627a[pOBHTMLAdEventType.ordinal()];
            if (i == 1) {
                this.adEvents.loaded();
            } else if (i == 2) {
                this.adEvents.impressionOccurred();
            }
        } catch (Exception e) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, pOBHTMLAdEventType.name());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBHTMLMeasurementProvider
    public void startAdSession(WebView webView) {
        try {
            Context applicationContext = webView.getContext().getApplicationContext();
            if (!Omid.isActive()) {
                Omid.activate(applicationContext);
            }
            AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false), AdSessionContext.createHtmlAdSessionContext(Partner.createPartner(POBCommonConstants.PARTNER_NAME, "1.8.2"), webView, null, ""));
            this.adSession = createAdSession;
            createAdSession.registerAdView(webView);
            this.adEvents = AdEvents.createAdEvents(this.adSession);
            this.adSession.start();
            PMLog.debug("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_START_SESSION, this.adSession.getAdSessionId());
        } catch (Exception e) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_START_SESSION, e.getMessage());
        }
    }
}
