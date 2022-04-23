package com.bytedance.sdk.openadsdk.d;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private String f9438a;

    /* renamed from: b  reason: collision with root package name */
    private i f9439b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f9440c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f9441d;
    private Boolean e;
    private JSONObject f;
    private JSONArray g;
    private JSONArray h;
    private final Object i;

    protected q() {
        this.f9438a = "embeded_ad";
        this.f9440c = Boolean.FALSE;
        this.f9441d = Boolean.FALSE;
        this.e = Boolean.FALSE;
        this.i = new Object();
    }

    public q(int i, String str, i iVar) {
        this.f9438a = "embeded_ad";
        this.f9440c = Boolean.FALSE;
        this.f9441d = Boolean.FALSE;
        this.e = Boolean.FALSE;
        this.i = new Object();
        this.f9438a = str;
        this.f9439b = iVar;
        this.f = new JSONObject();
        this.g = new JSONArray();
        this.h = new JSONArray();
        a(this.f, "webview_source", Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONArray jSONArray, Object obj) {
        if (jSONArray != null && jSONArray.length() < 10) {
            try {
                jSONArray.put(obj);
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, String str, Object obj) {
        a(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, String str, Object obj, boolean z) {
        if (jSONObject != null && !TextUtils.isEmpty(str)) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        if (!this.e.booleanValue()) {
            return this.f9441d.booleanValue() && this.f9440c.booleanValue();
        }
        return true;
    }

    public void a() {
        e.a().execute(new g("_onRenderStart") { // from class: com.bytedance.sdk.openadsdk.d.q.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "render_start", jSONObject);
                }
            }
        });
    }

    public void a(final int i) {
        e.a().execute(new g("_onRenderError") { // from class: com.bytedance.sdk.openadsdk.d.q.10
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    q.this.a(i, (String) null);
                }
            }
        });
    }

    public void a(final int i, final String str) {
        e.a().execute(new g("_onRenderError") { // from class: com.bytedance.sdk.openadsdk.d.q.11
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q.this.a(jSONObject, "code", Integer.valueOf(i));
                    String str2 = str;
                    if (str2 != null) {
                        q.this.a(jSONObject, "msg", str2);
                    }
                    q qVar = q.this;
                    qVar.a(qVar.f, "render_error", jSONObject);
                }
            }
        });
    }

    public void a(final String str) {
        e.a().execute(new g("_onWebviewJsbStart") { // from class: com.bytedance.sdk.openadsdk.d.q.5
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    if (!TextUtils.isEmpty(str)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        JSONObject jSONObject = new JSONObject();
                        q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                        q.this.a(jSONObject, "jsb", str);
                        q qVar = q.this;
                        qVar.a(qVar.f, "webview_jsb_start", jSONObject);
                    }
                }
            }
        });
    }

    public void a(final String str, final long j, final long j2, final int i) {
        e.a().execute(new g("_onInterceptHtml") { // from class: com.bytedance.sdk.openadsdk.d.q.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    if (!TextUtils.isEmpty(str) && j2 >= j) {
                        JSONObject jSONObject = new JSONObject();
                        q.this.a(jSONObject, "start_ts", Long.valueOf(j));
                        q.this.a(jSONObject, "end_ts", Long.valueOf(j2));
                        q.this.a(jSONObject, "intercept_type", Integer.valueOf(i));
                        q.this.a(jSONObject, "type", "intercept_html");
                        q.this.a(jSONObject, "url", str);
                        q.this.a(jSONObject, VastIconXmlManager.DURATION, Long.valueOf(j2 - j));
                        q qVar = q.this;
                        qVar.a(qVar.h, jSONObject);
                    }
                }
            }
        });
    }

    public void a(final JSONObject jSONObject) {
        e.a().execute(new g("_onWebviewLoadError") { // from class: com.bytedance.sdk.openadsdk.d.q.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    JSONObject jSONObject2 = jSONObject;
                    JSONObject jSONObject3 = jSONObject2;
                    if (jSONObject2 == null) {
                        jSONObject3 = new JSONObject();
                    }
                    q.this.a(jSONObject3, "ts", Long.valueOf(System.currentTimeMillis()));
                    q qVar = q.this;
                    qVar.a(qVar.f, "webview_load_error", jSONObject3);
                }
            }
        });
    }

    public void a(boolean z) {
        this.e = Boolean.valueOf(z);
    }

    public void b() {
        e.a().execute(new g("_onRenderSuc") { // from class: com.bytedance.sdk.openadsdk.d.q.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "render_success", jSONObject);
                }
            }
        });
    }

    public void b(final String str) {
        e.a().execute(new g("_onWebviewJsbEnd") { // from class: com.bytedance.sdk.openadsdk.d.q.6
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    if (!TextUtils.isEmpty(str)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        JSONObject jSONObject = new JSONObject();
                        q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                        q.this.a(jSONObject, "jsb", str);
                        q qVar = q.this;
                        qVar.a(qVar.f, "webview_jsb_end", jSONObject);
                    }
                }
            }
        });
    }

    public void b(final String str, final long j, final long j2, final int i) {
        e.a().execute(new g("_onInterceptJs") { // from class: com.bytedance.sdk.openadsdk.d.q.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    if (!TextUtils.isEmpty(str) && j2 >= j) {
                        JSONObject jSONObject = new JSONObject();
                        q.this.a(jSONObject, "start_ts", Long.valueOf(j));
                        q.this.a(jSONObject, "end_ts", Long.valueOf(j2));
                        q.this.a(jSONObject, "intercept_type", Integer.valueOf(i));
                        q.this.a(jSONObject, "type", "intercept_js");
                        q.this.a(jSONObject, "url", str);
                        q.this.a(jSONObject, VastIconXmlManager.DURATION, Long.valueOf(j2 - j));
                        q qVar = q.this;
                        qVar.a(qVar.h, jSONObject);
                    }
                }
            }
        });
    }

    public void b(final JSONObject jSONObject) {
        e.a().execute(new g("_addExtraH5JsonObject") { // from class: com.bytedance.sdk.openadsdk.d.q.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                synchronized (q.this.i) {
                    if (q.this.f != null && (jSONObject2 = jSONObject) != null) {
                        Iterator<String> keys = jSONObject2.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            q qVar = q.this;
                            qVar.a(qVar.f, next, jSONObject.opt(next));
                        }
                        q.this.f9441d = Boolean.TRUE;
                        q.this.i();
                    }
                }
            }
        });
    }

    public void c() {
        e.a().execute(new g("_onNativeRenderStart") { // from class: com.bytedance.sdk.openadsdk.d.q.12
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "native_render_start", jSONObject);
                }
            }
        });
    }

    public void d() {
        e.a().execute(new g("_onNativeRenderEnd") { // from class: com.bytedance.sdk.openadsdk.d.q.13
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "native_render_end", jSONObject);
                }
            }
        });
    }

    public void e() {
        e.a().execute(new g("_onWebviewLoadStart") { // from class: com.bytedance.sdk.openadsdk.d.q.14
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "webview_load_start", (Object) jSONObject, false);
                }
            }
        });
    }

    public void f() {
        e.a().execute(new g("_onWebviewLoadSuc") { // from class: com.bytedance.sdk.openadsdk.d.q.15
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    q.this.a(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    q qVar = q.this;
                    qVar.a(qVar.f, "webview_load_success", jSONObject);
                }
            }
        });
    }

    public void g() {
        e.a().execute(new g("_onWebviewLoadError") { // from class: com.bytedance.sdk.openadsdk.d.q.16
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    q.this.a((JSONObject) null);
                }
            }
        });
    }

    public void h() {
        this.f9440c = Boolean.TRUE;
    }

    public void i() {
        e.a().execute(new g("_trySendTrackInfo") { // from class: com.bytedance.sdk.openadsdk.d.q.9
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00cc -> B:20:0x0071). Please submit an issue!!! */
            @Override // java.lang.Runnable
            public void run() {
                synchronized (q.this.i) {
                    if (q.this.j()) {
                        if (!(q.this.g == null || q.this.g.length() == 0)) {
                            try {
                                q.this.f.put("native_switchBackgroundAndForeground", q.this.g);
                            } catch (Exception e) {
                            }
                        }
                        if (!(q.this.h == null || q.this.h.length() == 0)) {
                            try {
                                q.this.f.put("intercept_source", q.this.h);
                            } catch (Exception e2) {
                            }
                        }
                        HashMap hashMap = new HashMap();
                        hashMap.put("webview_time_track", q.this.f);
                        if (com.bytedance.sdk.openadsdk.core.g.b().s() && q.this.f != null) {
                            com.bytedance.sdk.openadsdk.utils.q.b("WebviewTimeTrack", q.this.f.toString());
                        }
                        e.e(n.a(), q.this.f9439b, q.this.f9438a, "webview_time_track", hashMap);
                    }
                }
            }
        });
    }
}
