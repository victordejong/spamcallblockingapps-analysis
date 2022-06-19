package com.iab.omid.library.mopub.adsession.p429a;

import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16382d;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.adsession.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/a/b.class */
public final class C16347b {

    /* renamed from: a */
    public final C16360k f57763a;

    public C16347b(C16360k c16360k) {
        this.f57763a = c16360k;
    }

    /* renamed from: a */
    public final void m7379a() {
        C16382d.m7323b(this.f57763a);
        this.f57763a.f57784c.m7313a(Reporting.EventType.VIDEO_AD_SKIPPED);
    }

    /* renamed from: a */
    public final void m7378a(EnumC16348c enumC16348c) {
        C16382d.m7325a(enumC16348c, "PlayerState is null");
        C16382d.m7323b(this.f57763a);
        JSONObject jSONObject = new JSONObject();
        C16379b.m7332a(jSONObject, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, enumC16348c);
        this.f57763a.f57784c.m7312a("playerStateChange", jSONObject);
    }
}
