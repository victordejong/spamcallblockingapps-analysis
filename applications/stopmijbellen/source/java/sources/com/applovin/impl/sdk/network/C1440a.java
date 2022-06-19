package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p057e.AbstractC1378u;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.google.android.gms.internal.ads.C1676a;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.network.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/network/a.class */
public class C1440a extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final String f5415a;

    /* renamed from: c */
    private final C1447c<JSONObject> f5416c;

    public C1440a(String str, C1447c<JSONObject> c1447c, C1408l c1408l) {
        super(C1676a.m4789h("CommunicatorRequestTask:", str), c1408l);
        this.f5415a = str;
        this.f5416c = c1447c;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5113b.m5525R().m5654a(new AbstractC1378u<JSONObject>(this.f5416c, this.f5113b, m5725g()) { // from class: com.applovin.impl.sdk.network.a.1
            /* renamed from: a */
            public void mo5331a(int i, String str, JSONObject jSONObject) {
                this.f5113b.m5490ae().m5583a(C1440a.this.f5415a, C1440a.this.f5416c.m5329a(), i, jSONObject, str, false);
            }

            /* renamed from: a */
            public void mo5330a(JSONObject jSONObject, int i) {
                this.f5113b.m5490ae().m5583a(C1440a.this.f5415a, C1440a.this.f5416c.m5329a(), i, jSONObject, null, true);
            }
        });
    }
}
