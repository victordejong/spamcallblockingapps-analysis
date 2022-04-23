package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.k;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.j;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.d.q;
import com.bytedance.sdk.openadsdk.f.b;
import com.bytedance.sdk.openadsdk.f.c;
import com.bytedance.sdk.openadsdk.f.d;
import com.bytedance.sdk.openadsdk.g.a.l;
import com.bytedance.sdk.openadsdk.h.e;
import com.bytedance.sdk.openadsdk.h.h;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.n;
import com.bytedance.sdk.openadsdk.utils.p;
import com.callapp.contacts.recorder.service.RecordService;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/w.class */
public class w implements b, ah.a {
    private static final Map<String, Boolean> f;
    private h A;
    private List<i> C;
    private HashMap<String, h> D;
    private q G;
    private com.bytedance.sdk.openadsdk.g.a.q H;
    private String I;

    /* renamed from: a  reason: collision with root package name */
    protected Map<String, Object> f9259a;

    /* renamed from: b  reason: collision with root package name */
    boolean f9260b;

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<SSWebView> f9262d;
    private WeakReference<Context> g;
    private c h;
    private String i;
    private WeakReference<View> j;
    private String k;
    private int l;
    private String m;
    private int n;
    private i p;
    private j q;
    private g r;
    private JSONObject s;
    private d t;
    private com.bytedance.sdk.openadsdk.h.a u;
    private e v;
    private com.bytedance.sdk.openadsdk.h.d w;
    private JSONObject x;
    private com.bytedance.sdk.openadsdk.core.b.d y;
    private com.bytedance.sdk.openadsdk.h.b z;
    private boolean o = true;
    private boolean B = true;
    private boolean E = false;
    private boolean F = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f9261c = false;
    private ah e = new ah(Looper.getMainLooper(), this);

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/w$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f9276a;

        /* renamed from: b  reason: collision with root package name */
        public String f9277b;

        /* renamed from: c  reason: collision with root package name */
        public String f9278c;

