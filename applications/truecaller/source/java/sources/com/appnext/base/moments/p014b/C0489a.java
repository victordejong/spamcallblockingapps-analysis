package com.appnext.base.moments.p014b;

import com.appnext.base.moments.p011a.p012a.C0485c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import org.json.JSONObject;
/* renamed from: com.appnext.base.moments.b.a */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/b/a.class */
public final class C0489a {
    /* renamed from: b */
    public static C0485c m42526b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.has(AnalyticsConstants.KEY) ? jSONObject.getString(AnalyticsConstants.KEY) : null;
            String string2 = jSONObject.has("cycle") ? jSONObject.getString("cycle") : null;
            String string3 = jSONObject.has("cycle_type") ? jSONObject.getString("cycle_type") : null;
            return new C0485c(jSONObject.has(UpdateKey.STATUS) ? jSONObject.getString(UpdateKey.STATUS) : null, jSONObject.has("sample") ? jSONObject.getString("sample") : null, jSONObject.has("sample_type") ? jSONObject.getString("sample_type") : null, string2, string3, string, jSONObject.has("service_key") ? jSONObject.getString("service_key") : null, jSONObject.has(RemoteMessageConst.DATA) ? jSONObject.getString(RemoteMessageConst.DATA) : null);
        } catch (Throwable th) {
            return null;
        }
    }
}
