package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.a.a;
import com.iab.omid.library.pubnativenet.adsession.a.b;
import com.iab.omid.library.pubnativenet.adsession.a.c;
import com.iab.omid.library.pubnativenet.adsession.g;
import com.iab.omid.library.pubnativenet.adsession.h;
import com.iab.omid.library.pubnativenet.adsession.j;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.e;
import com.iab.omid.library.pubnativenet.b.f;
import com.iab.omid.library.pubnativenet.d.d;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.analytics.ReportingEvent;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession.class */
public class HyBidViewabilityNativeVideoAdSession extends HyBidViewabilityNativeAdSession {
    private static final String TAG = "HyBidViewabilityNativeVideoAdSession";
    private b mMediaEvents;
    private boolean startFired = false;
    private boolean firstQuartileFired = false;
    private boolean midpointFired = false;
    private boolean thirdQuartileFired = false;
    private boolean completeFired = false;

    public HyBidViewabilityNativeVideoAdSession(ViewabilityManager viewabilityManager) {
        super(viewabilityManager);
    }

    protected void createMediaEvents() {
        try {
            if (this.mAdSession != null) {
                com.iab.omid.library.pubnativenet.adsession.b bVar = this.mAdSession;
                k kVar = (k) bVar;
                d.a(bVar, "AdSession is null");
                if (!kVar.f33350a.isNativeMediaEventsOwner()) {
                    throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
                } else if (!kVar.f33353d) {
                    d.a(kVar);
                    if (kVar.f33352c.f33391b == null) {
                        b bVar2 = new b(kVar);
                        kVar.f33352c.f33391b = bVar2;
                        this.mMediaEvents = bVar2;
                        return;
                    }
                    throw new IllegalStateException("MediaEvents already exists for AdSession");
                } else {
                    throw new IllegalStateException("AdSession is started");
                }
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireBufferFinish() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a("bufferFinish");
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_BUFFER_FINISH);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireBufferStart() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a("bufferStart");
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_BUFFER_START);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireClick() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                a aVar = a.CLICK;
                d.a(aVar, "InteractionType is null");
                d.b(bVar.f33336a);
                JSONObject jSONObject = new JSONObject();
                com.iab.omid.library.pubnativenet.d.b.a(jSONObject, "interactionType", aVar);
                bVar.f33336a.f33352c.a("adUserInteraction", jSONObject);
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_CLICKED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireComplete() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.completeFired) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a(EventConstants.COMPLETE);
                this.completeFired = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_COMPLETE);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireFirstQuartile() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.firstQuartileFired) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a(EventConstants.FIRST_QUARTILE);
                this.firstQuartileFired = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_FIRST_QUARTILE);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    @Override // net.pubnative.lite.sdk.viewability.HyBidViewabilityAdSession
    public void fireLoaded() {
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled()) {
                c cVar = c.STANDALONE;
                d.a(cVar, "Position is null");
                com.iab.omid.library.pubnativenet.adsession.a.d dVar = new com.iab.omid.library.pubnativenet.adsession.a.d(false, null, false, cVar);
                if (this.mAdEvents != null) {
                    com.iab.omid.library.pubnativenet.adsession.a aVar = this.mAdEvents;
                    d.a(dVar, "VastProperties is null");
                    d.b(aVar.f33335a);
                    d.c(aVar.f33335a);
                    k kVar = aVar.f33335a;
                    JSONObject a2 = dVar.a();
                    kVar.d();
                    e.a().a(kVar.f33352c.c(), "publishLoadedEvent", a2);
                    kVar.h = true;
                }
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_LOADED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireMidpoint() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.midpointFired) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a("midpoint");
                this.midpointFired = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("midpoint");
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void firePause() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a("pause");
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("pause");
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireResume() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a("resume");
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType("resume");
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireSkipped() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a(Reporting.EventType.VIDEO_AD_SKIPPED);
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SKIPPED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireStart(float f, boolean z) {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.startFired) {
                float f2 = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                if (f > BitmapDescriptorFactory.HUE_RED) {
                    b.a(f2);
                    d.b(bVar.f33336a);
                    JSONObject jSONObject = new JSONObject();
                    com.iab.omid.library.pubnativenet.d.b.a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
                    com.iab.omid.library.pubnativenet.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
                    com.iab.omid.library.pubnativenet.d.b.a(jSONObject, "deviceVolume", Float.valueOf(f.a().f33373a));
                    bVar.f33336a.f33352c.a(EventConstants.START, jSONObject);
                    this.startFired = true;
                    ReportingEvent reportingEvent = new ReportingEvent();
                    reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
                    this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
                    return;
                }
                throw new IllegalArgumentException("Invalid Media duration");
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireThirdQuartile() {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.thirdQuartileFired) {
                d.b(bVar.f33336a);
                bVar.f33336a.f33352c.a(EventConstants.THIRD_QUARTILE);
                this.thirdQuartileFired = true;
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_THIRD_QUARTILE);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireVolumeChange(boolean z) {
        b bVar;
        try {
            if (this.viewabilityManager.isViewabilityMeasurementEnabled() && (bVar = this.mMediaEvents) != null && !this.completeFired) {
                float f = z ? BitmapDescriptorFactory.HUE_RED : 1.0f;
                b.a(f);
                d.b(bVar.f33336a);
                JSONObject jSONObject = new JSONObject();
                com.iab.omid.library.pubnativenet.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
                com.iab.omid.library.pubnativenet.d.b.a(jSONObject, "deviceVolume", Float.valueOf(f.a().f33373a));
                bVar.f33336a.f33352c.a("volumeChange", jSONObject);
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_VOLUME_CHANGE);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            }
        } catch (Exception e) {
            Logger.e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void initAdSession(View view, List<j> list) {
        if (this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            this.mVerificationScriptResources.addAll(list);
            try {
                com.iab.omid.library.pubnativenet.adsession.c a2 = com.iab.omid.library.pubnativenet.adsession.c.a(this.viewabilityManager.getPartner(), this.viewabilityManager.getServiceJs(), this.mVerificationScriptResources, "", "");
                com.iab.omid.library.pubnativenet.adsession.e eVar = com.iab.omid.library.pubnativenet.adsession.e.VIDEO;
                g gVar = g.BEGIN_TO_RENDER;
                h hVar = h.NATIVE;
                this.mAdSession = com.iab.omid.library.pubnativenet.adsession.b.a(AdSessionConfiguration.createAdSessionConfiguration(eVar, gVar, hVar, hVar, false), a2);
                this.mAdSession.a(view);
                createAdEvents();
                createMediaEvents();
                this.mAdSession.a();
                ReportingEvent reportingEvent = new ReportingEvent();
                reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
                this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
            } catch (Exception e) {
                Logger.e(TAG, "OM SDK Ad Session - Exception", e);
            }
        }
    }
}
