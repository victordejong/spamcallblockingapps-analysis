package com.bytedance.sdk.openadsdk.e;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.preload.geckox.a.a.a;
import com.bytedance.sdk.openadsdk.preload.geckox.b;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.CheckRequestBodyModel;
import com.bytedance.sdk.openadsdk.utils.i;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.io.InputStream;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/e/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f9496a = {"gecko-pangle-sg.byteoversea.com"};

    /* renamed from: b  reason: collision with root package name */
    private File f9497b;

    /* renamed from: c  reason: collision with root package name */
    private Map.Entry<String, JSONObject> f9498c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/e/a$a.class */
    public static class C0172a {

        /* renamed from: a  reason: collision with root package name */
        private static a f9501a = new a();
    }

    private a() {
        this.f9497b = new File(n.a().getCacheDir() + File.separator + "gecko");
        if (g.b().s()) {
            b.a();
        }
    }

    public static a a() {
        return C0172a.f9501a;
    }

    private String a(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf("?");
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    private JSONObject a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            Map.Entry<String, JSONObject> entry = this.f9498c;
            if (entry == null || !str.equals(entry.getKey())) {
                q.b("GeckoHub", "refresh cache manifest");
                com.bytedance.sdk.openadsdk.preload.falconx.a.a aVar = new com.bytedance.sdk.openadsdk.preload.falconx.a.a(n.a(), "a1a15b782e3ee8a25247561a91a99835", this.f9497b);
                String a2 = com.bytedance.sdk.openadsdk.k.g.a.a(aVar.a(str + "/manifest.json"));
                if (TextUtils.isEmpty(a2)) {
                    q.e("GeckoHub", "getFileInfoInManifest error null");
                    return null;
                }
                this.f9498c = new AbstractMap.SimpleEntry(str, new JSONObject(a2));
            }
            JSONObject value = this.f9498c.getValue();
            String a3 = i.a(str2);
            if (value.has(a3)) {
                return value.getJSONObject(a3);
            }
            String a4 = a(str2);
            if (a4 == null) {
                return null;
            }
            String a5 = i.a(a4);
            if (value.has(a5)) {
                return value.getJSONObject(a5);
            }
            return null;
        } catch (Throwable th) {
            q.c("GeckoHub", "getFileInfoInManifest error", th);
            return null;
        }
    }

    private InputStream b(com.bytedance.sdk.openadsdk.preload.falconx.a.a aVar, String str, String str2) throws Exception {
        String str3 = str + File.separator + str2;
        if (!aVar.b(str3)) {
            return null;
        }
        return aVar.a(str3);
    }

    private String c() {
        String[] x = n.h().x();
        StringBuilder sb = new StringBuilder("GeckoLog:get gecko hosts from settings ");
        sb.append(x == null ? 0 : x.length);
        q.b("GeckoHub", sb.toString());
        String[] strArr = x;
        if (x == null) {
            strArr = f9496a;
        }
        String str = strArr[new Random().nextInt(strArr.length)];
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = f9496a[new Random().nextInt(f9496a.length)];
        }
        q.b("GeckoHub", "GeckoLog:random host ".concat(String.valueOf(str2)));
        return str2;
    }

    public WebResourceResponse a(com.bytedance.sdk.openadsdk.preload.falconx.a.a aVar, String str, String str2) {
        String optString;
        InputStream b2;
        if (aVar == null) {
            return null;
        }
        try {
            JSONObject a2 = a(str, str2);
            if (a2 == null || (optString = a2.optString("fileName", null)) == null) {
                return null;
            }
            JSONObject jSONObject = a2.has("respHeader") ? a2.getJSONObject("respHeader") : null;
            if (jSONObject == null || (b2 = b(aVar, str, optString)) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return com.bytedance.sdk.openadsdk.preload.falconx.b.a.a(b2, hashMap);
        } catch (Throwable th) {
            q.c("GeckoHub", "findRes error", th);
            return null;
        }
    }

    public void a(com.bytedance.sdk.openadsdk.preload.falconx.a.a aVar) {
        if (aVar != null) {
            try {
                aVar.a();
            } catch (Throwable th) {
                q.c("GeckoHub", "releaseGeckoResLoader error", th);
            }
        }
    }

    public void a(final Map<String, com.bytedance.sdk.openadsdk.core.e.i> map) {
        String a2 = com.bytedance.sdk.openadsdk.core.i.a(n.a());
        if (TextUtils.isEmpty(a2)) {
            q.b("GeckoHub", "no did so don't preload");
            return;
        }
        com.bytedance.sdk.openadsdk.preload.geckox.a a3 = com.bytedance.sdk.openadsdk.preload.geckox.a.a(new b.a(n.a()).b("a1a15b782e3ee8a25247561a91a99835").a("a1a15b782e3ee8a25247561a91a99835").a(38L).b(a2).a("9999999.0.0").a(new a.C0186a().a(20).a(com.bytedance.sdk.openadsdk.preload.geckox.a.a.b.f10149c).a()).a(this.f9497b).a(false).c(c()).b(e.a()).a(e.a()).a(new com.bytedance.sdk.openadsdk.preload.geckox.statistic.a() { // from class: com.bytedance.sdk.openadsdk.e.a.1
            @Override // com.bytedance.sdk.openadsdk.preload.geckox.statistic.a
            public void a(String str, JSONObject jSONObject) {
                if ("geckosdk_update_stats".equals(str)) {
                    com.bytedance.sdk.openadsdk.core.e.i iVar = (com.bytedance.sdk.openadsdk.core.e.i) map.get(jSONObject.optString(AppsFlyerProperties.CHANNEL));
                    if (iVar != null) {
                        e.a.a(str, jSONObject, iVar);
                    }
                }
            }
        }).a());
        HashMap hashMap = new HashMap();
        LinkedList linkedList = new LinkedList();
        for (String str : map.keySet()) {
            linkedList.add(new CheckRequestBodyModel.TargetChannel(str));
        }
        hashMap.put("a1a15b782e3ee8a25247561a91a99835", linkedList);
        a3.a(hashMap);
    }

    public com.bytedance.sdk.openadsdk.preload.falconx.a.a b() {
        try {
            return new com.bytedance.sdk.openadsdk.preload.falconx.a.a(n.a(), "a1a15b782e3ee8a25247561a91a99835", this.f9497b);
        } catch (Throwable th) {
            q.c("GeckoHub", "getGeckoResLoader error", th);
            return null;
        }
    }
}
