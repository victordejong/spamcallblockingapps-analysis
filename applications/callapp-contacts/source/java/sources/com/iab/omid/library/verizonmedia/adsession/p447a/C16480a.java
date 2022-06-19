package com.iab.omid.library.verizonmedia.adsession.p447a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.AbstractC16483b;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16502f;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import com.mopub.mobileads.VastIconXmlManager;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/a.class */
public final class C16480a {

    /* renamed from: a */
    private final C16492k f58024a;

    private C16480a(C16492k c16492k) {
        this.f58024a = c16492k;
    }

    /* renamed from: a */
    public static C16480a m7168a(AbstractC16483b abstractC16483b) {
        C16492k c16492k = (C16492k) abstractC16483b;
        C16514d.m7102a(abstractC16483b, "AdSession is null");
        if (c16492k.f58043a.isNativeMediaEventsOwner()) {
            if (c16492k.f58046d) {
                throw new IllegalStateException("AdSession is started");
            }
            C16514d.m7103a(c16492k);
            if (c16492k.f58045c.f58099c != null) {
                throw new IllegalStateException("MediaEvents already exists for AdSession");
            }
            C16480a c16480a = new C16480a(c16492k);
            c16492k.f58045c.f58099c = c16480a;
            return c16480a;
        }
        throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
    }

    /* renamed from: b */
    private static void m7166b(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    /* renamed from: a */
    public final void m7171a() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a(EventConstants.FIRST_QUARTILE);
    }

    /* renamed from: a */
    public final void m7170a(float f) {
        m7166b(f);
        C16514d.m7100b(this.f58024a);
        JSONObject jSONObject = new JSONObject();
        C16511b.m7109a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C16511b.m7109a(jSONObject, "deviceVolume", Float.valueOf(C16502f.m7127a().f58075a));
        this.f58024a.f58045c.m7090a("volumeChange", jSONObject);
    }

    /* renamed from: a */
    public final void m7169a(float f, float f2) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            m7166b(f2);
            C16514d.m7100b(this.f58024a);
            JSONObject jSONObject = new JSONObject();
            C16511b.m7109a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
            C16511b.m7109a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
            C16511b.m7109a(jSONObject, "deviceVolume", Float.valueOf(C16502f.m7127a().f58075a));
            this.f58024a.f58045c.m7090a(EventConstants.START, jSONObject);
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }

    /* renamed from: b */
    public final void m7167b() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a("midpoint");
    }

    /* renamed from: c */
    public final void m7165c() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a(EventConstants.THIRD_QUARTILE);
    }

    /* renamed from: d */
    public final void m7164d() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a(EventConstants.COMPLETE);
    }

    /* renamed from: e */
    public final void m7163e() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a("pause");
    }

    /* renamed from: f */
    public final void m7162f() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a("resume");
    }

    /* renamed from: g */
    public final void m7161g() {
        C16514d.m7100b(this.f58024a);
        this.f58024a.f58045c.m7091a(Reporting.EventType.VIDEO_AD_SKIPPED);
    }
}
