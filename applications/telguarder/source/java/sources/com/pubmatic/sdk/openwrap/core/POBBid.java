package com.pubmatic.sdk.openwrap.core;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBLogConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBid.class */
public class POBBid implements POBAdDescriptor {

    /* renamed from: a */
    private String f676a;

    /* renamed from: b */
    private String f677b;

    /* renamed from: c */
    private double f678c;

    /* renamed from: d */
    private int f679d;

    /* renamed from: e */
    private int f680e;

    /* renamed from: f */
    private String f681f;

    /* renamed from: g */
    private String f682g;

    /* renamed from: h */
    private String f683h;

    /* renamed from: i */
    private String f684i;

    /* renamed from: j */
    private String f685j;

    /* renamed from: k */
    private String f686k;

    /* renamed from: l */
    private int f687l;

    /* renamed from: m */
    private int f688m;

    /* renamed from: n */
    private List<POBSummary> f689n;

    /* renamed from: o */
    private List<POBReward> f690o;

    /* renamed from: p */
    private Map<String, String> f691p;

    /* renamed from: q */
    private JSONObject f692q;

    /* renamed from: r */
    private String f693r;

    /* renamed from: s */
    private String f694s;

    /* renamed from: t */
    private boolean f695t;

    /* renamed from: u */
    private long f696u = System.currentTimeMillis();

    /* renamed from: v */
    private long f697v;

    /* renamed from: w */
    private boolean f698w;

    /* renamed from: x */
    private boolean f699x;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBid$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private POBBid f700a;

        /* renamed from: b */
        private String f701b;

        /* renamed from: c */
        private String f702c;

        /* renamed from: d */
        private int f703d;

        /* renamed from: e */
        private int f704e;

        public Builder(POBBid pOBBid) {
            this.f700a = pOBBid;
            this.f701b = pOBBid.f694s;
            this.f702c = pOBBid.f682g;
            this.f703d = pOBBid.f687l;
            this.f704e = pOBBid.f688m;
        }

        public POBBid build() {
            POBBid pOBBid = this.f700a;
            POBBid create = POBBid.create(pOBBid, pOBBid.f691p);
            create.f694s = this.f701b;
            create.f682g = this.f702c;
            create.f687l = this.f703d;
            create.f688m = this.f704e;
            return create;
        }

        public Builder setCreativeType(String str) {
            this.f701b = str;
            return this;
        }

        public Builder setHeight(int i) {
            this.f704e = i;
            return this;
        }

        public Builder setPartnerId(String str) {
            this.f702c = str;
            return this;
        }