        /* renamed from: d  reason: collision with root package name */
        public JSONObject f9279d;
        public int e;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f = concurrentHashMap;
        concurrentHashMap.put("log_event", Boolean.TRUE);
        concurrentHashMap.put(RecordService.PRIVATE_NUMBER_STRING, Boolean.TRUE);
        concurrentHashMap.put("dispatch_message", Boolean.TRUE);
        concurrentHashMap.put("custom_event", Boolean.TRUE);
        concurrentHashMap.put("log_event_v3", Boolean.TRUE);
    }

    public w(Context context) {
        this.g = new WeakReference<>(context);
    }

    public static JSONArray a(List<i> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(list.get(i).ag());
        }
        return jSONArray;
    }

    private void a(final a aVar, final JSONObject jSONObject) {
        if (aVar != null) {
            try {
                a(aVar.f9279d, new com.bytedance.sdk.openadsdk.h.c() { // from class: com.bytedance.sdk.openadsdk.core.w.5
                    @Override // com.bytedance.sdk.openadsdk.h.c
                    public void a(boolean z, List<i> list) {
                        if (z) {
                            try {
                                jSONObject.put("creatives", w.a(list));
                                w.this.b(aVar.f9277b, jSONObject);
                            } catch (Exception e) {
                            }
                        } else {
                            w.this.b(aVar.f9277b, jSONObject);
                        }
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    private void a(String str, boolean z) {
        if (this.G != null && !TextUtils.isEmpty(str)) {
            if (z) {
                this.G.a(str);
            } else {
                this.G.b(str);
            }
        }
    }

    private void a(JSONObject jSONObject, int i) throws Exception {
        JSONArray jSONArray = new JSONArray();
        for (String str : k()) {
            jSONArray.put(str);
        }
        jSONObject.put("appName", com.bytedance.sdk.openadsdk.a.a.a());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.a.a.e());
        jSONObject.put("aid", com.bytedance.sdk.openadsdk.a.a.b());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.a.a.c());
        jSONObject.put("appVersion", com.bytedance.sdk.openadsdk.a.a.d());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.a.a.f());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.a.a.a(n.a()));
    }

    private boolean a(String str, int i, com.bytedance.sdk.openadsdk.core.e.g gVar) {
        HashMap<String, h> hashMap;
        h hVar;
        if (TextUtils.isEmpty(str) || (hashMap = this.D) == null || (hVar = hashMap.get(str)) == null) {
            return false;
        }
        hVar.a(i, gVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            o(jSONObject2);
        } catch (Exception e) {
        }
    }

    private void c(String str, JSONObject jSONObject) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("__msg_type", "event");
                jSONObject2.put("__event_id", str);
                if (jSONObject != null) {
                    jSONObject2.put("__params", jSONObject);
                }
                o(jSONObject2);
            }
        } catch (Exception e) {
        }
    }

    private void c(JSONObject jSONObject) throws Exception {
        if (!TextUtils.isEmpty(this.i)) {
            jSONObject.put("cid", this.i);
        }
        if (!TextUtils.isEmpty(this.k)) {
            jSONObject.put("log_extra", this.k);
        }
        if (!TextUtils.isEmpty(this.m)) {
            jSONObject.put("download_url", this.m);
        }
        jSONObject.put("dc", TextUtils.isEmpty(n.h().r()) ? n.h().r() : "SG");
        jSONObject.put("language", af.k(n.a()));
    }

    private void d(String str) {
        try {
            String str2 = new String(Base64.decode(str, 2));
            com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", str2);
            JSONArray jSONArray = new JSONArray(str2);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                a aVar = new a();
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        aVar.f9276a = optJSONObject.optString("__msg_type", null);
                        aVar.f9277b = optJSONObject.optString("__callback_id", null);
                        aVar.f9278c = optJSONObject.optString("func");
                        aVar.f9279d = optJSONObject.optJSONObject("params");
                        aVar.e = optJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable th) {
                }
                if (!TextUtils.isEmpty(aVar.f9276a) && !TextUtils.isEmpty(aVar.f9278c)) {
                    Message obtainMessage = this.e.obtainMessage(11);
                    obtainMessage.obj = aVar;
                    this.e.sendMessage(obtainMessage);
                }
            }
        } catch (Exception e) {
            if (com.bytedance.sdk.openadsdk.utils.q.a()) {
                com.bytedance.sdk.openadsdk.utils.q.d("TTAndroidObject", "failed to parse jsbridge msg queue ".concat(String.valueOf(str)));
            } else {
                com.bytedance.sdk.openadsdk.utils.q.d("TTAndroidObject", "failed to parse jsbridge msg queue");
            }
        }
    }

    private void d(JSONObject jSONObject) throws Exception {
        i iVar = this.p;
        if (iVar != null && !TextUtils.isEmpty(iVar.g())) {
            jSONObject.put("playable_style", this.p.g());
        }
    }

    private void e(JSONObject jSONObject) {
        q qVar;
        if (jSONObject != null && (qVar = this.G) != null) {
            qVar.b(jSONObject);
        }
    }

    private boolean e(String str) {
        return TextUtils.isEmpty(str) || !"click_other".equals(str) || e();
    }

    private String f(String str) {
        if (this.q == null) {
            str = af.a(this.l);
        }
        return str;
    }

    private void f(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.h.b bVar = this.z;
        if (bVar != null && jSONObject != null) {
            bVar.a(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString("msg", ""));
        }
    }

    private void g(String str) {
        int indexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView i = i();
                    if (i != null) {
                        p.a(i, "javascript:ToutiaoJSBridge._fetchQueue()");
                    }
                } else if (str.startsWith("bytedance://private/setresult/") && (indexOf = str.indexOf(38, 30)) > 0) {
                    String substring = str.substring(30, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (substring.equals("SCENE_FETCHQUEUE") && substring2.length() > 0) {
                        d(substring2);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(JSONObject jSONObject) {
        if (this.r != null && jSONObject != null) {
            try {
                this.r.f(jSONObject.optBoolean(EventConstants.MUTE, false));
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(JSONObject jSONObject) {
        if (this.r != null && jSONObject != null) {
            try {
                this.r.c(jSONObject.optInt("stateType", -1));
            } catch (Exception e) {
            }
        }
    }

    private WebView i() {
        WeakReference<SSWebView> weakReference = this.f9262d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean i(JSONObject jSONObject) {
        g gVar = this.r;
        if (gVar == null || jSONObject == null) {
            return false;
        }
        double O = gVar.O();
        int P = this.r.P();
        try {
            jSONObject.put("currentTime", O / 1000.0d);
            jSONObject.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, P);
            com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", "currentTime,state:".concat(String.valueOf(P)));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private JSONObject j() {
        try {
            View view = this.j.get();
            SSWebView sSWebView = this.f9262d.get();
            if (view == null || sSWebView == null) {
                com.bytedance.sdk.openadsdk.utils.q.e("TTAndroidObject", "setCloseButtonInfo error closeButton is null");
                return null;
            }
            int[] b2 = ag.b(view);
            int[] b3 = ag.b(sSWebView);
            if (b2 == null || b3 == null) {
                com.bytedance.sdk.openadsdk.utils.q.e("TTAndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", ag.b(n.a(), b2[0] - b3[0]));
            jSONObject.put("y", ag.b(n.a(), b2[1] - b3[1]));
            jSONObject.put("w", ag.b(n.a(), view.getWidth()));
            jSONObject.put(com.explorestack.iab.mraid.h.f19142a, ag.b(n.a(), view.getHeight()));
            jSONObject.put("isExist", ag.e(view));
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.utils.q.a("TTAndroidObject", "setCloseButtonInfo error", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [double] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r16v0, types: [double] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v0, types: [double] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r24v0, types: [double] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r26v0, types: [double] */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r28v0, types: [double] */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v3 */
    /* JADX WARN: Type inference failed for: r30v0, types: [double] */
    /* JADX WARN: Type inference failed for: r30v1 */
    /* JADX WARN: Type inference failed for: r30v3 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void j(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.w.j(org.json.JSONObject):void");
    }

    private List<String> k() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private void k(JSONObject jSONObject) {
        double d2;
        if (this.q != null && jSONObject != null) {
            k kVar = new k();
            kVar.a(1);
            try {
                boolean optBoolean = jSONObject.optBoolean("isRenderSuc");
                JSONObject optJSONObject = jSONObject.optJSONObject("AdSize");
                double d3 = 0.0d;
                if (optJSONObject != null) {
                    d3 = optJSONObject.optDouble("width");
                    d2 = optJSONObject.optDouble("height");
                } else {
                    d2 = 0.0d;
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("videoInfo");
                if (optJSONObject2 != null) {
                    double optDouble = optJSONObject2.optDouble("x");
                    double optDouble2 = optJSONObject2.optDouble("y");
                    double optDouble3 = optJSONObject2.optDouble("width");
                    double optDouble4 = optJSONObject2.optDouble("height");
                    kVar.c(optDouble);
                    kVar.d(optDouble2);
                    kVar.e(optDouble3);
                    kVar.f(optDouble4);
                }
                String optString = jSONObject.optString("message", f.a(101));
                int optInt = jSONObject.optInt("code", 101);
                kVar.a(optBoolean);
                kVar.a(d3);
                kVar.b(d2);
                kVar.a(optString);
                kVar.b(optInt);
                this.q.a(kVar);
            } catch (Exception e) {
                kVar.b(101);
                kVar.a(f.a(101));
                this.q.a(kVar);
            }
        }
    }

    private void l() {
        h hVar = this.A;
        if (hVar != null) {
            hVar.a();
        }
    }

    private void l(JSONObject jSONObject) {
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", "TTAndroidObject handlerDynamicTrack");
            try {
                Uri parse = Uri.parse(jSONObject.optString("trackData"));
                if ("bytedance".equals(parse.getScheme().toLowerCase())) {
                    n.a(parse, this);
                }
            } catch (Exception e) {
            }
        }
    }

    private void m() {
        h hVar = this.A;
        if (hVar != null) {
            hVar.b();
        }
    }

    private void m(JSONObject jSONObject) {
        if (jSONObject != null && this.t != null) {
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("temaiProductIds");
                if (optJSONArray == null || optJSONArray.length() <= 0) {
                    this.t.a(false, null);
                } else {
                    this.t.a(true, optJSONArray);
                }
            } catch (Exception e) {
                this.t.a(false, null);
            }
        }
    }

    private void n() {
        g gVar = this.r;
        if (gVar != null) {
            gVar.N();
        }
    }

    private boolean n(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", a(this.C));
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    private void o() {
        WeakReference<Context> weakReference = this.g;
        if (weakReference != null && weakReference.get() != null && !TextUtils.isEmpty(n.h().o())) {
            TTWebsiteActivity.a(this.g.get(), this.p, this.I);
        }
    }

    private void o(JSONObject jSONObject) {
        WebView i;
        if (jSONObject != null && (i = i()) != null) {
            String str = "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject.toString() + ")";
            p.a(i, str);
            if (com.bytedance.sdk.openadsdk.utils.q.a()) {
                com.bytedance.sdk.openadsdk.utils.q.a("TTAndroidObject", "js_msg ".concat(String.valueOf(str)));
            }
        }
    }

    private JSONObject p() {
        JSONObject jSONObject = new JSONObject();
        if (n.h() == null) {
            return jSONObject;
        }
        try {
            int d2 = af.d(this.k);
            int c2 = af.c(this.k);
            int g = n.h().g(String.valueOf(d2));
            int e = n.h().e(d2);
            boolean c3 = n.h().c(String.valueOf(d2));
            jSONObject.put("voice_control", (c2 == 7 || c2 == 8) ? n.h().b(d2) : n.h().a(d2));
            jSONObject.put("rv_skip_time", g);
            jSONObject.put("fv_skip_show", c3);
            jSONObject.put("iv_skip_time", e);
            i iVar = this.p;
            int i = 0;
            jSONObject.put("show_dislike", iVar != null && iVar.ae());
            i iVar2 = this.p;
            if (iVar2 != null) {
                i = iVar2.j();
            }
            jSONObject.put("video_adaptation", i);
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    private JSONObject p(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f9259a != null) {
            jSONObject2 = jSONObject;
            if (jSONObject == null) {
                jSONObject2 = new JSONObject();
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                String optString = jSONObject2.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject3 = new JSONObject(optString);
                }
                for (Map.Entry<String, Object> entry : this.f9259a.entrySet()) {
                    jSONObject3.put(entry.getKey(), entry.getValue());
                }
                jSONObject2.put("ad_extra_data", jSONObject3.toString());
            } catch (Exception e) {
                com.bytedance.sdk.openadsdk.utils.q.b(e.toString());
            }
        }
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        Context context;
        List<i> list = this.C;
        if (list != null && list.size() > 0) {
            this.D = new HashMap<>();
            SSWebView sSWebView = null;
            WeakReference<SSWebView> weakReference = this.f9262d;
            if (weakReference != null) {
                sSWebView = weakReference.get();
            }
            WeakReference<Context> weakReference2 = this.g;
            if (!(weakReference2 == null || (context = weakReference2.get()) == null)) {
                for (i iVar : this.C) {
                    this.D.put(iVar.P(), new h(context, iVar, sSWebView));
                }
            }
        }
    }

    private boolean r() {
        i iVar = this.p;
        if (iVar == null || iVar.ab() == null || this.p.w() || this.E || this.p.ab().optInt("parent_type") != 2) {
            return false;
        }
        int c2 = af.c(this.k);
        if (c2 != 8 && c2 != 7) {
            return false;
        }
        this.E = true;
        return true;
    }

    private void s() {
        if (this.h == null) {
            this.h = com.bytedance.sdk.openadsdk.f.a.a(this, this.p);
        }
    }

    public w a(int i) {
        this.n = i;
        return this;
    }

    public w a(View view) {
        this.j = new WeakReference<>(view);
        return this;
    }

    public w a(com.bytedance.sdk.openadsdk.core.b.d dVar) {
        this.y = dVar;
        return this;
    }

    public w a(i iVar) {
        this.p = iVar;
        return this;
    }

    public w a(g gVar) {
        this.r = gVar;
        return this;
    }

    public w a(j jVar) {
        this.q = jVar;
        return this;
    }

    public w a(SSWebView sSWebView) {
        com.bytedance.sdk.openadsdk.g.a.q b2 = com.bytedance.sdk.openadsdk.g.a.q.a(sSWebView).a("ToutiaoJSBridge").a(new l() { // from class: com.bytedance.sdk.openadsdk.core.w.1
            @Override // com.bytedance.sdk.openadsdk.g.a.l
            public <T> T a(String str, Type type) {
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.g.a.l
            public <T> String a(T t) {
                return null;
            }
        }).a(g.b().s()).b(true).a().b();
        this.H = b2;
        com.bytedance.sdk.openadsdk.g.b.b.a(b2, this);
        com.bytedance.sdk.openadsdk.g.b.a.a(this.H, this);
        return this;
    }

    public w a(d dVar) {
        this.t = dVar;
        return this;
    }

    public w a(com.bytedance.sdk.openadsdk.h.a aVar) {
        this.u = aVar;
        return this;
    }

    public w a(com.bytedance.sdk.openadsdk.h.b bVar) {
        this.z = bVar;
        return this;
    }

    public w a(com.bytedance.sdk.openadsdk.h.d dVar) {
        this.w = dVar;
        return this;
    }

    public w a(e eVar) {
        this.v = eVar;
        return this;
    }

    public w a(h hVar) {
        this.A = hVar;
        return this;
    }

    public w a(String str) {
        this.i = str;
        return this;
    }

    public w a(Map<String, Object> map) {
        this.f9259a = map;
        return this;
    }

    public w a(JSONObject jSONObject) {
        this.s = jSONObject;
        return this;
    }

    public w a(boolean z) {
        this.f9260b = z;
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public JSONObject a(a aVar, int i) throws Exception {
        char c2;
        JSONObject jSONObject;
        if (!"call".equals(aVar.f9276a)) {
            return null;
        }
        if (g.b().s()) {
            StringBuilder sb = new StringBuilder("[JSB-REQ] version:");
            sb.append(i);
            sb.append(" method:");
            sb.append(aVar.f9278c);
            sb.append(" params=");
            sb.append(aVar.f9279d != null ? aVar.f9279d.toString() : "");
        }
        JSONObject jSONObject2 = new JSONObject();
        String str = aVar.f9278c;
        str.hashCode();
        boolean z = false;
        int i2 = -1;
        switch (str.hashCode()) {
            case -2036781162:
                if (str.equals("subscribe_app_ad")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1423303823:
                if (str.equals("adInfo")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1330994877:
                if (str.equals("pauseWebView")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1169135450:
                if (str.equals("changeVideoState")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -844321441:
                if (str.equals("webview_time_track")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -800853518:
                if (str.equals("clickEvent")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -794273169:
                if (str.equals("appInfo")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -715147645:
                if (str.equals("getScreenSize")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -511324706:
                if (str.equals("openPrivacy")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -489318846:
                if (str.equals("getMaterialMeta")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -278382602:
                if (str.equals("send_temai_product_ids")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -173752734:
                if (str.equals("getTeMaiAds")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 27837080:
                if (str.equals("download_app_ad")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 105049135:
                if (str.equals("unsubscribe_app_ad")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 399543522:
                if (str.equals("getCloseButtonInfo")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 402955465:
                if (str.equals("isViewable")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 442647767:
                if (str.equals("sendReward")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 571273292:
                if (str.equals("dynamicTrack")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 650209982:
                if (str.equals("getTemplateInfo")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 672928467:
                if (str.equals("cancel_download_app_ad")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 711635577:
                if (str.equals("getCurrentVideoState")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 885131792:
                if (str.equals("getVolume")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 1107374321:
                if (str.equals("pauseWebViewTimers")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 1151744482:
                if (str.equals("muteVideo")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 1237100796:
                if (str.equals("renderDidFinish")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 1532142616:
                if (str.equals("removeLoading")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 1634511418:
                if (str.equals("endcard_load")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 1713585602:
                if (str.equals("getNetworkData")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 1731806400:
                if (str.equals("playable_style")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 1979895452:
                if (str.equals("sendLog")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 2086000188:
                if (str.equals("skipVideo")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case 2105008900:
                if (str.equals("landscape_click")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                s();
                WeakReference<Context> weakReference = this.g;
                jSONObject = jSONObject2;
                if (weakReference != null) {
                    Context context = weakReference.get();
                    jSONObject = jSONObject2;
                    if (context != null) {
                        this.h.a(context, aVar.f9279d, this.k, this.l, this.o);
                        jSONObject = jSONObject2;
                        break;
                    }
                }
                break;
            case 1:
                c(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 2:
                l();
                jSONObject = jSONObject2;
                break;
            case 3:
                h(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 4:
                e(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 5:
                j(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 6:
                a(jSONObject2, aVar.e);
                jSONObject = jSONObject2;
                break;
            case 7:
                com.bytedance.sdk.openadsdk.h.a aVar2 = this.u;
                jSONObject = jSONObject2;
                if (aVar2 != null) {
                    int b2 = aVar2.b();
                    int a2 = this.u.a();
                    jSONObject2.put("width", b2);
                    jSONObject2.put("height", a2);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case '\b':
                com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", "openPrivacy");
                o();
                jSONObject = jSONObject2;
                break;
            case '\t':
                n(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case '\n':
                m(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 11:
                JSONObject jSONObject3 = this.x;
                jSONObject = jSONObject2;
                if (jSONObject3 != null) {
                    jSONObject = jSONObject3;
                    break;
                }
                break;
            case '\f':
                com.bytedance.sdk.openadsdk.core.b.d dVar = this.y;
                if (dVar == null) {
                    jSONObject = jSONObject2;
                    if (this.h != null) {
                        WeakReference<Context> weakReference2 = this.g;
                        jSONObject = jSONObject2;
                        if (weakReference2 != null) {
                            Context context2 = weakReference2.get();
                            jSONObject = jSONObject2;
                            if (context2 != null) {
                                this.h.a(context2, aVar.f9279d, this.I);
                                jSONObject = jSONObject2;
                                break;
                            }
                        }
                    }
                } else {
                    dVar.a(this.B);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case '\r':
                c cVar = this.h;
                jSONObject = jSONObject2;
                if (cVar != null) {
                    cVar.a(aVar.f9279d);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 14:
                JSONObject j = j();
                jSONObject = jSONObject2;
                if (j != null) {
                    jSONObject = j;
                    break;
                }
                break;
            case 15:
                jSONObject2.put("viewStatus", this.F ? 1 : 0);
                jSONObject = jSONObject2;
                break;
            case 16:
                this.f9261c = true;
                e eVar = this.v;
                jSONObject = jSONObject2;
                if (eVar != null) {
                    eVar.a();
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 17:
                l(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 18:
                JSONObject jSONObject4 = this.s;
                if (jSONObject4 != null) {
                    jSONObject4.put("setting", p());
                }
                jSONObject = this.s;
                break;
            case 19:
                c cVar2 = this.h;
                jSONObject = jSONObject2;
                if (cVar2 != null) {
                    cVar2.b(aVar.f9279d);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 20:
                i(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 21:
                AudioManager audioManager = (AudioManager) n.a().getSystemService("audio");
                if (audioManager != null) {
                    i2 = audioManager.getStreamVolume(3);
                    com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", "音乐音量 >>>> AudioManager-->currentVolume=".concat(String.valueOf(i2)));
                }
                if (i2 <= 0) {
                    z = true;
                }
                jSONObject2.put("endcard_mute", z);
                jSONObject = jSONObject2;
                break;
            case 22:
                m();
                jSONObject = jSONObject2;
                break;
            case 23:
                g(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 24:
                k(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 25:
                com.bytedance.sdk.openadsdk.h.d dVar2 = this.w;
                jSONObject = jSONObject2;
                if (dVar2 != null) {
                    dVar2.a();
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 26:
                f(aVar.f9279d);
                jSONObject = jSONObject2;
                break;
            case 27:
                a(aVar, jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 28:
                d(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 29:
                JSONObject jSONObject5 = aVar.f9279d;
                jSONObject = jSONObject2;
                if (jSONObject5 != null) {
                    JSONObject jSONObject6 = jSONObject5.getJSONObject("extJson");
                    jSONObject = jSONObject2;
                    if (jSONObject6 != null) {
                        jSONObject = jSONObject2;
                        if (jSONObject6.has("category")) {
                            jSONObject = jSONObject2;
                            if (jSONObject6.has("tag")) {
                                jSONObject = jSONObject2;
                                if (jSONObject6.has("label")) {
                                    String string = jSONObject6.getString("category");
                                    jSONObject6.getString("tag");
                                    String string2 = jSONObject6.getString("label");
                                    long j2 = jSONObject5.getLong("value");
                                    long j3 = jSONObject5.getLong("extValue");
                                    try {
                                        jSONObject6.putOpt("ua_policy", Integer.valueOf(this.n));
                                    } catch (Exception e) {
                                    }
                                    JSONObject jSONObject7 = jSONObject6;
                                    if ("click".equals(string2)) {
                                        jSONObject7 = p(jSONObject6);
                                    }
                                    com.bytedance.sdk.openadsdk.d.e.a(this.p, string, af.a(this.l), string2, j2, j3, jSONObject7);
                                    jSONObject = jSONObject2;
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
            case 30:
                n();
                jSONObject = jSONObject2;
                break;
            case 31:
                WeakReference<Context> weakReference3 = this.g;
                jSONObject = jSONObject2;
                if (weakReference3 != null) {
                    Context context3 = weakReference3.get();
                    jSONObject = jSONObject2;
                    if (context3 != null) {
                        jSONObject = jSONObject2;
                        if (context3 instanceof com.bytedance.sdk.openadsdk.core.video.c.b) {
                            ((com.bytedance.sdk.openadsdk.core.video.c.b) context3).T();
                            jSONObject = jSONObject2;
                            break;
                        }
                    }
                }
                break;
            default:
                jSONObject = jSONObject2;
                break;
        }
        if (i == 1 && !TextUtils.isEmpty(aVar.f9277b)) {
            b(aVar.f9277b, jSONObject);
            if (g.b().s()) {
                StringBuilder sb2 = new StringBuilder("[JSB-RSP] version:");
                sb2.append(i);
                sb2.append(" data=");
                sb2.append(jSONObject);
            }
        }
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message != null && message.what == 11 && (message.obj instanceof a)) {
            try {
                a((a) message.obj, 1);
            } catch (Exception e) {
            }
        }
    }

    public void a(q qVar) {
        this.G = qVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.b
    public void a(String str, JSONObject jSONObject) {
        c(str, jSONObject);
    }

    public void a(JSONObject jSONObject, final com.bytedance.sdk.openadsdk.h.c cVar) {
        if (cVar != null) {
            try {
                if (this.p != null && !TextUtils.isEmpty(this.k)) {
                    int c2 = af.c(this.k);
                    AdSlot n = this.p.n();
                    com.bytedance.sdk.openadsdk.core.e.j jVar = new com.bytedance.sdk.openadsdk.core.e.j();
                    if (this.p.z() != null) {
                        jVar.e = 2;
                    }
                    JSONObject ab = this.p.ab();
                    JSONObject jSONObject2 = ab;
                    if (ab == null) {
                        jSONObject2 = new JSONObject();
                    }
                    if (jSONObject != null) {
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            jSONObject2.put(next, jSONObject.opt(next));
                        }
                    }
                    jVar.g = jSONObject2;
                    n.f().a(n, jVar, c2, new o.a() { // from class: com.bytedance.sdk.openadsdk.core.w.7
                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(int i, String str) {
                            cVar.a(false, null);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                            if (aVar.b() == null || aVar.b().isEmpty()) {
                                cVar.a(false, null);
                            } else {
                                cVar.a(true, aVar.b());
                            }
                        }
                    });
                    return;
                }
                cVar.a(false, null);
            } catch (Exception e) {
                com.bytedance.sdk.openadsdk.utils.q.c("TTAndroidObject", "get ads error", e);
            }
        }
    }

    public boolean a() {
        i iVar = this.p;
        return iVar != null && iVar.e();
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            if (!"bytedance".equals(uri.getScheme())) {
                return false;
            }
            return f.containsKey(uri.getHost());
        } catch (Exception e) {
            return false;
        }
    }

    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            c(jSONObject);
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, 0);
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }

    public w b(int i) {
        this.l = i;
        return this;
    }

    public w b(SSWebView sSWebView) {
        this.f9262d = new WeakReference<>(sSWebView);
        return this;
    }

    public w b(String str) {
        this.k = str;
        return this;
    }

    public w b(JSONObject jSONObject) {
        this.x = jSONObject;
        return this;
    }

    public w b(boolean z) {
        this.F = z;
        return this;
    }

    public void b(Uri uri) {
        long j;
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if (!RecordService.PRIVATE_NUMBER_STRING.equals(host) && !"dispatch_message".equals(host)) {
                    com.bytedance.sdk.openadsdk.utils.q.d("TTAndroidObject", "handlrUir: not match schema host");
                    return;
                }
                g(uri.toString());
                return;
            }
            String queryParameter = uri.getQueryParameter("category");
            String queryParameter2 = uri.getQueryParameter("tag");
            this.I = queryParameter2;
            String queryParameter3 = uri.getQueryParameter("label");
            if (e(queryParameter3)) {
                long j2 = 0;
                try {
                    j = Long.parseLong(uri.getQueryParameter("value"));
                } catch (Exception e) {
                    j = 0;
                }
                try {
                    j2 = Long.parseLong(uri.getQueryParameter("ext_value"));
                } catch (Exception e2) {
                }
                String queryParameter4 = uri.getQueryParameter("extra");
                JSONObject jSONObject = null;
                if (!TextUtils.isEmpty(queryParameter4)) {
                    try {
                        jSONObject = new JSONObject(queryParameter4);
                        try {
                            jSONObject.putOpt("ua_policy", Integer.valueOf(this.n));
                        } catch (Exception e3) {
                        }
                    } catch (Exception e4) {
                        jSONObject = null;
                    }
                }
                if ("click".equals(queryParameter3)) {
                    jSONObject = p(jSONObject);
                }
                com.bytedance.sdk.openadsdk.d.e.a(this.p, queryParameter, f(queryParameter2), queryParameter3, j, j2, jSONObject);
            }
        } catch (Exception e5) {
            com.bytedance.sdk.openadsdk.utils.q.b("TTAndroidObject", "handleUri exception: ", e5);
        }
    }

    public boolean b() {
        return this.f9261c;
    }

    public w c(String str) {
        this.m = str;
        return this;
    }

    public w c(boolean z) {
        this.B = z;
        return this;
    }

    public void c() {
        a((JSONObject) null, new com.bytedance.sdk.openadsdk.h.c() { // from class: com.bytedance.sdk.openadsdk.core.w.6
            @Override // com.bytedance.sdk.openadsdk.h.c
            public void a(boolean z, List<i> list) {
                w.this.C = list;
                w.this.q();
                w.this.d();
            }
        });
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                h(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.3
                    @Override // java.lang.Runnable
                    public void run() {
                        w.this.h(jSONObject);
                    }
                });
            }
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void clickEvent(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                j(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.4
                    @Override // java.lang.Runnable
                    public void run() {
                        w.this.j(jSONObject);
                    }
                });
            }
        } catch (Exception e) {
        }
    }

    public void d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("material", a(this.C));
            a("materialMeta", jSONObject);
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            l(new JSONObject(str));
        } catch (Exception e) {
        }
    }

    boolean e() {
        i iVar = this.p;
        return iVar != null && iVar.A() == 1;
    }

    public void f() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.a();
        }
        if (r()) {
            c();
        }
    }

    public void g() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.b();
        }
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        i(jSONObject);
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        a("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.s;
            if (jSONObject != null) {
                jSONObject.put("setting", p());
            }
            a("getTemplateInfo", false);
            return this.s.toString();
        } catch (Exception e) {
            return "";
        }
    }

    public void h() {
        c cVar = this.h;
        if (cVar != null) {
            cVar.c();
        }
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                g(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.2
                    @Override // java.lang.Runnable
                    public void run() {
                        w.this.g(jSONObject);
                    }
                });
            }
        } catch (Exception e) {
            com.bytedance.sdk.openadsdk.utils.q.e("TTAndroidObject", "");
        }
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            k(new JSONObject(str));
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void skipVideo() {
        n();
    }
}
