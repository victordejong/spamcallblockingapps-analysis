package com.applovin.impl.mediation.debugger.p041a.p042a;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/a/d.class */
public class C1121d {

    /* renamed from: a */
    private final String f4036a;

    /* renamed from: b */
    private final String f4037b;

    public C1121d(JSONObject jSONObject, C1408l c1408l) {
        this.f4036a = JsonUtils.getString(jSONObject, FacebookAdapter.KEY_ID, "");
        this.f4037b = JsonUtils.getString(jSONObject, "price", null);
    }

    /* renamed from: a */
    public String m6392a() {
        return this.f4036a;
    }

    /* renamed from: b */
    public String m6391b() {
        return this.f4037b;
    }
}