        public Builder setWidth(int i) {
            this.f703d = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBid$POBSummary.class */
    public static class POBSummary {

        /* renamed from: a */
        private String f705a;

        /* renamed from: b */
        private String f706b;

        /* renamed from: c */
        private int f707c;

        /* renamed from: d */
        private double f708d;

        /* renamed from: e */
        private int f709e;

        /* renamed from: f */
        private int f710f;

        /* renamed from: a */
        static POBSummary m883a(JSONObject jSONObject) {
            POBSummary pOBSummary = new POBSummary();
            pOBSummary.f705a = jSONObject.optString("bidder");
            int optInt = jSONObject.optInt("errorCode");
            String optString = jSONObject.optString("errorMessage");
            if (optInt > 0) {
                pOBSummary.f707c = optInt;
                pOBSummary.f706b = optString;
            }
            pOBSummary.f708d = jSONObject.optDouble("bid");
            pOBSummary.f709e = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
            pOBSummary.f710f = jSONObject.optInt(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);
            return pOBSummary;
        }

        public double getBidValue() {
            return this.f708d;
        }

        public String getBidderName() {
            return this.f705a;
        }

        public int getErrorCode() {
            return this.f707c;
        }

        public String getErrorMessage() {
            return this.f706b;
        }

        public int getHeight() {
            return this.f710f;
        }

        public int getWidth() {
            return this.f709e;
        }

        public String toString() {
            return "Summary: BidderName[" + getBidderName() + "], BidValue[" + getBidValue() + "], Height[" + getHeight() + "], Width[" + getWidth() + "], ErrorMessage[" + getErrorMessage() + "], ErrorCode[" + getErrorCode() + "]";
        }
    }

    private POBBid() {
    }

    /* renamed from: a */
    private Map<String, String> m895a() {
        return getTargetingInfoWithPricePrecision(0);
    }

    /* renamed from: a */
    private static void m892a(POBBid pOBBid, POBBid pOBBid2) {
        pOBBid.f676a = pOBBid2.f676a;
        pOBBid.f677b = pOBBid2.f677b;
        pOBBid.f678c = pOBBid2.f678c;
        pOBBid.f679d = pOBBid2.f679d;
        pOBBid.f680e = pOBBid2.f680e;
        pOBBid.f697v = pOBBid2.f697v;
        pOBBid.f681f = pOBBid2.f681f;
        pOBBid.f683h = pOBBid2.f683h;
        pOBBid.f684i = pOBBid2.f684i;
        pOBBid.f685j = pOBBid2.f685j;
        pOBBid.f686k = pOBBid2.f686k;
        pOBBid.f687l = pOBBid2.f687l;
        pOBBid.f688m = pOBBid2.f688m;
        pOBBid.f689n = pOBBid2.f689n;
        pOBBid.f690o = pOBBid2.f690o;
        pOBBid.f695t = pOBBid2.f695t;
        pOBBid.f694s = pOBBid2.f694s;
        pOBBid.f682g = pOBBid2.f682g;
        pOBBid.f698w = pOBBid2.f698w;
        pOBBid.f692q = pOBBid2.f692q;
        pOBBid.f693r = pOBBid2.f693r;
    }

    /* renamed from: a */
    private void m890a(Map<String, String> map, String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        map.put(str, str2);
    }

    public static POBBid build(String str, JSONObject jSONObject) {
        JSONObject optJSONObject;
        int i;
        POBBid pOBBid = new POBBid();
        pOBBid.f692q = jSONObject;
        pOBBid.f676a = jSONObject.optString("impid");
        pOBBid.f677b = jSONObject.optString("id");
        double optDouble = jSONObject.optDouble(FirebaseAnalytics.Param.PRICE);
        pOBBid.f678c = optDouble;
        boolean z = true;
        pOBBid.f679d = optDouble > 0.0d ? 1 : 0;
        pOBBid.f684i = jSONObject.optString("adm");
        pOBBid.f683h = jSONObject.optString("crid");
        pOBBid.f681f = str;
        String optString = jSONObject.optString("dealid");
        if (!POBUtils.isNullOrEmpty(optString)) {
            pOBBid.f685j = optString;
        }
        pOBBid.f686k = jSONObject.optString("nurl");
        pOBBid.f687l = jSONObject.optInt(POBConstants.KEY_W);
        pOBBid.f688m = jSONObject.optInt(POBConstants.KEY_H);
        pOBBid.f693r = jSONObject.optString("lurl");
        JSONObject optJSONObject2 = jSONObject.optJSONObject(POBConstants.KEY_EXTENSION);
        if (optJSONObject2 != null) {
            if (optJSONObject2.optInt("winner") != 1) {
                z = false;
            }
            pOBBid.f698w = z;
            String optString2 = optJSONObject2.optString("crtype");
            pOBBid.f694s = optString2;
            String str2 = "video";
            pOBBid.f695t = "video".equals(optString2);
            int optInt = optJSONObject2.optInt("refreshInterval");
            if (!pOBBid.f695t) {
                str2 = POBConstants.KEY_BANNER;
            }
            JSONObject optJSONObject3 = optJSONObject2.optJSONObject(str2);
            int i2 = optInt;
            if (optJSONObject3 != null) {
                JSONObject optJSONObject4 = optJSONObject3.optJSONObject("clientconfig");
                i2 = optInt;
                if (optJSONObject4 != null) {
                    int optInt2 = optJSONObject4.optInt("refreshinterval", optInt);
                    i2 = optInt2;
                    if (pOBBid.f695t) {
                        JSONObject optJSONObject5 = optJSONObject4.optJSONObject("reward");
                        i2 = optInt2;
                        if (optJSONObject5 != null) {
                            JSONArray optJSONArray = optJSONObject5.optJSONArray("rewards");
                            i2 = optInt2;
                            if (optJSONArray != null) {
                                i2 = optInt2;
                                if (optJSONArray.length() > 0) {
                                    pOBBid.f690o = new ArrayList(optJSONArray.length());
                                    int i3 = 0;
                                    while (true) {
                                        i2 = optInt2;
                                        if (i3 >= optJSONArray.length()) {
                                            break;
                                        }
                                        JSONObject optJSONObject6 = optJSONArray.optJSONObject(i3);
                                        if (optJSONObject6 != null && optJSONObject6.has("type") && optJSONObject6.has("value")) {
                                            String optString3 = optJSONObject6.optString("type", "");
                                            try {
                                                i = Integer.parseInt(optJSONObject6.optString("value"));
                                            } catch (NumberFormatException e) {
                                                PMLog.warn("POBBid", POBLogConstants.MSG_INVALID_REWARD_RECEIVED, new Object[0]);
                                                i = 0;
                                            }
                                            if (i > 0) {
                                                pOBBid.f690o.add(new POBReward(optString3, i));
                                            }
                                        }
                                        i3++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            pOBBid.f680e = POBUtils.getValidRefreshInterval(i2, 10);
            JSONArray optJSONArray2 = optJSONObject2.optJSONArray("summary");
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                pOBBid.f689n = new ArrayList(optJSONArray2.length());
                for (int i4 = 0; i4 < optJSONArray2.length(); i4++) {
                    try {
                        pOBBid.f689n.add(POBSummary.m883a(optJSONArray2.getJSONObject(i4)));
                    } catch (JSONException e2) {
                        PMLog.error("POBBid", "Exception on parsing summary object : " + e2.getMessage(), new Object[0]);
                    }
                }
            }
            JSONObject optJSONObject7 = optJSONObject2.optJSONObject("prebid");
            if (optJSONObject7 != null && (optJSONObject = optJSONObject7.optJSONObject("targeting")) != null) {
                try {
                    pOBBid.f691p = new HashMap(4);
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        pOBBid.f691p.put(next, optJSONObject.getString(next));
                    }
                } catch (JSONException e3) {
                    PMLog.error("POBBid", "Exception on parsing prebid object : " + e3.getMessage(), new Object[0]);
                }
            }
        }
        return pOBBid;
    }

    public static POBBid create(POBBid pOBBid, Map<String, String> map) {
        POBBid pOBBid2 = new POBBid();
        m892a(pOBBid2, pOBBid);
        Map<String, String> map2 = pOBBid.f691p;
        if (map2 == null || map2.isEmpty()) {
            pOBBid2.f691p = map;
        } else {
            pOBBid2.f691p = pOBBid.f691p;
        }
        return pOBBid2;
    }

    public static POBBid create(POBBid pOBBid, boolean z, POBDataType.POBBidTargetingType pOBBidTargetingType) {
        POBBid pOBBid2 = new POBBid();
        m892a(pOBBid2, pOBBid);
        pOBBid2.f691p = z ? pOBBid.serverBidTargeting(pOBBidTargetingType) : pOBBid.clientBidTargeting(pOBBidTargetingType);
        return pOBBid2;
    }

    public static POBBid createWithRefreshInterval(POBBid pOBBid, int i) {
        POBBid create = create(pOBBid, pOBBid.f691p);
        create.f680e = i;
        return create;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public POBAdDescriptor buildWithRefreshAndExpiryTimeout(int i, int i2) {
        POBBid create = create(this, this.f691p);
        create.f680e = i;
        create.f697v = i2;
        return create;
    }

    public Map<String, String> clientBidTargeting(POBDataType.POBBidTargetingType pOBBidTargetingType) {
        Map<String, String> m895a = m895a();
        if (pOBBidTargetingType == POBDataType.POBBidTargetingType.WINNING) {
            return m895a;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : m895a.entrySet()) {
            hashMap.put(String.format("%s_%s", entry.getKey(), this.f681f), entry.getValue());
        }
        if (pOBBidTargetingType == POBDataType.POBBidTargetingType.BOTH) {
            hashMap.putAll(m895a);
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof POBBid)) {
            return false;
        }
        return this.f677b.equals(((POBBid) obj).getId());
    }

    @Deprecated
    public String getBidId() {
        return this.f677b;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentHeight() {
        return this.f688m;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getContentWidth() {
        return this.f687l;
    }

    public String getCreative() {
        return this.f684i;
    }

    public String getCreativeId() {
        return this.f683h;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getCreativeType() {
        return this.f694s;
    }

    public String getDealId() {
        return this.f685j;
    }

    public POBReward getFirstReward() {
        List<POBReward> list = this.f690o;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.f690o.get(0);
    }

    public int getHeight() {
        return this.f688m;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getId() {
        return this.f677b;
    }

    public String getImpressionId() {
        return this.f676a;
    }

    public String getPartnerId() {
        return this.f682g;
    }

    public String getPartnerName() {
        return this.f681f;
    }

    public double getPrice() {
        return this.f678c;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public JSONObject getRawBid() {
        return this.f692q;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getRefreshInterval() {
        return this.f680e;
    }

    public int getRemainingExpirationTime() {
        return (int) (this.f697v - (System.currentTimeMillis() - this.f696u));
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public String getRenderableContent() {
        return this.f684i;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public int getStatus() {
        return this.f679d;
    }

    public List<POBSummary> getSummary() {
        return this.f689n;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public Map<String, String> getTargetingInfo() {
        if (this.f679d == 1) {
            return this.f691p;
        }
        return null;
    }

    protected Map<String, String> getTargetingInfoWithPricePrecision(int i) {
        String str;
        String str2;
        HashMap hashMap = new HashMap(4);
        double d = this.f678c;
        if (d > 0.0d) {
            if (i > 0) {
                str2 = String.format("%." + i + "f", Double.valueOf(this.f678c));
            } else {
                str2 = String.valueOf(d);
            }
            hashMap.put("pwtecp", str2);
            str = String.valueOf(1);
        } else {
            str = String.valueOf(0);
        }
        hashMap.put("pwtbst", str);
        m890a(hashMap, "pwtsid", this.f677b);
        m890a(hashMap, "pwtdid", this.f685j);
        m890a(hashMap, "pwtpid", this.f681f);
        hashMap.put("pwtplt", "inapp");
        hashMap.put("pwtsz", this.f687l + "x" + this.f688m);
        Map<String, String> map = this.f691p;
        if (map != null && !map.isEmpty()) {
            hashMap.putAll(this.f691p);
        }
        return hashMap;
    }

    public int getWidth() {
        return this.f687l;
    }

    public String getlURL() {
        return this.f693r;
    }

    public String getnURL() {
        return this.f686k;
    }

    public boolean hasWon() {
        return this.f699x;
    }

    public int hashCode() {
        return (this.f692q + this.f676a + this.f679d).hashCode();
    }

    public boolean isExpired() {
        return getRemainingExpirationTime() <= 0;
    }

    public boolean isServerSideAuctionWinner() {
        return this.f698w;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdDescriptor
    public boolean isVideo() {
        return this.f695t;
    }

    public Map<String, String> serverBidTargeting(POBDataType.POBBidTargetingType pOBBidTargetingType) {
        if (this.f691p == null || pOBBidTargetingType != POBDataType.POBBidTargetingType.PARTNER_SPECIFIC) {
            return this.f691p;
        }
        HashMap hashMap = new HashMap(this.f691p);
        String format = String.format("_%s", this.f681f);
        for (String str : this.f691p.keySet()) {
            if (!str.contains(format)) {
                hashMap.remove(str);
            }
        }
        return hashMap;
    }

    public void setHasWon(boolean z) {
        this.f699x = z;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Price=" + this.f678c);
        stringBuffer.append("PartnerName=" + this.f681f);
        stringBuffer.append("impressionId" + this.f676a);
        stringBuffer.append("bidId" + this.f677b);
        stringBuffer.append("creativeId=" + this.f683h);
        if (this.f689n != null) {
            stringBuffer.append("Summary List:" + this.f689n.toString());
        }
        if (this.f690o != null) {
            stringBuffer.append("Reward List:" + this.f690o.toString());
        }
        if (this.f691p != null) {
            stringBuffer.append(" Prebid targating Info:" + this.f691p.toString());
        }
        return stringBuffer.toString();
    }
}
