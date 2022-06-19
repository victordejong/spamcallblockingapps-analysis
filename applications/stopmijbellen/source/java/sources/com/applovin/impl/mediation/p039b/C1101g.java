package com.applovin.impl.mediation.p039b;

import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p057e.AbstractC1333ab;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/g.class */
public class C1101g extends AbstractC1333ab {

    /* renamed from: a */
    private final C1046c f3967a;

    public C1101g(C1046c c1046c, C1408l c1408l) {
        super("TaskValidateMaxReward", c1408l);
        this.f3967a = c1046c;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public String mo5606a() {
        return "2.0/mvr";
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5605a(int i) {
        super.mo5605a(i);
        this.f3967a.m6676a(C1311c.m5842a((i < 400 || i >= 500) ? "network_timeout" : "rejected"));
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1333ab
    /* renamed from: a */
    public void mo5724a(C1311c c1311c) {
        this.f3967a.m6676a(c1311c);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5604a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f3967a.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.f3967a.getPlacement());
        JsonUtils.putString(jSONObject, "ad_format", this.f3967a.getFormat().getLabel());
        String m6685C = this.f3967a.m6685C();
        if (!StringUtils.isValidString(m6685C)) {
            m6685C = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", m6685C);
        String m6686B = this.f3967a.m6686B();
        if (!StringUtils.isValidString(m6686B)) {
            m6686B = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", m6686B);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1333ab
    /* renamed from: b */
    public boolean mo5722b() {
        return this.f3967a.m6684D();
    }
}
