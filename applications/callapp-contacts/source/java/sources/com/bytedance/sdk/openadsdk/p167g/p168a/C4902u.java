package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4886k;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.g.a.u */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u.class */
public class C4902u {

    /* renamed from: b */
    private final LruCache<String, C4906c> f17897b;

    /* renamed from: c */
    private final AbstractC4886k.AbstractC4887a f17898c;

    /* renamed from: d */
    private final String f17899d;

    /* renamed from: a */
    private final Map<String, List<C4905b>> f17896a = new ConcurrentHashMap();

    /* renamed from: e */
    private volatile boolean f17900e = false;

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.u$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$a.class */
    public static class C4904a extends IllegalStateException {
        C4904a(String str) {
            super(str);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.u$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$b.class */
    public static final class C4905b {

        /* renamed from: a */
        Pattern f17903a;

        /* renamed from: b */
        EnumC4909w f17904b;

        /* renamed from: c */
        List<String> f17905c;

        /* renamed from: d */
        List<String> f17906d;

        private C4905b() {
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.u$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/u$c.class */
    public static final class C4906c {

        /* renamed from: a */
        EnumC4909w f17907a = EnumC4909w.PUBLIC;

        /* renamed from: b */
        Set<String> f17908b = new HashSet();

        /* renamed from: c */
        Set<String> f17909c = new HashSet();

        C4906c() {
        }
    }

    public C4902u(String str, int i, AbstractC4886k.AbstractC4887a abstractC4887a, final Executor executor, JSONObject jSONObject) {
        this.f17899d = str;
        if (i <= 0) {
            this.f17897b = new LruCache<>(16);
        } else {
            this.f17897b = new LruCache<>(i);
        }
        this.f17898c = abstractC4887a;
        if (jSONObject == null) {
            abstractC4887a.m33642a(m33596d(str), new AbstractC4886k.AbstractC4887a.AbstractC4888a() { // from class: com.bytedance.sdk.openadsdk.g.a.u.1
            });
        } else {
            m33601a(jSONObject);
        }
    }

    /* renamed from: a */
    private C4906c m33603a(String str) throws C4904a {
        C4906c c4906c = new C4906c();
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String authority = parse.getAuthority();
        String m33600b = m33600b(authority);
        if (TextUtils.isEmpty(scheme) || TextUtils.isEmpty(authority) || m33600b == null) {
            c4906c.f17907a = EnumC4909w.PUBLIC;
            return c4906c;
        }
        List<C4905b> m33598c = m33598c(m33600b);
        if (m33598c == null) {
            return c4906c;
        }
        for (C4905b c4905b : m33598c) {
            if (c4905b.f17903a.matcher(str).find()) {
                if (c4905b.f17904b.compareTo(c4906c.f17907a) >= 0) {
                    c4906c.f17907a = c4905b.f17904b;
                }
                c4906c.f17908b.addAll(c4905b.f17905c);
                c4906c.f17909c.addAll(c4905b.f17906d);
            }
        }
        this.f17897b.put(str, c4906c);
        return c4906c;
    }

    /* renamed from: b */
    private static String m33600b(String str) {
        String[] split;
        int length;
        if (str != null && (length = (split = str.split("[.]")).length) >= 2) {
            if (length == 2) {
                return str;
            }
            return split[length - 2] + "." + split[length - 1];
        }
        return null;
    }

    /* renamed from: b */
    private void m33599b(JSONObject jSONObject) {
        this.f17896a.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.VAST_TRACKER_CONTENT);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.f17896a.put(next, linkedList);
                for (int i = 0; i < jSONArray.length(); i++) {
                    linkedList.add(m33597c(jSONArray.getJSONObject(i)));
                }
            }
        } catch (JSONException e) {
            C4884i.m33653b("Parse configurations failed, response: " + jSONObject.toString(), e);
        }
        this.f17900e = true;
    }

    /* renamed from: c */
    private static C4905b m33597c(JSONObject jSONObject) throws JSONException {
        C4905b c4905b = new C4905b();
        c4905b.f17903a = Pattern.compile(jSONObject.getString("pattern"));
        c4905b.f17904b = EnumC4909w.m33592a(jSONObject.getString("group"));
        c4905b.f17905c = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("included_methods");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                c4905b.f17905c.add(optJSONArray.getString(i));
            }
        }
        c4905b.f17906d = new ArrayList();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                c4905b.f17906d.add(optJSONArray2.getString(i2));
            }
        }
        return c4905b;
    }

    /* renamed from: c */
    private List<C4905b> m33598c(String str) throws C4904a {
        if (this.f17900e) {
            return this.f17896a.get(str);
        }
        throw new C4904a("Permission config is outdated!");
    }

    /* renamed from: d */
    private static String m33596d(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig.".concat(String.valueOf(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0056  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.openadsdk.p167g.p168a.C4902u.C4906c m33602a(java.lang.String r5, java.util.Set<java.lang.String> r6) {
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
            if (r0 == 0) goto L9c
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L44
            goto L9c
        L44:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L4c:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L82
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L79
            r0 = r5
            java.lang.String r1 = "."
            r2 = r6
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L4c
        L79:
            r0 = r7
            com.bytedance.sdk.openadsdk.g.a.w r1 = com.bytedance.sdk.openadsdk.p167g.p168a.EnumC4909w.PRIVATE
            r0.f17907a = r1
            r0 = r7
            return r0
        L82:
            r0 = r4
            android.util.LruCache<java.lang.String, com.bytedance.sdk.openadsdk.g.a.u$c> r0 = r0.f17897b
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            com.bytedance.sdk.openadsdk.g.a.u$c r0 = (com.bytedance.sdk.openadsdk.p167g.p168a.C4902u.C4906c) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L95
            r0 = r5
            return r0
        L95:
            r0 = r4
            r1 = r8
            com.bytedance.sdk.openadsdk.g.a.u$c r0 = r0.m33603a(r1)
            return r0
        L9c:
            r0 = r7
            com.bytedance.sdk.openadsdk.g.a.w r1 = com.bytedance.sdk.openadsdk.p167g.p168a.EnumC4909w.PUBLIC
            r0.f17907a = r1
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p167g.p168a.C4902u.m33602a(java.lang.String, java.util.Set):com.bytedance.sdk.openadsdk.g.a.u$c");
    }

    /* renamed from: a */
    public void m33601a(JSONObject jSONObject) {
        m33599b(jSONObject);
        this.f17898c.m33641a(m33596d(this.f17899d), jSONObject.toString());
    }
}
