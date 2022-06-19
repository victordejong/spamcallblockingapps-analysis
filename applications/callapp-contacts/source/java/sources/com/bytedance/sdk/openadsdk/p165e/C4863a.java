package com.bytedance.sdk.openadsdk.p165e;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5027a;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.preload.falconx.p204a.C5300a;
import com.bytedance.sdk.openadsdk.preload.falconx.p205b.C5301a;
import com.bytedance.sdk.openadsdk.preload.geckox.C5302a;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.AbstractC5310b;
import com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.C5307a;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.AbstractC5397a;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.InputStream;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.e.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/e/a.class */
public class C4863a {

    /* renamed from: a */
    private static String[] f17801a = {"gecko-pangle-sg.byteoversea.com"};

    /* renamed from: b */
    private File f17802b;

    /* renamed from: c */
    private Map.Entry<String, JSONObject> f17803c;

    /* renamed from: com.bytedance.sdk.openadsdk.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/e/a$a.class */
    public static class C4865a {

        /* renamed from: a */
        private static C4863a f17806a = new C4863a();
    }

    private C4863a() {
        this.f17802b = new File(C4600n.m34815a().getCacheDir() + File.separator + "gecko");
        if (C4570g.m35020b().m34989s()) {
            C5381b.m32431a();
        }
    }

    /* renamed from: a */
    public static C4863a m33717a() {
        return C4865a.f17806a;
    }

    /* renamed from: a */
    private String m33714a(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf("?");
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    /* renamed from: a */
    private JSONObject m33713a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            Map.Entry<String, JSONObject> entry = this.f17803c;
            if (entry == null || !str.equals(entry.getKey())) {
                C5478q.m32112b("GeckoHub", "refresh cache manifest");
                C5300a c5300a = new C5300a(C4600n.m34815a(), "a1a15b782e3ee8a25247561a91a99835", this.f17802b);
                String m33252a = C5027a.m33252a(c5300a.m32628a(str + "/manifest.json"));
                if (TextUtils.isEmpty(m33252a)) {
                    C5478q.m32106e("GeckoHub", "getFileInfoInManifest error null");
                    return null;
                }
                this.f17803c = new AbstractMap.SimpleEntry(str, new JSONObject(m33252a));
            }
            JSONObject value = this.f17803c.getValue();
            String m32148a = C5465i.m32148a(str2);
            if (value.has(m32148a)) {
                return value.getJSONObject(m32148a);
            }
            String m33714a = m33714a(str2);
            if (m33714a == null) {
                return null;
            }
            String m32148a2 = C5465i.m32148a(m33714a);
            if (!value.has(m32148a2)) {
                return null;
            }
            return value.getJSONObject(m32148a2);
        } catch (Throwable th) {
            C5478q.m32108c("GeckoHub", "getFileInfoInManifest error", th);
            return null;
        }
    }

    /* renamed from: b */
    private InputStream m33710b(C5300a c5300a, String str, String str2) throws Exception {
        String str3 = str + File.separator + str2;
        if (!c5300a.m32627b(str3)) {
            return null;
        }
        return c5300a.m32628a(str3);
    }

    /* renamed from: c */
    private String m33709c() {
        String[] m34856x = C4600n.m34805h().m34856x();
        StringBuilder sb = new StringBuilder("GeckoLog:get gecko hosts from settings ");
        sb.append(m34856x == null ? 0 : m34856x.length);
        C5478q.m32112b("GeckoHub", sb.toString());
        String[] strArr = m34856x;
        if (m34856x == null) {
            strArr = f17801a;
        }
        String str = strArr[new Random().nextInt(strArr.length)];
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = f17801a[new Random().nextInt(f17801a.length)];
        }
        C5478q.m32112b("GeckoHub", "GeckoLog:random host ".concat(String.valueOf(str2)));
        return str2;
    }

    /* renamed from: a */
    public WebResourceResponse m33715a(C5300a c5300a, String str, String str2) {
        String optString;
        InputStream m33710b;
        if (c5300a == null) {
            return null;
        }
        try {
            JSONObject m33713a = m33713a(str, str2);
            if (m33713a == null || (optString = m33713a.optString("fileName", null)) == null) {
                return null;
            }
            JSONObject jSONObject = m33713a.has("respHeader") ? m33713a.getJSONObject("respHeader") : null;
            if (jSONObject == null || (m33710b = m33710b(c5300a, str, optString)) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return C5301a.m32626a(m33710b, hashMap);
        } catch (Throwable th) {
            C5478q.m32108c("GeckoHub", "findRes error", th);
            return null;
        }
    }

    /* renamed from: a */
    public void m33716a(C5300a c5300a) {
        if (c5300a != null) {
            try {
                c5300a.m32629a();
            } catch (Throwable th) {
                C5478q.m32108c("GeckoHub", "releaseGeckoResLoader error", th);
            }
        }
    }

    /* renamed from: a */
    public void m33712a(final Map<String, C4557i> map) {
        String m34846a = C4590i.m34846a(C4600n.m34815a());
        if (TextUtils.isEmpty(m34846a)) {
            C5478q.m32112b("GeckoHub", "no did so don't preload");
            return;
        }
        C5302a m32623a = C5302a.m32623a(new C5320b.C5323a(C4600n.m34815a()).m32554b("a1a15b782e3ee8a25247561a91a99835").m32558a("a1a15b782e3ee8a25247561a91a99835").m32566a(38L).m32556b(m34846a).m32561a("9999999.0.0").m32565a(new C5307a.C5309a().m32602a(20).m32600a(AbstractC5310b.f18769c).m32603a()).m32562a(this.f17802b).m32559a(false).m32552c(m33709c()).m32555b(C5052e.m33163a()).m32560a(C5052e.m33163a()).m32563a(new AbstractC5397a() { // from class: com.bytedance.sdk.openadsdk.e.a.1
            @Override // com.bytedance.sdk.openadsdk.preload.geckox.statistic.AbstractC5397a
            /* renamed from: a */
            public void mo32403a(String str, JSONObject jSONObject) {
                if ("geckosdk_update_stats".equals(str)) {
                    C4557i c4557i = (C4557i) map.get(jSONObject.optString(AppsFlyerProperties.CHANNEL));
                    if (c4557i == null) {
                        return;
                    }
                    C4811e.C4812a.m33858a(str, jSONObject, c4557i);
                }
            }
        }).m32567a());
        HashMap hashMap = new HashMap();
        LinkedList linkedList = new LinkedList();
        for (String str : map.keySet()) {
            linkedList.add(new CheckRequestBodyModel.TargetChannel(str));
        }
        hashMap.put("a1a15b782e3ee8a25247561a91a99835", linkedList);
        m32623a.m32619a(hashMap);
    }

    /* renamed from: b */
    public C5300a m33711b() {
        try {
            return new C5300a(C4600n.m34815a(), "a1a15b782e3ee8a25247561a91a99835", this.f17802b);
        } catch (Throwable th) {
            C5478q.m32108c("GeckoHub", "getGeckoResLoader error", th);
            return null;
        }
    }
}
