package com.applovin.impl.mediation.p038a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.a.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/h.class */
public class C1052h extends C1049f {
    public C1052h(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, C1408l c1408l) {
        super(map, jSONObject, jSONObject2, c1408l);
    }

    /* renamed from: a */
    public boolean m6609a() {
        return m6628b("only_collect_signal_when_initialized", Boolean.FALSE).booleanValue();
    }

    @Override // com.applovin.impl.mediation.p038a.C1049f
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("SignalProviderSpec{adObject=");
        m8752j.append(m6655M());
        m8752j.append('}');
        return m8752j.toString();
    }
}
