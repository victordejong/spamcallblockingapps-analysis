package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.d.b;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    String f19751a;

    /* renamed from: b  reason: collision with root package name */
    String f19752b;

    public d(String str) {
        this.f19751a = "https://an.facebook.com/placementbid.ortb";
        this.f19752b = "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}";
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject optJSONObject = new JSONObject(str).optJSONObject("facebook");
                if (optJSONObject != null) {
                    if (optJSONObject.has("bid_url")) {
                        this.f19751a = optJSONObject.getString("bid_url");
                    }
                    if (optJSONObject.has("notify_url")) {
                        this.f19752b = optJSONObject.getString("notify_url");
                    }
                }
            } catch (JSONException e) {
                b.a("FacebookConfig", "Failed to parse configuration.", e);
            }
        }
    }
}
