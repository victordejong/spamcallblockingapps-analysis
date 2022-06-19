package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.http.client.C10162f;
import com.facebook.biddingkit.http.p296a.EnumC10153a;
import com.facebook.biddingkit.p292c.AbstractC10117a;
import com.facebook.biddingkit.p292c.AbstractC10118b;
import com.facebook.biddingkit.p293d.C10123b;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookBid.class */
public class FacebookBid implements AbstractC10117a, AbstractC10118b {
    private static final String TAG = "FacebookBid";
    private String mCurrency;
    private String mLurl;
    private FacebookNotifier mNotifier;
    private String mPayload;
    private String mPlacementId;
    private double mPriceCpmCents;
    private EnumC10153a mStatusCode;

    public FacebookBid(C10162f c10162f) {
        this.mPayload = "";
        this.mPlacementId = "";
        this.mCurrency = "";
        this.mLurl = "";
        this.mStatusCode = EnumC10153a.UNKNOWN;
        try {
            this.mStatusCode = EnumC10153a.getValue(c10162f.f33581a);
            JSONObject jSONObject = new JSONObject(c10162f.m23318a());
            JSONObject jSONObject2 = jSONObject.getJSONArray("seatbid").getJSONObject(0).getJSONArray("bid").getJSONObject(0);
            this.mLurl = jSONObject2.getString("lurl");
            this.mPayload = jSONObject2.getString("adm");
            this.mPriceCpmCents = jSONObject2.getDouble("price") * 100.0d;
            this.mPlacementId = new JSONObject(this.mPayload).getString("resolved_placement_id");
            this.mCurrency = jSONObject.getString("cur");
        } catch (Exception e) {
            C10123b.m23369a(TAG, "Failed to parse response body", e);
        }
    }

    public String getBidderName() {
        return "FACEBOOK_BIDDER";
    }

    public String getCurrency() {
        return this.mCurrency;
    }

    public String getLurl() {
        return this.mLurl;
    }

    @Override // com.facebook.biddingkit.p292c.AbstractC10117a
    public String getPayload() {
        return this.mPayload;
    }

    public String getPlacementId() {
        return this.mPlacementId;
    }

    @Override // com.facebook.biddingkit.p292c.AbstractC10117a
    public double getPrice() {
        return this.mPriceCpmCents;
    }

    public EnumC10153a getStatusCode() {
        return this.mStatusCode;
    }

    @Override // com.facebook.biddingkit.p292c.AbstractC10118b
    public void notifyLoss() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", "OTHER", Double.valueOf(0.0d), true);
        }
    }

    @Override // com.facebook.biddingkit.p292c.AbstractC10118b
    public void notifyWin() {
        FacebookNotifier facebookNotifier = this.mNotifier;
        if (facebookNotifier != null) {
            facebookNotifier.notifyWinner("", getBidderName(), Double.valueOf(getPrice()), true);
        }
    }

    public void setNotifier(FacebookNotifier facebookNotifier) {
        this.mNotifier = facebookNotifier;
    }
}
