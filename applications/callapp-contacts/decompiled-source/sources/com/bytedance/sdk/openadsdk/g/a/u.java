package com.bytedance.sdk.openadsdk.g.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.g.a.k;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u.class */
class u {

    /* renamed from: b  reason: collision with root package name */
    private final LruCache<String, c> f9559b;

    /* renamed from: c  reason: collision with root package name */
    private final k.a f9560c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9561d;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, List<b>> f9558a = new ConcurrentHashMap();
    private volatile boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$a.class */
    public static class a extends IllegalStateException {
        a(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        Pattern f9564a;

        /* renamed from: b  reason: collision with root package name */
        w f9565b;

        /* renamed from: c  reason: collision with root package name */
        List<String> f9566c;

        /* renamed from: d  reason: collision with root package name */
        List<String> f9567d;

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        w f9568a = w.PUBLIC;

        /* renamed from: b  reason: collision with root package name */
        Set<String> f9569b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        Set<String> f9570c = new HashSet();

        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(String str, int i, k.a aVar, final Executor executor, JSONObject jSONObject) {
        this.f9561d = str;
        if (i <= 0) {
            this.f9559b = new LruCache<>(16);
        } else {
            this.f9559b = new LruCache<>(i);
        }
        this.f9560c = aVar;
        if (jSONObject == null) {
            aVar.a(d(str), new k.a.AbstractC0173a() { // from class: com.bytedance.sdk.openadsdk.g.a.u.1
            });
        } else {
            a(jSONObject);
        }
    }

    private c a(String str) throws a {
        c cVar = new c();
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String authority = parse.getAuthority();
        String b2 = b(authority);
        if (TextUtils.isEmpty(scheme) || TextUtils.isEmpty(authority) || b2 == null) {
            cVar.f9568a = w.PUBLIC;
            return cVar;
        }
        List<b> c2 = c(b2);
        if (c2 == null) {
            return cVar;
        }
        for (b bVar : c2) {
            if (bVar.f9564a.matcher(str).find()) {
                if (bVar.f9565b.compareTo(cVar.f9568a) >= 0) {
                    cVar.f9568a = bVar.f9565b;
                }
                cVar.f9569b.addAll(bVar.f9566c);
                cVar.f9570c.addAll(bVar.f9567d);
            }
        }
        this.f9559b.put(str, cVar);
        return cVar;
    }

    private static String b(String str) {
        String[] split;
        int length;
        if (str == null || (length = (split = str.split("[.]")).length) < 2) {
            return null;
        }
        if (length == 2) {
            return str;
        }
        return split[length - 2] + "." + split[length - 1];
    }

    private void b(JSONObject jSONObject) {
        this.f9558a.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.VAST_TRACKER_CONTENT);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.f9558a.put(next, linkedList);
                for (int i = 0; i < jSONArray.length(); i++) {
                    linkedList.add(c(jSONArray.getJSONObject(i)));
                }
            }
        } catch (JSONException e) {
            i.b("Parse configurations failed, response: " + jSONObject.toString(), e);
        }
        this.e = true;
    }

    private static b c(JSONObject jSONObject) throws JSONException {
        b bVar = new b();
        bVar.f9564a = Pattern.compile(jSONObject.getString("pattern"));
        bVar.f9565b = w.a(jSONObject.getString("group"));
        bVar.f9566c = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("included_methods");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                bVar.f9566c.add(optJSONArray.getString(i));
            }
        }
        bVar.f9567d = new ArrayList();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                bVar.f9567d.add(optJSONArray2.getString(i2));
            }
        }
        return bVar;
    }

    private List<b> c(String str) throws a {
        if (this.e) {
            return this.f9558a.get(str);
        }
        throw new a("Permission config is outdated!");
    }

    private static String d(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig.".concat(String.valueOf(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.openadsdk.g.a.u.c a(java.lang.String r5, java.util.Set<java.lang.String> r6) {
        /*
            r4 = this;
            r0 = r5
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.getScheme()
            r8 = r0
            r0 = r7
            java.lang.String r0 = r0.getAuthority()
            r5 = r0
            r0 = r7
            java.lang.String r0 = r0.getPath()
            r7 = r0
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r1 = r8
            android.net.Uri$Builder r0 = r0.scheme(r1)
            r1 = r5
            android.net.Uri$Builder r0 = r0.authority(r1)
            r1 = r7
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r0 = r0.toString()
            r8 = r0
            com.bytedance.sdk.openadsdk.g.a.u$c r0 = new com.bytedance.sdk.openadsdk.g.a.u$c
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x009c
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0044
            goto L_0x009c
        L_0x0044:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x004c:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0082
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0079
            r0 = r5
            java.lang.String r1 = "."
            r2 = r6
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L_0x004c
        L_0x0079:
            r0 = r7
            com.bytedance.sdk.openadsdk.g.a.w r1 = com.bytedance.sdk.openadsdk.g.a.w.PRIVATE
            r0.f9568a = r1
            r0 = r7
            return r0
        L_0x0082:
            r0 = r4
            android.util.LruCache<java.lang.String, com.bytedance.sdk.openadsdk.g.a.u$c> r0 = r0.f9559b
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            com.bytedance.sdk.openadsdk.g.a.u$c r0 = (com.bytedance.sdk.openadsdk.g.a.u.c) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0095
            r0 = r5
            return r0
        L_0x0095:
            r0 = r4
            r1 = r8
            com.bytedance.sdk.openadsdk.g.a.u$c r0 = r0.a(r1)
            return r0
        L_0x009c:
            r0 = r7
            com.bytedance.sdk.openadsdk.g.a.w r1 = com.bytedance.sdk.openadsdk.g.a.w.PUBLIC
            r0.f9568a = r1
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.g.a.u.a(java.lang.String, java.util.Set):com.bytedance.sdk.openadsdk.g.a.u$c");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        b(jSONObject);
        this.f9560c.a(d(this.f9561d), jSONObject.toString());
    }
}
