package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.c.a;
import com.facebook.biddingkit.c.b;
import com.facebook.biddingkit.http.client.f;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookBid.class */
public class FacebookBid implements a, b {
    private static final String TAG = "FacebookBid";
    private String mCurrency;
    private String mLurl;
    private FacebookNotifier mNotifier;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;
    private com.facebook.biddingkit.http.a.a mStatusCode;

    /* JADX INFO: Access modifiers changed from: protected */
    public FacebookBid(f fVar) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        this.mLurl = "";
        this.mStatusCode = com.facebook.biddingkit.http.a.a.UNKNOWN;
        try {
            this.mStatusCode = com.facebook.biddingkit.http.a.a.getValue(fVar.f19765a);
            JSONObject jSONObject = new JSONObject(fVar.a());
            JSONObject jSONObject2 = jSONObject.getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mLurl = jSONObject2.getString("lurl");
            this.mPayload = jSONObject2.getString("adm");
            this.mPriceCpmCents = jSONObject2.getDouble("price") * 100.0d;
            this.mPlacementId = new JSONObject(this.mPayload).getString("resolved_placement_id");
            this.mCurrency = jSONObject.getString("cur");
        } catch (Exception e) {
            com.facebook.biddingkit.d.b.a(TAG, "Failed to parse response body", e);
        }
    }

    public String getBidderName() {
        return "FACEBOOK_BIDDER";
    }

    public String getCurrency() {
        return this.mCurrency;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getLurl() {
        return this.mLurl;
    }

    @Override // com.facebook.biddingkit.c.a
    public String getPayload() {
        return this.mPayload;
    }

    public String getPlacementId() {
        return this.mPlacementId;
    }

    @Override // com.facebook.biddingkit.c.a
    public double getPrice() {
        return this.mPriceCpmCents;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.biddingkit.http.a.a getStatusCode() {
        return this.mStatusCode;
    }

    @Override // com.facebook.biddingkit.c.b
    public void notifyLoss() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", "OTHER", Double.valueOf(0.0d), true);
        }
    }

    @Override // com.facebook.biddingkit.c.b
    public void notifyWin() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", getBidderName(), Double.valueOf(getPrice()), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setNotifier(FacebookNotifier facebookNotifier) {
        this.mNotifier = facebookNotifier;
    }
}
