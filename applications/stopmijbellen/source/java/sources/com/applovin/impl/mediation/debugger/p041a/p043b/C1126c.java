package com.applovin.impl.mediation.debugger.p041a.p043b;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.C1488d;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.b.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/c.class */
public class C1126c {

    /* renamed from: a */
    private final boolean f4080a;

    /* renamed from: b */
    private final boolean f4081b;

    /* renamed from: c */
    private final boolean f4082c;

    /* renamed from: d */
    private final String f4083d;

    public C1126c(JSONObject jSONObject, C1408l c1408l) {
        this.f4080a = C1488d.m5084a(c1408l.m5532K()).m5085a();
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "cleartext_traffic", (JSONObject) null);
        if (jSONObject2 == null) {
            this.f4081b = false;
            this.f4083d = "";
            this.f4082c = C1493h.m5065a();
            return;
        }
        this.f4081b = true;
        this.f4083d = JsonUtils.getString(jSONObject2, "description", "");
        if (C1493h.m5065a()) {
            this.f4082c = true;
            return;
        }
        List list = JsonUtils.getList(jSONObject2, "domains", new ArrayList());
        boolean z = false;
        if (list.size() > 0) {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                } else if (!C1493h.m5060a((String) it2.next())) {
                    z = false;
                    break;
                }
            }
        }
        this.f4082c = z;
    }

    /* renamed from: a */
    public boolean m6352a() {
        return this.f4081b;
    }

    /* renamed from: b */
    public boolean m6351b() {
        boolean z = this.f4082c;
        return z && (this.f4080a || z);
    }

    /* renamed from: c */
    public String m6350c() {
        return this.f4080a ? this.f4083d : "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config";
    }
}
