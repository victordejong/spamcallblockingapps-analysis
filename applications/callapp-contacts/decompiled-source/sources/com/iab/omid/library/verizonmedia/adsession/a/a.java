package com.iab.omid.library.verizonmedia.adsession.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.b;
import com.iab.omid.library.verizonmedia.adsession.k;
import com.iab.omid.library.verizonmedia.b.f;
import com.iab.omid.library.verizonmedia.d.d;
import com.mopub.mobileads.VastIconXmlManager;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final k f33431a;

    private a(k kVar) {
        this.f33431a = kVar;
    }

    public static a a(b bVar) {
        k kVar = (k) bVar;
        d.a(bVar, "AdSession is null");
        if (!kVar.f33445a.isNativeMediaEventsOwner()) {
            throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
        } else if (!kVar.f33448d) {
            d.a(kVar);
            if (kVar.f33447c.f33488c == null) {
                a aVar = new a(kVar);
                kVar.f33447c.f33488c = aVar;
                return aVar;
            }
            throw new IllegalStateException("MediaEvents already exists for AdSession");
        } else {
            throw new IllegalStateException("AdSession is started");
        }
    }

    private static void b(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    public final void a() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a(EventConstants.FIRST_QUARTILE);
    }

    public final void a(float f) {
        b(f);
        d.b(this.f33431a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        com.iab.omid.library.verizonmedia.d.b.a(jSONObject, "deviceVolume", Float.valueOf(f.a().f33469a));
        this.f33431a.f33447c.a("volumeChange", jSONObject);
    }

    public final void a(float f, float f2) {
        if (f > BitmapDescriptorFactory.HUE_RED) {
            b(f2);
            d.b(this.f33431a);
            JSONObject jSONObject = new JSONObject();
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
            com.iab.omid.library.verizonmedia.d.b.a(jSONObject, "deviceVolume", Float.valueOf(f.a().f33469a));
            this.f33431a.f33447c.a(EventConstants.START, jSONObject);
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }

    public final void b() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a("midpoint");
    }

    public final void c() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a(EventConstants.THIRD_QUARTILE);
    }

    public final void d() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a(EventConstants.COMPLETE);
    }

    public final void e() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a("pause");
    }

    public final void f() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a("resume");
    }

    public final void g() {
        d.b(this.f33431a);
        this.f33431a.f33447c.a(Reporting.EventType.VIDEO_AD_SKIPPED);
    }
}
