package com.applovin.impl.mediation.p040c;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.c.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/c/b.class */
public class C1106b extends C1493h {

    /* renamed from: a */
    private static final String[] f3975a = {"ads", "settings", "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters"};

    /* renamed from: b */
    private static final String[] f3976b = {"ads", "settings", "signal_providers"};

    /* renamed from: a */
    public static String m6464a(C1408l c1408l) {
        return C1493h.m5058a((String) c1408l.m5511a(C1313a.f4690c), "1.0/mediate", c1408l);
    }

    /* renamed from: a */
    public static void m6463a(JSONObject jSONObject, C1408l c1408l) {
        if (JsonUtils.valueExists(jSONObject, "signal_providers")) {
            JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
            JsonUtils.removeObjectsForKeys(shallowCopy, f3975a);
            c1408l.m5508a((C1316d<C1316d<String>>) C1316d.f5008x, (C1316d<String>) shallowCopy.toString());
        }
    }

    /* renamed from: b */
    public static String m6462b(C1408l c1408l) {
        return C1493h.m5058a((String) c1408l.m5511a(C1313a.f4691d), "1.0/mediate", c1408l);
    }

    /* renamed from: b */
    public static void m6461b(JSONObject jSONObject, C1408l c1408l) {
        if (jSONObject.length() == 0) {
            return;
        }
        if (!JsonUtils.valueExists(jSONObject, "auto_init_adapters") && !JsonUtils.valueExists(jSONObject, "test_mode_auto_init_adapters")) {
            c1408l.m5479b(C1316d.f5009y);
            return;
        }
        JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
        JsonUtils.removeObjectsForKeys(shallowCopy, f3976b);
        c1408l.m5508a((C1316d<C1316d<String>>) C1316d.f5009y, (C1316d<String>) shallowCopy.toString());
    }

    /* renamed from: c */
    public static String m6460c(C1408l c1408l) {
        return C1493h.m5058a((String) c1408l.m5511a(C1313a.f4690c), "1.0/mediate_debug", c1408l);
    }

    /* renamed from: d */
    public static String m6459d(C1408l c1408l) {
        return C1493h.m5058a((String) c1408l.m5511a(C1313a.f4691d), "1.0/mediate_debug", c1408l);
    }
}
