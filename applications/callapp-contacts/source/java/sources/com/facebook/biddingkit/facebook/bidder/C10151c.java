package com.facebook.biddingkit.facebook.bidder;

import android.util.Base64;
import com.explorestack.iab.mraid.C9568h;
import com.facebook.biddingkit.facebook.bidder.C10148b;
import com.facebook.biddingkit.p291b.C10115a;
import com.facebook.biddingkit.p292c.EnumC10120d;
import com.facebook.biddingkit.p293d.C10123b;
import com.facebook.biddingkit.p294e.C10142b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.facebook.bidder.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/c.class */
public final class C10151c {

    /* renamed from: a */
    private static boolean f33562a = false;

    C10151c() {
    }

    /* renamed from: a */
    public static String m23337a(C10148b.C10150a c10150a, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", c10150a.f33555d);
            EnumC10120d enumC10120d = c10150a.f33554c;
            JSONArray jSONArray = new JSONArray();
            JSONObject put = new JSONObject().put("id", "FB Ad Impression").put("tagid", c10150a.f33553b).put("instl", enumC10120d.getInstl());
            String formatLabel = enumC10120d.getFormatLabel();
            JSONObject put2 = new JSONObject().put(C9568h.f32519a, enumC10120d.getHeight()).put("w", enumC10120d.getWidth()).put("linearity", enumC10120d.getLinearity());
            if (!enumC10120d.getVideoType().isEmpty()) {
                put2.put("ext", new JSONObject().put("videotype", enumC10120d.getVideoType()));
            }
            jSONObject.put("imp", jSONArray.put(put.put(formatLabel, put2)));
            jSONObject.put("app", new JSONObject().put("publisher", new JSONObject().put("id", c10150a.f33552a)));
            JSONObject jSONObject2 = new JSONObject();
            AdvertisingIdClient.Info m23345a = C10142b.m23345a(C10115a.m23377a());
            jSONObject.put("device", jSONObject2.put("lmt", m23345a != null ? m23345a.isLimitAdTrackingEnabled() : false ? 1 : 0));
            jSONObject.put("regs", new JSONObject().put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, c10150a.f33559h ? 1 : 0));
            jSONObject.put("at", c10150a.f33558g.getValue());
            jSONObject.put("tmax", 1000);
            int i = 0;
            if (c10150a.f33557f) {
                i = 1;
            }
            jSONObject.put("test", i);
            jSONObject.put("ext", new JSONObject().put("platformid", c10150a.f33560i != null ? c10150a.f33560i : c10150a.f33552a).put("bidding_kit_version", f33562a ? "" : "0.5.0").put("bidding_kit_source", c10150a.f33561j ? "standalone" : "auction").putOpt("id", f33562a ? null : new StringBuilder(Base64.encodeToString(("V1_" + c10150a.f33552a + "_" + j).getBytes(), 3)).reverse().toString()).putOpt(Reporting.Key.TIMESTAMP, f33562a ? null : Long.valueOf(j)));
            jSONObject.put("user", new JSONObject().put("buyeruid", c10150a.f33556e));
        } catch (JSONException e) {
            C10123b.m23369a("FacebookBidderPayloadBuilder", "Creating Facebook Bidder Payload failed", e);
        }
        return jSONObject.toString();
    }
}
