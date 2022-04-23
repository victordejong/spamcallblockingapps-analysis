package com.facebook.biddingkit.facebook.bidder;

import android.util.Base64;
import com.explorestack.iab.mraid.h;
import com.facebook.biddingkit.b.a;
import com.facebook.biddingkit.c.d;
import com.facebook.biddingkit.facebook.bidder.b;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f19750a = false;

    c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(b.a aVar, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", aVar.f19749d);
            d dVar = aVar.f19748c;
            JSONArray jSONArray = new JSONArray();
            JSONObject put = new JSONObject().put("id", "FB Ad Impression").put("tagid", aVar.f19747b).put("instl", dVar.getInstl());
            String formatLabel = dVar.getFormatLabel();
            JSONObject put2 = new JSONObject().put(h.f19142a, dVar.getHeight()).put("w", dVar.getWidth()).put("linearity", dVar.getLinearity());
            if (!dVar.getVideoType().isEmpty()) {
                put2.put("ext", new JSONObject().put("videotype", dVar.getVideoType()));
            }
            jSONObject.put("imp", jSONArray.put(put.put(formatLabel, put2)));
            jSONObject.put("app", new JSONObject().put("publisher", new JSONObject().put("id", aVar.f19746a)));
            JSONObject jSONObject2 = new JSONObject();
            AdvertisingIdClient.Info a2 = com.facebook.biddingkit.e.b.a(a.a());
            int i = 0;
            jSONObject.put("device", jSONObject2.put("lmt", a2 != null ? a2.isLimitAdTrackingEnabled() : false ? 1 : 0));
            jSONObject.put("regs", new JSONObject().put(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, aVar.h ? 1 : 0));
            jSONObject.put("at", aVar.g.getValue());
            jSONObject.put("tmax", 1000);
            if (aVar.f) {
                i = 1;
            }
            jSONObject.put("test", i);
            JSONObject put3 = new JSONObject().put("platformid", aVar.i != null ? aVar.i : aVar.f19746a).put("bidding_kit_version", f19750a ? "" : "0.5.0").put("bidding_kit_source", aVar.j ? "standalone" : "auction");
            String str = aVar.f19746a;
            Long l = null;
            JSONObject putOpt = put3.putOpt("id", f19750a ? null : new StringBuilder(Base64.encodeToString(("V1_" + str + "_" + j).getBytes(), 3)).reverse().toString());
            if (!f19750a) {
                l = Long.valueOf(j);
            }
            jSONObject.put("ext", putOpt.putOpt(Reporting.Key.TIMESTAMP, l));
            jSONObject.put("user", new JSONObject().put("buyeruid", aVar.e));
        } catch (JSONException e) {
            com.facebook.biddingkit.d.b.a("FacebookBidderPayloadBuilder", "Creating Facebook Bidder Payload failed", e);
        }
        return jSONObject.toString();
    }
}
