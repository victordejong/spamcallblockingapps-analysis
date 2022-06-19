package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.aa */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/aa.class */
public class C1332aa extends AbstractC1333ab {

    /* renamed from: a */
    private final AbstractC1286e f5117a;

    /* renamed from: c */
    private final AppLovinAdRewardListener f5118c;

    public C1332aa(AbstractC1286e abstractC1286e, AppLovinAdRewardListener appLovinAdRewardListener, C1408l c1408l) {
        super("TaskValidateAppLovinReward", c1408l);
        this.f5117a = abstractC1286e;
        this.f5118c = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public String mo5606a() {
        return "2.0/vr";
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5605a(int i) {
        String str;
        super.mo5605a(i);
        if (i < 400 || i >= 500) {
            this.f5118c.validationRequestFailed(this.f5117a, i);
            str = "network_timeout";
        } else {
            this.f5118c.userRewardRejected(this.f5117a, Collections.emptyMap());
            str = "rejected";
        }
        this.f5117a.m5961a(C1311c.m5842a(str));
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1333ab
    /* renamed from: a */
    public void mo5724a(C1311c c1311c) {
        this.f5117a.m5961a(c1311c);
        String m5840b = c1311c.m5840b();
        Map<String, String> m5843a = c1311c.m5843a();
        if (m5840b.equals("accepted")) {
            this.f5118c.userRewardVerified(this.f5117a, m5843a);
        } else if (m5840b.equals("quota_exceeded")) {
            this.f5118c.userOverQuota(this.f5117a, m5843a);
        } else if (m5840b.equals("rejected")) {
            this.f5118c.userRewardRejected(this.f5117a, m5843a);
        } else {
            this.f5118c.validationRequestFailed(this.f5117a, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5604a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f5117a.getAdZone().m6009a());
        String clCode = this.f5117a.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1333ab
    /* renamed from: b */
    public boolean mo5722b() {
        return this.f5117a.m5959aA();
    }
}
