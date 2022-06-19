package com.pubmatic.sdk.common.models;

import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBProfileInfo.class */
public class POBProfileInfo {

    /* renamed from: a */
    private int f486a;

    /* renamed from: b */
    private int f487b;

    /* renamed from: c */
    private int f488c;

    /* renamed from: d */
    private String f489d;

    /* renamed from: e */
    private List<POBPartnerInfo> f490e;

    public static POBProfileInfo build(JSONObject jSONObject) {
        POBProfileInfo pOBProfileInfo = new POBProfileInfo();
        pOBProfileInfo.f486a = jSONObject.optInt("pid");
        pOBProfileInfo.f487b = jSONObject.optInt(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER);
        pOBProfileInfo.f488c = jSONObject.optInt("pdvid");
        pOBProfileInfo.f489d = jSONObject.optString("adserver");
        JSONArray optJSONArray = jSONObject.optJSONArray("adapters");
        if (optJSONArray != null) {
            pOBProfileInfo.f490e = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                pOBProfileInfo.f490e.add(POBPartnerInfo.build((JSONObject) optJSONArray.get(i)));
            }
        }
        return pOBProfileInfo;
    }

    public String getAdServerName() {
        return this.f489d;
    }

    public List<POBPartnerInfo> getPartnerList() {
        return this.f490e;
    }

    public int getProfileId() {
        return this.f486a;
    }

    public int getPublisherId() {
        return this.f487b;
    }

    public int getVersionId() {
        return this.f488c;
    }
}
