package com.huawei.hms.framework.network.grs.p087g.p088j;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2331d;
import com.huawei.hms.framework.network.grs.p090h.C2334c;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.g.j.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/j/a.class */
public class C2328a {

    /* renamed from: a */
    private static final String f7476a = "a";

    /* renamed from: b */
    private static C2331d f7477b;

    /* renamed from: a */
    public static C2331d m37880a(Context context) {
        synchronized (C2328a.class) {
            try {
                C2331d c2331d = f7477b;
                if (c2331d != null) {
                    return c2331d;
                }
                String m37854a = C2334c.m37854a(GrsApp.getInstance().getBrand(StringConstant.SLASH) + "grs_sdk_server_config.json", context);
                if (TextUtils.isEmpty(m37854a)) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(m37854a).getJSONObject("grs_server");
                    JSONArray jSONArray = jSONObject.getJSONArray("grs_base_url");
                    ArrayList arrayList = null;
                    if (jSONArray != null) {
                        arrayList = null;
                        if (jSONArray.length() > 0) {
                            ArrayList arrayList2 = new ArrayList();
                            int i = 0;
                            while (true) {
                                arrayList = arrayList2;
                                if (i >= jSONArray.length()) {
                                    break;
                                }
                                arrayList2.add(jSONArray.get(i).toString());
                                i++;
                            }
                        }
                    }
                    C2331d c2331d2 = new C2331d();
                    f7477b = c2331d2;
                    c2331d2.m37867a(arrayList);
                    f7477b.m37865b(jSONObject.getString("grs_query_endpoint_1.0"));
                    f7477b.m37868a(jSONObject.getString("grs_query_endpoint_2.0"));
                    f7477b.m37869a(jSONObject.getInt("grs_query_timeout"));
                } catch (JSONException e) {
                    Logger.m38038w(f7476a, "getGrsServerBean catch JSONException: %s", StringUtils.anonymizeMessage(e.getMessage()));
                }
                return f7477b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
