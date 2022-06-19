package net.pubnative.lite.sdk.viewability;

import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.AbstractC16418b;
import com.iab.omid.library.pubnativenet.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubnativenet.adsession.C16413a;
import com.iab.omid.library.pubnativenet.adsession.C16419c;
import com.iab.omid.library.pubnativenet.adsession.C16426j;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.adsession.EnumC16421e;
import com.iab.omid.library.pubnativenet.adsession.EnumC16423g;
import com.iab.omid.library.pubnativenet.adsession.EnumC16424h;
import com.iab.omid.library.pubnativenet.adsession.p438a.C16415b;
import com.iab.omid.library.pubnativenet.adsession.p438a.C16417d;
import com.iab.omid.library.pubnativenet.adsession.p438a.EnumC16414a;
import com.iab.omid.library.pubnativenet.adsession.p438a.EnumC16416c;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p439b.C16436f;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
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
    private C16415b mMediaEvents;
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
            if (this.mAdSession == null) {
                return;
            }
            AbstractC16418b abstractC16418b = this.mAdSession;
            C16427k c16427k = (C16427k) abstractC16418b;
            C16448d.m7223a(abstractC16418b, "AdSession is null");
            if (!c16427k.f57914a.isNativeMediaEventsOwner()) {
                throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
            }
            if (c16427k.f57917d) {
                throw new IllegalStateException("AdSession is started");
            }
            C16448d.m7224a(c16427k);
            if (c16427k.f57916c.f57966b != null) {
                throw new IllegalStateException("MediaEvents already exists for AdSession");
            }
            C16415b c16415b = new C16415b(c16427k);
            c16427k.f57916c.f57966b = c16415b;
            this.mMediaEvents = c16415b;
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireBufferFinish() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a("bufferFinish");
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_BUFFER_FINISH);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireBufferStart() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a("bufferStart");
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_BUFFER_START);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireClick() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            EnumC16414a enumC16414a = EnumC16414a.CLICK;
            C16448d.m7223a(enumC16414a, "InteractionType is null");
            C16448d.m7221b(c16415b.f57895a);
            JSONObject jSONObject = new JSONObject();
            C16445b.m7230a(jSONObject, "interactionType", enumC16414a);
            c16415b.f57895a.f57916c.m7210a("adUserInteraction", jSONObject);
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_CLICKED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireComplete() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.completeFired) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a(EventConstants.COMPLETE);
            this.completeFired = true;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_COMPLETE);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireFirstQuartile() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.firstQuartileFired) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a(EventConstants.FIRST_QUARTILE);
            this.firstQuartileFired = true;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_FIRST_QUARTILE);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    @Override // net.pubnative.lite.sdk.viewability.HyBidViewabilityAdSession
    public void fireLoaded() {
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
                return;
            }
            EnumC16416c enumC16416c = EnumC16416c.STANDALONE;
            C16448d.m7223a(enumC16416c, "Position is null");
            C16417d c16417d = new C16417d(false, null, false, enumC16416c);
            if (this.mAdEvents != null) {
                C16413a c16413a = this.mAdEvents;
                C16448d.m7223a(c16417d, "VastProperties is null");
                C16448d.m7221b(c16413a.f57894a);
                C16448d.m7219c(c16413a.f57894a);
                C16427k c16427k = c16413a.f57894a;
                JSONObject m7279a = c16417d.m7279a();
                c16427k.m7268d();
                C16434e.m7257a().m7252a(c16427k.f57916c.m7208c(), "publishLoadedEvent", m7279a);
                c16427k.f57921h = true;
            }
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_LOADED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireMidpoint() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.midpointFired) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a("midpoint");
            this.midpointFired = true;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("midpoint");
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void firePause() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a("pause");
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("pause");
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireResume() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a("resume");
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType("resume");
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireSkipped() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a(Reporting.EventType.VIDEO_AD_SKIPPED);
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SKIPPED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireStart(float f, boolean z) {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.startFired) {
                return;
            }
            float f2 = z ? 0.0f : 1.0f;
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Invalid Media duration");
            }
            C16415b.m7280a(f2);
            C16448d.m7221b(c16415b.f57895a);
            JSONObject jSONObject = new JSONObject();
            C16445b.m7230a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
            C16445b.m7230a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
            C16445b.m7230a(jSONObject, "deviceVolume", Float.valueOf(C16436f.m7247a().f57943a));
            c16415b.f57895a.f57916c.m7210a(EventConstants.START, jSONObject);
            this.startFired = true;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireThirdQuartile() {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.thirdQuartileFired) {
                return;
            }
            C16448d.m7221b(c16415b.f57895a);
            c16415b.f57895a.f57916c.m7211a(EventConstants.THIRD_QUARTILE);
            this.thirdQuartileFired = true;
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_THIRD_QUARTILE);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void fireVolumeChange(boolean z) {
        C16415b c16415b;
        try {
            if (!this.viewabilityManager.isViewabilityMeasurementEnabled() || (c16415b = this.mMediaEvents) == null || this.completeFired) {
                return;
            }
            float f = z ? 0.0f : 1.0f;
            C16415b.m7280a(f);
            C16448d.m7221b(c16415b.f57895a);
            JSONObject jSONObject = new JSONObject();
            C16445b.m7230a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
            C16445b.m7230a(jSONObject, "deviceVolume", Float.valueOf(C16436f.m7247a().f57943a));
            c16415b.f57895a.f57916c.m7210a("volumeChange", jSONObject);
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_VOLUME_CHANGE);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }

    public void initAdSession(View view, List<C16426j> list) {
        if (!this.viewabilityManager.isViewabilityMeasurementEnabled()) {
            return;
        }
        this.mVerificationScriptResources.addAll(list);
        try {
            C16419c m7277a = C16419c.m7277a(this.viewabilityManager.getPartner(), this.viewabilityManager.getServiceJs(), this.mVerificationScriptResources, "", "");
            EnumC16421e enumC16421e = EnumC16421e.VIDEO;
            EnumC16423g enumC16423g = EnumC16423g.BEGIN_TO_RENDER;
            EnumC16424h enumC16424h = EnumC16424h.NATIVE;
            this.mAdSession = AbstractC16418b.m7278a(AdSessionConfiguration.createAdSessionConfiguration(enumC16421e, enumC16423g, enumC16424h, enumC16424h, false), m7277a);
            this.mAdSession.mo7274a(view);
            createAdEvents();
            createMediaEvents();
            this.mAdSession.mo7275a();
            ReportingEvent reportingEvent = new ReportingEvent();
            reportingEvent.setEventType(Reporting.EventType.VIDEO_AD_SESSION_STARTED);
            this.viewabilityManager.getReportingController().reportEvent(reportingEvent);
        } catch (Exception e) {
            Logger.m627e(TAG, "OM SDK Ad Session - Exception", e);
        }
    }
}
