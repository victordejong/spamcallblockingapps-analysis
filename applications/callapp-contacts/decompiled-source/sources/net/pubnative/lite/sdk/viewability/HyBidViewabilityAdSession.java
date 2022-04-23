package net.pubnative.lite.sdk.viewability;

import android.text.TextUtils;
import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.a;
import com.iab.omid.library.pubnativenet.adsession.b;
import com.iab.omid.library.pubnativenet.adsession.f;
import com.iab.omid.library.pubnativenet.adsession.j;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.e;
import com.iab.omid.library.pubnativenet.d.d;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession.class */
public abstract class HyBidViewabilityAdSession {
    protected a mAdEvents;
    protected b mAdSession;
    protected List<j> mVerificationScriptResources = new ArrayList();
    ViewabilityManager viewabilityManager;

    public HyBidViewabilityAdSession(ViewabilityManager viewabilityManager) {
        this.viewabilityManager = viewabilityManager;
    }

    public void addFriendlyObstruction(View view, f fVar, String str) {
        b bVar;
        if (view != null && (bVar = this.mAdSession) != null) {
            bVar.a(view, fVar, str);
        }
    }

    public void addVerificationScriptResource(j jVar) {
        this.mVerificationScriptResources.add(jVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createAdEvents() {
        b bVar = this.mAdSession;
        if (bVar != null) {
            k kVar = (k) bVar;
            d.a(bVar, "AdSession is null");
            if (kVar.f33352c.f33390a == null) {
                d.a(kVar);
                a aVar = new a(kVar);
                kVar.f33352c.f33390a = aVar;
                this.mAdEvents = aVar;
                return;
            }
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }

    public void fireImpression() {
        a aVar;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (aVar = this.mAdEvents) != null) {
            try {
                d.a(aVar.f33335a);
                d.c(aVar.f33335a);
                if (!aVar.f33335a.f()) {
                    try {
                        aVar.f33335a.a();
                    } catch (Exception e) {
                    }
                }
                if (aVar.f33335a.f()) {
                    k kVar = aVar.f33335a;
                    if (!kVar.g) {
                        e.a().a(kVar.f33352c.c(), "publishImpressionEvent", new Object[0]);
                        kVar.g = true;
                    } else {
                        throw new IllegalStateException("Impression event can only be sent once");
                    }
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
        a aVar;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (aVar = this.mAdEvents) != null) {
            try {
                d.b(aVar.f33335a);
                d.c(aVar.f33335a);
                k kVar = aVar.f33335a;
                kVar.d();
                e.a().a(kVar.f33352c.c(), "publishLoadedEvent", new Object[0]);
                kVar.h = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_LOADED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            } catch (IllegalArgumentException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isVerificationResourcesPresent() {
        List<j> list = this.mVerificationScriptResources;
        return list != null && !list.isEmpty();
    }

    public String prependOMJS(String str) {
        if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            return str;
        }
        String str2 = str;
        try {
            if (!TextUtils.isEmpty(this.viewabilityManager.getServiceJs())) {
                str2 = com.iab.omid.library.pubnativenet.d.a(this.viewabilityManager.getServiceJs(), str);
            }
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public void removeAllFriendlyObstructions() {
        b bVar;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mAdSession) != null) {
            bVar.c();
        }
    }

    public void removeFriendlyObstruction(View view) {
        b bVar;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mAdSession) != null) {
            bVar.b(view);
        }
    }

    public void stopAdSession() {
        b bVar;
        if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mAdSession) != null) {
            bVar.b();
            this.mAdSession = null;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STOPPED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        }
    }
}
