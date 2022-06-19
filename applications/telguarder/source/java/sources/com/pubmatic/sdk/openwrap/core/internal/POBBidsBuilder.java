package com.pubmatic.sdk.openwrap.core.internal;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdBuilding;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/internal/POBBidsBuilder.class */
public class POBBidsBuilder implements POBAdBuilding<POBBid> {

    /* renamed from: a */
    private String f775a;

    /* renamed from: b */
    private String f776b;

    /* renamed from: c */
    private int f777c;

    /* renamed from: d */
    private int f778d;

    /* renamed from: e */
    private String f779e;

    /* renamed from: f */
    private POBAdBuilding.PMAdBuilderListener<POBBid> f780f;

    @Override // com.pubmatic.sdk.common.base.POBAdBuilding
    public void build(POBAdResponse<POBBid> pOBAdResponse) {
        if (this.f780f == null) {
            PMLog.error("POBBidsBuilder", "Listener is null, execution of Wrapper ad builder gets break.", new Object[0]);
            return;
        }
        if (pOBAdResponse != null) {
            POBAdResponse.Builder builder = new POBAdResponse.Builder(pOBAdResponse);
            JSONObject customData = pOBAdResponse.getCustomData();
            if (customData != null) {
                try {
                    JSONObject jSONObject = customData.getJSONObject(POBConstants.KEY_EXTENSION);
                    builder.setSendAllBidsState(jSONObject.optInt("sendallbids") != 0);
                    JSONObject jSONObject2 = jSONObject.getJSONObject(POBConstants.KEY_LOGINFO);
                    builder.setLogger(jSONObject2.getString("logger"));
                    builder.setTracker(jSONObject2.getString("tracker"));
                } catch (JSONException e) {
                    PMLog.error("POBBidsBuilder", "Unable to fetch logger and tracker details", new Object[0]);
                }
                List<POBBid> bids = pOBAdResponse.getBids();
                JSONArray optJSONArray = customData.optJSONArray("seatbid");
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray("bid");
                            String optString = optJSONObject.optString("seat");
                            String str = optString;
                            if (optString.isEmpty()) {
                                str = this.f775a;
                            }
                            if (optJSONArray2 != null) {
                                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                    POBBid build = POBBid.build(str, optJSONArray2.optJSONObject(i2));
                                    POBBid.Builder builder2 = new POBBid.Builder(build);
                                    if (POBUtils.isNullOrEmpty(build.getCreativeType())) {
                                        builder2.setCreativeType(this.f779e);
                                    }
                                    if (POBUtils.isNullOrEmpty(build.getPartnerId())) {
                                        builder2.setPartnerId(this.f776b);
                                    }
                                    if (build.getWidth() == 0) {
                                        builder2.setWidth(this.f777c);
                                    }
                                    if (build.getHeight() == 0) {
                                        builder2.setHeight(this.f778d);
                                    }
                                    bids.add(builder2.build());
                                }
                            }
                        }
                    }
                }
                if (bids.size() > 0) {
                    builder.setRefreshInterval(bids.get(0).getRefreshInterval());
                }
                this.f780f.adBuilderOnSuccess(builder.build());
                return;
            }
        }
        this.f780f.adBuilderOnError(new POBError(1007, "Null response received in POBBidsBuilder"));
    }

    public String getPartnerId() {
        return this.f776b;
    }

    public void setCreativeType(String str) {
        this.f779e = str;
    }

    public void setHeight(int i) {
        this.f778d = i;
    }

    @Override // com.pubmatic.sdk.common.base.POBAdBuilding
    public void setListener(POBAdBuilding.PMAdBuilderListener<POBBid> pMAdBuilderListener) {
        this.f780f = pMAdBuilderListener;
    }

    public void setPartnerId(String str) {
        this.f776b = str;
    }

    public void setPartnerName(String str) {
        this.f775a = str;
    }

    public void setWidth(int i) {
        this.f777c = i;
    }
}
