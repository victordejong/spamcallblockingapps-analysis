package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.p293d.C10123b;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.biddingkit.facebook.bidder.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/d.class */
public final class C10152d {

    /* renamed from: a */
    String f33563a;

    /* renamed from: b */
    String f33564b;

    public C10152d(String str) {
        this.f33563a = "https://an.facebook.com/placementbid.ortb";
        this.f33564b = "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("facebook");
            if (optJSONObject == null) {
                return;
            }
            if (optJSONObject.has("bid_url")) {
                this.f33563a = optJSONObject.getString("bid_url");
            }
            if (!optJSONObject.has("notify_url")) {
                return;
            }
            this.f33564b = optJSONObject.getString("notify_url");
        } catch (JSONException e) {
            C10123b.m23369a("FacebookConfig", "Failed to parse configuration.", e);
        }
    }
}
