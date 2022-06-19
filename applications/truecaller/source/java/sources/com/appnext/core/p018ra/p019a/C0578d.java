package com.appnext.core.p018ra.p019a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.core.C0551g;
import com.appnext.core.p018ra.database.C0581a;
import com.appnext.core.p018ra.database.RecentAppsDatabase;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.appnext.core.ra.a.d */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a/d.class */
public class C0578d extends AbstractC0575b {
    public C0578d(Context context, Bundle bundle) {
        super(context, bundle);
    }

    /* renamed from: c */
    private void m42310c(JSONObject jSONObject) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(RemoteMessageConst.DATA, jSONObject.toString());
            C0551g.m42389a(getContext(), "https://global.appnext.com/AdminService.asmx/ra?", (HashMap<String, String>) hashMap, false, 10000);
        } catch (Throwable th) {
            C0472a.m42577a("SendRecentAppsAction$sendToServer", th);
        }
    }

    @Override // com.appnext.core.p018ra.p019a.AbstractC0575b
    /* renamed from: aM */
    public final void mo42309aM() {
        try {
            JSONObject jSONObject = new JSONObject();
            List<C0581a> mo42301aS = RecentAppsDatabase.getInstance(getContext()).recentAppDao().mo42301aS();
            if (!mo42301aS.isEmpty()) {
                String m42380b = C0551g.m42380b(getContext(), true);
                if (!TextUtils.isEmpty(m42380b)) {
                    jSONObject.put("did", m42380b);
                    jSONObject.put("publisher_packagename", getContext().getPackageName());
                    JSONArray jSONArray = new JSONArray();
                    ArrayList arrayList = new ArrayList();
                    for (C0581a c0581a : mo42301aS) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("package_name", c0581a.f1876eQ);
                        jSONObject2.put("date", c0581a.f1877eR);
                        jSONArray.put(jSONObject2);
                        c0581a.f1878eS = true;
                        arrayList.add(c0581a);
                    }
                    jSONObject.put("apps", jSONArray);
                    m42310c(jSONObject);
                    RecentAppsDatabase.getInstance(getContext()).recentAppDao().mo42299c(arrayList);
                    new StringBuilder("Send ra is finished with - ").append(jSONObject.toString());
                }
            }
            try {
                RecentAppsDatabase.getInstance(getContext()).recentAppDao().mo42303E(AbstractC0575b.m42312aQ().format(new Date()));
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.appnext.core.p018ra.p019a.AbstractC0575b
    /* renamed from: aN */
    public final boolean mo42308aN() {
        return true;
    }
}
