package com.bytedance.sdk.openadsdk.p164d;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/q.class */
public class C4833q {

    /* renamed from: a */
    private String f17732a;

    /* renamed from: b */
    private C4557i f17733b;

    /* renamed from: c */
    private Boolean f17734c;

    /* renamed from: d */
    private Boolean f17735d;

    /* renamed from: e */
    private Boolean f17736e;

    /* renamed from: f */
    private JSONObject f17737f;

    /* renamed from: g */
    private JSONArray f17738g;

    /* renamed from: h */
    private JSONArray f17739h;

    /* renamed from: i */
    private final Object f17740i;

    protected C4833q() {
        this.f17732a = "embeded_ad";
        this.f17734c = Boolean.FALSE;
        this.f17735d = Boolean.FALSE;
        this.f17736e = Boolean.FALSE;
        this.f17740i = new Object();
    }

    public C4833q(int i, String str, C4557i c4557i) {
        this.f17732a = "embeded_ad";
        this.f17734c = Boolean.FALSE;
        this.f17735d = Boolean.FALSE;
        this.f17736e = Boolean.FALSE;
        this.f17740i = new Object();
        this.f17732a = str;
        this.f17733b = c4557i;
        this.f17737f = new JSONObject();
        this.f17738g = new JSONArray();
        this.f17739h = new JSONArray();
        m33764a(this.f17737f, "webview_source", Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m33766a(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || jSONArray.length() >= 10) {
            return;
        }
        try {
            jSONArray.put(obj);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m33764a(JSONObject jSONObject, String str, Object obj) {
        m33763a(jSONObject, str, obj, true);
    }

    /* renamed from: a */
    public void m33763a(JSONObject jSONObject, String str, Object obj, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception e) {
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    /* renamed from: j */
    public boolean m33744j() {
        if (!this.f17736e.booleanValue()) {
            return this.f17735d.booleanValue() && this.f17734c.booleanValue();
        }
        return true;
    }

    /* renamed from: a */
    public void m33776a() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onRenderStart") { // from class: com.bytedance.sdk.openadsdk.d.q.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "render_start", jSONObject);
                }
            }
        });
    }

    /* renamed from: a */
    public void m33775a(final int i) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onRenderError") { // from class: com.bytedance.sdk.openadsdk.d.q.10
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    C4833q.this.m33774a(i, (String) null);
                }
            }
        });
    }

    /* renamed from: a */
    public void m33774a(final int i, final String str) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onRenderError") { // from class: com.bytedance.sdk.openadsdk.d.q.11
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q.this.m33764a(jSONObject, "code", Integer.valueOf(i));
                    String str2 = str;
                    if (str2 != null) {
                        C4833q.this.m33764a(jSONObject, "msg", str2);
                    }
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "render_error", jSONObject);
                }
            }
        });
    }

    /* renamed from: a */
    public void m33768a(final String str) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewJsbStart") { // from class: com.bytedance.sdk.openadsdk.d.q.5
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q.this.m33764a(jSONObject, "jsb", str);
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "webview_jsb_start", jSONObject);
                }
            }
        });
    }

    /* renamed from: a */
    public void m33767a(final String str, final long j, final long j2, final int i) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onInterceptHtml") { // from class: com.bytedance.sdk.openadsdk.d.q.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    if (!TextUtils.isEmpty(str) && j2 >= j) {
                        JSONObject jSONObject = new JSONObject();
                        C4833q.this.m33764a(jSONObject, "start_ts", Long.valueOf(j));
                        C4833q.this.m33764a(jSONObject, "end_ts", Long.valueOf(j2));
                        C4833q.this.m33764a(jSONObject, "intercept_type", Integer.valueOf(i));
                        C4833q.this.m33764a(jSONObject, "type", "intercept_html");
                        C4833q.this.m33764a(jSONObject, "url", str);
                        C4833q.this.m33764a(jSONObject, VastIconXmlManager.DURATION, Long.valueOf(j2 - j));
                        C4833q c4833q = C4833q.this;
                        c4833q.m33766a(c4833q.f17739h, jSONObject);
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public void m33765a(final JSONObject jSONObject) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewLoadError") { // from class: com.bytedance.sdk.openadsdk.d.q.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    JSONObject jSONObject2 = jSONObject;
                    JSONObject jSONObject3 = jSONObject2;
                    if (jSONObject2 == null) {
                        jSONObject3 = new JSONObject();
                    }
                    C4833q.this.m33764a(jSONObject3, "ts", Long.valueOf(System.currentTimeMillis()));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "webview_load_error", jSONObject3);
                }
            }
        });
    }

    /* renamed from: a */
    public void m33762a(boolean z) {
        this.f17736e = Boolean.valueOf(z);
    }

    /* renamed from: b */
    public void m33761b() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onRenderSuc") { // from class: com.bytedance.sdk.openadsdk.d.q.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "render_success", jSONObject);
                }
            }
        });
    }

    /* renamed from: b */
    public void m33759b(final String str) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewJsbEnd") { // from class: com.bytedance.sdk.openadsdk.d.q.6
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q.this.m33764a(jSONObject, "jsb", str);
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "webview_jsb_end", jSONObject);
                }
            }
        });
    }

    /* renamed from: b */
    public void m33758b(final String str, final long j, final long j2, final int i) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onInterceptJs") { // from class: com.bytedance.sdk.openadsdk.d.q.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    if (!TextUtils.isEmpty(str) && j2 >= j) {
                        JSONObject jSONObject = new JSONObject();
                        C4833q.this.m33764a(jSONObject, "start_ts", Long.valueOf(j));
                        C4833q.this.m33764a(jSONObject, "end_ts", Long.valueOf(j2));
                        C4833q.this.m33764a(jSONObject, "intercept_type", Integer.valueOf(i));
                        C4833q.this.m33764a(jSONObject, "type", "intercept_js");
                        C4833q.this.m33764a(jSONObject, "url", str);
                        C4833q.this.m33764a(jSONObject, VastIconXmlManager.DURATION, Long.valueOf(j2 - j));
                        C4833q c4833q = C4833q.this;
                        c4833q.m33766a(c4833q.f17739h, jSONObject);
                    }
                }
            }
        });
    }

    /* renamed from: b */
    public void m33757b(final JSONObject jSONObject) {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_addExtraH5JsonObject") { // from class: com.bytedance.sdk.openadsdk.d.q.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                synchronized (C4833q.this.f17740i) {
                    if (C4833q.this.f17737f == null || (jSONObject2 = jSONObject) == null) {
                        return;
                    }
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        C4833q c4833q = C4833q.this;
                        c4833q.m33764a(c4833q.f17737f, next, jSONObject.opt(next));
                    }
                    C4833q.this.f17735d = Boolean.TRUE;
                    C4833q.this.m33745i();
                }
            }
        });
    }

    /* renamed from: c */
    public void m33756c() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onNativeRenderStart") { // from class: com.bytedance.sdk.openadsdk.d.q.12
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "native_render_start", jSONObject);
                }
            }
        });
    }

    /* renamed from: d */
    public void m33754d() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onNativeRenderEnd") { // from class: com.bytedance.sdk.openadsdk.d.q.13
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "native_render_end", jSONObject);
                }
            }
        });
    }

    /* renamed from: e */
    public void m33752e() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewLoadStart") { // from class: com.bytedance.sdk.openadsdk.d.q.14
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33763a(c4833q.f17737f, "webview_load_start", (Object) jSONObject, false);
                }
            }
        });
    }

    /* renamed from: f */
    public void m33750f() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewLoadSuc") { // from class: com.bytedance.sdk.openadsdk.d.q.15
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    C4833q.this.m33764a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    C4833q c4833q = C4833q.this;
                    c4833q.m33764a(c4833q.f17737f, "webview_load_success", jSONObject);
                }
            }
        });
    }

    /* renamed from: g */
    public void m33748g() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_onWebviewLoadError") { // from class: com.bytedance.sdk.openadsdk.d.q.16
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    C4833q.this.m33765a((JSONObject) null);
                }
            }
        });
    }

    /* renamed from: h */
    public void m33746h() {
        this.f17734c = Boolean.TRUE;
    }

    /* renamed from: i */
    public void m33745i() {
        C5052e.m33163a().execute(new AbstractRunnableC5055g("_trySendTrackInfo") { // from class: com.bytedance.sdk.openadsdk.d.q.9
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00cc -> B:20:0x0071). Please submit an issue!!! */
            @Override // java.lang.Runnable
            public void run() {
                synchronized (C4833q.this.f17740i) {
                    if (!C4833q.this.m33744j()) {
                        return;
                    }
                    if (C4833q.this.f17738g != null && C4833q.this.f17738g.length() != 0) {
                        try {
                            C4833q.this.f17737f.put("native_switchBackgroundAndForeground", C4833q.this.f17738g);
                        } catch (Exception e) {
                        }
                    }
                    if (C4833q.this.f17739h != null && C4833q.this.f17739h.length() != 0) {
                        try {
                            C4833q.this.f17737f.put("intercept_source", C4833q.this.f17739h);
                        } catch (Exception e2) {
                        }
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put("webview_time_track", C4833q.this.f17737f);
                    if (C4570g.m35020b().m34989s() && C4833q.this.f17737f != null) {
                        C5478q.m32112b("WebviewTimeTrack", C4833q.this.f17737f.toString());
                    }
                    C4811e.m33862e(C4600n.m34815a(), C4833q.this.f17733b, C4833q.this.f17732a, "webview_time_track", hashMap);
                }
            }
        });
    }
}
