package com.applovin.impl.sdk.p057e;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.e.v */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/v.class */
public class C1380v extends AbstractC1381w {

    /* renamed from: a */
    private final AbstractC1286e f5221a;

    public C1380v(AbstractC1286e abstractC1286e, C1408l c1408l) {
        super("TaskReportAppLovinReward", c1408l);
        this.f5221a = abstractC1286e;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public String mo5606a() {
        return "2.0/cr";
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5605a(int i) {
        super.mo5605a(i);
        StringBuilder m8752j = C0082b.m8752j("Failed to report reward for ad: ");
        m8752j.append(this.f5221a);
        m8752j.append(" - error code: ");
        m8752j.append(i);
        m5728d(m8752j.toString());
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5604a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f5221a.getAdZone().m6009a());
        JsonUtils.putInt(jSONObject, "fire_percent", this.f5221a.m5967Z());
        String clCode = this.f5221a.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: b */
    public C1311c mo5617b() {
        return this.f5221a.m5957aC();
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: b */
    public void mo5616b(JSONObject jSONObject) {
        StringBuilder m8752j = C0082b.m8752j("Reported reward successfully for ad: ");
        m8752j.append(this.f5221a);
        m5733a(m8752j.toString());
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: c */
    public void mo5615c() {
        StringBuilder m8752j = C0082b.m8752j("No reward result was found for ad: ");
        m8752j.append(this.f5221a);
        m5728d(m8752j.toString());
    }
}
