package com.applovin.impl.mediation.p039b;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p054b.C1311c;
import com.applovin.impl.sdk.p057e.AbstractC1381w;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/f.class */
public class C1100f extends AbstractC1381w {

    /* renamed from: a */
    private final C1046c f3966a;

    public C1100f(C1046c c1046c, C1408l c1408l) {
        super("TaskReportMaxReward", c1408l);
        this.f3966a = c1046c;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public String mo5606a() {
        return "2.0/mcr";
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5605a(int i) {
        super.mo5605a(i);
        StringBuilder m8752j = C0082b.m8752j("Failed to report reward for mediated ad: ");
        m8752j.append(this.f3966a);
        m8752j.append(" - error code: ");
        m8752j.append(i);
        m5733a(m8752j.toString());
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1385y
    /* renamed from: a */
    public void mo5604a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f3966a.getAdUnitId());
        JsonUtils.putString(jSONObject, "placement", this.f3966a.getPlacement());
        String m6685C = this.f3966a.m6685C();
        if (!StringUtils.isValidString(m6685C)) {
            m6685C = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", m6685C);
        String m6686B = this.f3966a.m6686B();
        if (!StringUtils.isValidString(m6686B)) {
            m6686B = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", m6686B);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: b */
    public C1311c mo5617b() {
        return this.f3966a.m6682F();
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: b */
    public void mo5616b(JSONObject jSONObject) {
        StringBuilder m8752j = C0082b.m8752j("Reported reward successfully for mediated ad: ");
        m8752j.append(this.f3966a);
        m5733a(m8752j.toString());
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1381w
    /* renamed from: c */
    public void mo5615c() {
        StringBuilder m8752j = C0082b.m8752j("No reward result was found for mediated ad: ");
        m8752j.append(this.f3966a);
        m5728d(m8752j.toString());
    }
}
