package net.pubnative.lite.sdk.viewability;

import android.text.TextUtils;
import android.view.View;
import com.iab.omid.library.pubnativenet.C16443d;
import com.iab.omid.library.pubnativenet.adsession.AbstractC16418b;
import com.iab.omid.library.pubnativenet.adsession.C16413a;
import com.iab.omid.library.pubnativenet.adsession.C16426j;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.adsession.EnumC16422f;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession.class */
public abstract class HyBidViewabilityAdSession {
    protected C16413a mAdEvents;
    protected AbstractC16418b mAdSession;
    protected List<C16426j> mVerificationScriptResources = new ArrayList();
    ViewabilityManager viewabilityManager;

    public HyBidViewabilityAdSession(ViewabilityManager viewabilityManager) {
        this.viewabilityManager = viewabilityManager;
    }

    public void addFriendlyObstruction(View view, EnumC16422f enumC16422f, String str) {
        AbstractC16418b abstractC16418b;
        if (view == null || (abstractC16418b = this.mAdSession) == null) {
            return;
        }
        abstractC16418b.mo7273a(view, enumC16422f, str);
    }

    public void addVerificationScriptResource(C16426j c16426j) {
        this.mVerificationScriptResources.add(c16426j);
    }

    public void createAdEvents() {
        AbstractC16418b abstractC16418b = this.mAdSession;
        if (abstractC16418b != null) {
            C16427k c16427k = (C16427k) abstractC16418b;
            C16448d.m7223a(abstractC16418b, "AdSession is null");
            if (c16427k.f57916c.f57965a != null) {
                throw new IllegalStateException("AdEvents already exists for AdSession");
            }
            C16448d.m7224a(c16427k);
            C16413a c16413a = new C16413a(c16427k);
            c16427k.f57916c.f57965a = c16413a;
            this.mAdEvents = c16413a;
        }
    }

    public void fireImpression() {
        C16413a c16413a;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (c16413a = this.mAdEvents) != null) {
            try {
                C16448d.m7224a(c16413a.f57894a);
                C16448d.m7219c(c16413a.f57894a);
                if (!c16413a.f57894a.m7264f()) {
                    try {
                        c16413a.f57894a.mo7275a();
                    } catch (Exception e) {
                    }
                }
                if (c16413a.f57894a.m7264f()) {
                    C16427k c16427k = c16413a.f57894a;
                    if (c16427k.f57920g) {
                        throw new IllegalStateException("Impression event can only be sent once");
                    }
                    C16434e.m7257a().m7252a(c16427k.f57916c.m7208c(), "publishImpressionEvent", new Object[0]);
                    c16427k.f57920g = true;
                }
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("impression");
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            } catch (IllegalArgumentException | IllegalStateException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void fireLoaded() {
        C16413a c16413a;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (c16413a = this.mAdEvents) != null) {
            try {
                C16448d.m7221b(c16413a.f57894a);
                C16448d.m7219c(c16413a.f57894a);
                C16427k c16427k = c16413a.f57894a;
                c16427k.m7268d();
                C16434e.m7257a().m7252a(c16427k.f57916c.m7208c(), "publishLoadedEvent", new Object[0]);
                c16427k.f57921h = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_LOADED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            } catch (IllegalArgumentException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isVerificationResourcesPresent() {
        List<C16426j> list = this.mVerificationScriptResources;
        return list != null && !list.isEmpty();
    }

    public String prependOMJS(String str) {
        if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            return str;
        }
        String str2 = str;
        try {
            if (!TextUtils.isEmpty(this.viewabilityManager.getServiceJs())) {
                str2 = C16443d.m7240a(this.viewabilityManager.getServiceJs(), str);
            }
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public void removeAllFriendlyObstructions() {
        AbstractC16418b abstractC16418b;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (abstractC16418b = this.mAdSession) != null) {
            abstractC16418b.mo7270c();
        }
    }

    public void removeFriendlyObstruction(View view) {
        AbstractC16418b abstractC16418b;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (abstractC16418b = this.mAdSession) != null) {
            abstractC16418b.mo7271b(view);
        }
    }

    public void stopAdSession() {
        AbstractC16418b abstractC16418b;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (abstractC16418b = this.mAdSession) != null) {
            abstractC16418b.mo7272b();
            this.mAdSession = null;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STOPPED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        }
    }
}
