package com.iab.omid.library.mopub.adsession.a;

import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.d.d;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final k f33240a;

    public b(k kVar) {
        this.f33240a = kVar;
    }

    public final void a() {
        d.b(this.f33240a);
        this.f33240a.f33256c.a(Reporting.EventType.VIDEO_AD_SKIPPED);
    }

    public final void a(c cVar) {
        d.a(cVar, "PlayerState is null");
        d.b(this.f33240a);
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.mopub.d.b.a(jSONObject, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, cVar);
        this.f33240a.f33256c.a("playerStateChange", jSONObject);
    }
}
