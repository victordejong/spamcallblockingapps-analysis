package com.appnext.core.crashes;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.core.C0551g;
import com.appnext.nativeads.NativeAdObject;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.appnext.core.crashes.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/crashes/a.class */
public final class C0530a {

    /* renamed from: aM */
    private Context f1753aM;

    /* renamed from: eB */
    private String f1754eB;

    /* renamed from: eC */
    private String f1755eC;

    public C0530a(Context context, String str, String str2) {
        this.f1754eB = null;
        this.f1755eC = null;
        this.f1753aM = context;
        this.f1754eB = str;
        this.f1755eC = str2;
    }

    /* renamed from: aE */
    public final void m42451aE() {
        try {
            if (!TextUtils.isEmpty(this.f1754eB) && !TextUtils.isEmpty(this.f1755eC)) {
                JSONObject jSONObject = new JSONObject();
                Context context = this.f1753aM;
                if (context != null) {
                    jSONObject.put("did", C0551g.m42380b(context, false));
                }
                jSONObject.put("api_Call", this.f1754eB);
                jSONObject.put("ex", this.f1755eC);
                jSONObject.put("ver", NativeAdObject.VID);
                HashMap hashMap = new HashMap();
                hashMap.put(RemoteMessageConst.DATA, jSONObject.toString());
                C0551g.m42389a(this.f1753aM, "https://global.appnext.com/AdminService.asmx/ex?data=", (HashMap<String, String>) hashMap, false, 10000);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
