package com.applovin.impl.mediation.debugger.p041a.p043b;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/a.class */
public class C1122a {

    /* renamed from: a */
    private final String f4038a;

    /* renamed from: b */
    private final String f4039b;

    /* renamed from: c */
    private final boolean f4040c;

    public C1122a(JSONObject jSONObject, C1408l c1408l) {
        this.f4038a = JsonUtils.getString(jSONObject, AppMeasurementSdk.ConditionalUserProperty.NAME, "");
        this.f4039b = JsonUtils.getString(jSONObject, "description", "");
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        this.f4040c = list != null ? Utils.checkClassesExistence(list) : Utils.checkClassExistence(JsonUtils.getString(jSONObject, "existence_class", ""));
    }

    /* renamed from: a */
    public static boolean m6389a(String str, String str2, String str3) {
        if (str == null) {
            return true;
        }
        if (str2 != null && Utils.compare(str2, str) == 1) {
            return false;
        }
        return str3 == null || Utils.compare(str3, str) != -1;
    }

    /* renamed from: a */
    public String m6390a() {
        return this.f4038a;
    }

    /* renamed from: b */
    public String m6388b() {
        return this.f4039b;
    }

    /* renamed from: c */
    public boolean m6387c() {
        return this.f4040c;
    }
}
