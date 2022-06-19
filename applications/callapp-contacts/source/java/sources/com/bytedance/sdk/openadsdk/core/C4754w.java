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
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4628j;
import com.bytedance.sdk.openadsdk.core.p151b.AbstractC4498d;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.p154e.C4560k;
import com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.p144a.C4268a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4833q;
import com.bytedance.sdk.openadsdk.p166f.AbstractC4867b;
import com.bytedance.sdk.openadsdk.p166f.AbstractC4868c;
import com.bytedance.sdk.openadsdk.p166f.AbstractC4869d;
import com.bytedance.sdk.openadsdk.p166f.C4866a;
import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4890l;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4897q;
import com.bytedance.sdk.openadsdk.p167g.p169b.C4913a;
import com.bytedance.sdk.openadsdk.p167g.p169b.C4916b;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4918a;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4919b;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4920c;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4921d;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4922e;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4926h;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5474p;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.callapp.contacts.recorder.service.RecordService;
import com.explorestack.iab.mraid.C9568h;
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
/* renamed from: com.bytedance.sdk.openadsdk.core.w */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/w.class */
public class C4754w implements AbstractC4867b, HandlerC5446ah.AbstractC5447a {

    /* renamed from: f */
    private static final Map<String, Boolean> f17395f;

    /* renamed from: A */
    private AbstractC4926h f17396A;

    /* renamed from: C */
    private List<C4557i> f17398C;

    /* renamed from: D */
    private HashMap<String, C4581h> f17399D;

    /* renamed from: G */
    private C4833q f17402G;

    /* renamed from: H */
    private C4897q f17403H;

    /* renamed from: I */
    private String f17404I;

    /* renamed from: a */
    protected Map<String, Object> f17405a;

    /* renamed from: b */
    boolean f17406b;

    /* renamed from: d */
    private WeakReference<SSWebView> f17408d;

    /* renamed from: g */
    private WeakReference<Context> f17410g;

    /* renamed from: h */
    private AbstractC4868c f17411h;

    /* renamed from: i */
    private String f17412i;

    /* renamed from: j */
    private WeakReference<View> f17413j;

    /* renamed from: k */
    private String f17414k;

    /* renamed from: l */
    private int f17415l;

    /* renamed from: m */
    private String f17416m;

    /* renamed from: n */
    private int f17417n;

    /* renamed from: p */
    private C4557i f17419p;

    /* renamed from: q */
    private AbstractC4628j f17420q;

    /* renamed from: r */
    private AbstractC4619g f17421r;

    /* renamed from: s */
    private JSONObject f17422s;

    /* renamed from: t */
    private AbstractC4869d f17423t;

    /* renamed from: u */
    private AbstractC4918a f17424u;

    /* renamed from: v */
    private AbstractC4922e f17425v;

    /* renamed from: w */
    private AbstractC4921d f17426w;

    /* renamed from: x */
    private JSONObject f17427x;

    /* renamed from: y */
    private AbstractC4498d f17428y;

    /* renamed from: z */
    private AbstractC4919b f17429z;

    /* renamed from: o */
    private boolean f17418o = true;

    /* renamed from: B */
    private boolean f17397B = true;

    /* renamed from: E */
    private boolean f17400E = false;

    /* renamed from: F */
    private boolean f17401F = false;

    /* renamed from: c */
    boolean f17407c = false;

    /* renamed from: e */
    private HandlerC5446ah f17409e = new HandlerC5446ah(Looper.getMainLooper(), this);

    /* renamed from: com.bytedance.sdk.openadsdk.core.w$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/w$a.class */
    public static class C4762a {

        /* renamed from: a */
        public String f17443a;

        /* renamed from: b */
        public String f17444b;

        /* renamed from: c */
        public String f17445c;

        /* renamed from: d */
        public JSONObject f17446d;

        /* renamed from: e */
        public int f17447e;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f17395f = concurrentHashMap;
        concurrentHashMap.put("log_event", Boolean.TRUE);
        concurrentHashMap.put(RecordService.PRIVATE_NUMBER_STRING, Boolean.TRUE);
        concurrentHashMap.put("dispatch_message", Boolean.TRUE);
        concurrentHashMap.put("custom_event", Boolean.TRUE);
        concurrentHashMap.put("log_event_v3", Boolean.TRUE);
    }

    public C4754w(Context context) {
        this.f17410g = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static JSONArray m34138a(List<C4557i> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(list.get(i).m35196ag());
        }
        return jSONArray;
    }

    /* renamed from: a */
    private void m34154a(final C4762a c4762a, final JSONObject jSONObject) {
        if (c4762a == null) {
            return;
        }
        try {
            m34134a(c4762a.f17446d, new AbstractC4920c() { // from class: com.bytedance.sdk.openadsdk.core.w.5
                @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4920c
                /* renamed from: a */
                public void mo33568a(boolean z, List<C4557i> list) {
                    if (!z) {
                        C4754w.this.m34126b(c4762a.f17444b, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", C4754w.m34138a(list));
                        C4754w.this.m34126b(c4762a.f17444b, jSONObject);
                    } catch (Exception e) {
                    }
                }
            });
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private void m34139a(String str, boolean z) {
        if (this.f17402G == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            this.f17402G.m33768a(str);
        } else {
            this.f17402G.m33759b(str);
        }
    }

    /* renamed from: a */
    private void m34135a(JSONObject jSONObject, int i) throws Exception {
        JSONArray jSONArray = new JSONArray();
        for (String str : m34099k()) {
            jSONArray.put(str);
        }
        jSONObject.put("appName", C4268a.m36029a());
        jSONObject.put("innerAppName", C4268a.m36024e());
        jSONObject.put("aid", C4268a.m36027b());
        jSONObject.put("sdkEdition", C4268a.m36026c());
        jSONObject.put("appVersion", C4268a.m36025d());
        jSONObject.put("netType", C4268a.m36023f());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", C4268a.m36028a(C4600n.m34815a()));
    }

    /* renamed from: a */
    private boolean m34140a(String str, int i, C4553g c4553g) {
        HashMap<String, C4581h> hashMap;
        C4581h c4581h;
        if (TextUtils.isEmpty(str) || (hashMap = this.f17399D) == null || (c4581h = hashMap.get(str)) == null) {
            return false;
        }
        c4581h.m34964a(i, c4553g);
        return true;
    }

    /* renamed from: b */
    public void m34126b(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            m34090o(jSONObject2);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m34120c(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "event");
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            m34090o(jSONObject2);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m34119c(JSONObject jSONObject) throws Exception {
        if (!TextUtils.isEmpty(this.f17412i)) {
            jSONObject.put("cid", this.f17412i);
        }
        if (!TextUtils.isEmpty(this.f17414k)) {
            jSONObject.put("log_extra", this.f17414k);
        }
        if (!TextUtils.isEmpty(this.f17416m)) {
            jSONObject.put("download_url", this.f17416m);
        }
        jSONObject.put("dc", TextUtils.isEmpty(C4600n.m34805h().m34865r()) ? C4600n.m34805h().m34865r() : "SG");
        jSONObject.put("language", C5438af.m32254k(C4600n.m34815a()));
    }

    /* renamed from: d */
    private void m34116d(String str) {
        try {
            String str2 = new String(Base64.decode(str, 2));
            C5478q.m32112b("TTAndroidObject", str2);
            JSONArray jSONArray = new JSONArray(str2);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                C4762a c4762a = new C4762a();
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        c4762a.f17443a = optJSONObject.optString("__msg_type", null);
                        c4762a.f17444b = optJSONObject.optString("__callback_id", null);
                        c4762a.f17445c = optJSONObject.optString("func");
                        c4762a.f17446d = optJSONObject.optJSONObject("params");
                        c4762a.f17447e = optJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable th) {
                }
                if (!TextUtils.isEmpty(c4762a.f17443a) && !TextUtils.isEmpty(c4762a.f17445c)) {
                    Message obtainMessage = this.f17409e.obtainMessage(11);
                    obtainMessage.obj = c4762a;
                    this.f17409e.sendMessage(obtainMessage);
                }
            }
        } catch (Exception e) {
            if (C5478q.m32121a()) {
                C5478q.m32107d("TTAndroidObject", "failed to parse jsbridge msg queue ".concat(String.valueOf(str)));
            } else {
                C5478q.m32107d("TTAndroidObject", "failed to parse jsbridge msg queue");
            }
        }
    }

    /* renamed from: d */
    private void m34115d(JSONObject jSONObject) throws Exception {
        C4557i c4557i = this.f17419p;
        if (c4557i == null || TextUtils.isEmpty(c4557i.m35172g())) {
            return;
        }
        jSONObject.put("playable_style", this.f17419p.m35172g());
    }

    /* renamed from: e */
    private void m34112e(JSONObject jSONObject) {
        C4833q c4833q;
        if (jSONObject == null || (c4833q = this.f17402G) == null) {
            return;
        }
        c4833q.m33757b(jSONObject);
    }

    /* renamed from: e */
    private boolean m34113e(String str) {
        return TextUtils.isEmpty(str) || !"click_other".equals(str) || m34114e();
    }

    /* renamed from: f */
    private String m34110f(String str) {
        if (this.f17420q == null) {
            str = C5438af.m32311a(this.f17415l);
        }
        return str;
    }

    /* renamed from: f */
    private void m34109f(JSONObject jSONObject) {
        AbstractC4919b abstractC4919b = this.f17429z;
        if (abstractC4919b == null || jSONObject == null) {
            return;
        }
        abstractC4919b.mo33569a(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString("msg", ""));
    }

    /* renamed from: g */
    private void m34107g(String str) {
        int indexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView m34103i = m34103i();
                    if (m34103i == null) {
                        return;
                    }
                    C5474p.m32123a(m34103i, "javascript:ToutiaoJSBridge._fetchQueue()");
                } else if (!str.startsWith("bytedance://private/setresult/") || (indexOf = str.indexOf(38, 30)) <= 0) {
                } else {
                    String substring = str.substring(30, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (!substring.equals("SCENE_FETCHQUEUE") || substring2.length() <= 0) {
                        return;
                    }
                    m34116d(substring2);
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: g */
    public void m34106g(JSONObject jSONObject) {
        if (this.f17421r == null || jSONObject == null) {
            return;
        }
        try {
            this.f17421r.mo34719f(jSONObject.optBoolean(EventConstants.MUTE, false));
        } catch (Exception e) {
        }
    }

    /* renamed from: h */
    public void m34104h(JSONObject jSONObject) {
        if (this.f17421r == null || jSONObject == null) {
            return;
        }
        try {
            this.f17421r.mo34720c(jSONObject.optInt("stateType", -1));
        } catch (Exception e) {
        }
    }

    /* renamed from: i */
    private WebView m34103i() {
        WeakReference<SSWebView> weakReference = this.f17408d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: i */
    private boolean m34102i(JSONObject jSONObject) {
        AbstractC4619g abstractC4619g = this.f17421r;
        if (abstractC4619g == null || jSONObject == null) {
            return false;
        }
        double mo34723O = abstractC4619g.mo34723O();
        int mo34722P = this.f17421r.mo34722P();
        try {
            jSONObject.put("currentTime", mo34723O / 1000.0d);
            jSONObject.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, mo34722P);
            C5478q.m32112b("TTAndroidObject", "currentTime,state:".concat(String.valueOf(mo34722P)));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: j */
    private JSONObject m34101j() {
        try {
            View view = this.f17413j.get();
            SSWebView sSWebView = this.f17408d.get();
            if (view == null || sSWebView == null) {
                C5478q.m32106e("TTAndroidObject", "setCloseButtonInfo error closeButton is null");
                return null;
            }
            int[] m32220b = C5443ag.m32220b(view);
            int[] m32220b2 = C5443ag.m32220b(sSWebView);
            if (m32220b == null || m32220b2 == null) {
                C5478q.m32106e("TTAndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", C5443ag.m32221b(C4600n.m34815a(), m32220b[0] - m32220b2[0]));
            jSONObject.put("y", C5443ag.m32221b(C4600n.m34815a(), m32220b[1] - m32220b2[1]));
            jSONObject.put("w", C5443ag.m32221b(C4600n.m34815a(), view.getWidth()));
            jSONObject.put(C9568h.f32519a, C5443ag.m32221b(C4600n.m34815a(), view.getHeight()));
            jSONObject.put("isExist", C5443ag.m32212e(view));
            return jSONObject;
        } catch (Throwable th) {
            C5478q.m32117a("TTAndroidObject", "setCloseButtonInfo error", th);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [double] */
    /* JADX WARN: Type inference failed for: r0v52, types: [double] */
    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* JADX WARN: Type inference failed for: r0v56, types: [double] */
    /* JADX WARN: Type inference failed for: r0v58, types: [double] */
    /* JADX WARN: Type inference failed for: r0v60, types: [double] */
    /* JADX WARN: Type inference failed for: r0v62, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v66, types: [double] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* renamed from: j */
    public void m34100j(JSONObject jSONObject) {
        char c;
        char c2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        if (jSONObject == null) {
            return;
        }
        C5478q.m32112b("TTAndroidObject", "TTAndroidObject handleClickEvent");
        try {
            String optString = jSONObject.optString("adId");
            int optInt = jSONObject.optInt("areaType", 1);
            String optString2 = jSONObject.optString("clickAreaType");
            JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
            if (optJSONObject != null) {
                c10 = optJSONObject.optDouble("down_x", 0.0d);
                c9 = optJSONObject.optDouble("down_y", 0.0d);
                c8 = optJSONObject.optDouble("up_x", 0.0d);
                c7 = optJSONObject.optDouble("up_y", 0.0d);
                c6 = optJSONObject.optDouble("down_time", 0.0d);
                c5 = optJSONObject.optDouble("up_time", 0.0d);
                c4 = optJSONObject.optDouble("button_x", 0.0d);
                c3 = optJSONObject.optDouble("button_y", 0.0d);
                c2 = optJSONObject.optDouble("button_width", 0.0d);
                c = optJSONObject.optDouble("button_height", 0.0d);
            } else {
                c5 = 0;
                c4 = 0;
                c8 = 0;
                c7 = 0;
                c3 = 0;
                c2 = 0;
                c = 0;
                c9 = 0;
                c6 = 0;
                c10 = 0;
            }
            C4553g m35277a = new C4553g.C4555a().m35267d(c10).m35269c(c9).m35272b(c8).m35276a(c7).m35271b(c6).m35275a(c5).m35265e(c4).m35263f(c3).m35261g(c2).m35259h(c).m35273a(optString2).m35277a();
            AbstractC4628j abstractC4628j = this.f17420q;
            if (abstractC4628j != null) {
                abstractC4628j.mo34705a(optInt, m35277a);
            }
            m34140a(optString, optInt, m35277a);
        } catch (Exception e) {
            AbstractC4628j abstractC4628j2 = this.f17420q;
            if (abstractC4628j2 == null) {
                return;
            }
            abstractC4628j2.mo34705a(-1, null);
        }
    }

    /* renamed from: k */
    private List<String> m34099k() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v45, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* renamed from: k */
    private void m34098k(JSONObject jSONObject) {
        ?? r11;
        if (this.f17420q == null || jSONObject == null) {
            return;
        }
        C4560k c4560k = new C4560k();
        c4560k.m35117a(1);
        try {
            boolean optBoolean = jSONObject.optBoolean("isRenderSuc");
            JSONObject optJSONObject = jSONObject.optJSONObject("AdSize");
            ?? r9 = false;
            if (optJSONObject != null) {
                r9 = optJSONObject.optDouble("width");
                r11 = optJSONObject.optDouble("height");
            } else {
                r11 = false;
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("videoInfo");
            if (optJSONObject2 != null) {
                double optDouble = optJSONObject2.optDouble("x");
                double optDouble2 = optJSONObject2.optDouble("y");
                double optDouble3 = optJSONObject2.optDouble("width");
                double optDouble4 = optJSONObject2.optDouble("height");
                c4560k.m35110c(optDouble);
                c4560k.m35108d(optDouble2);
                c4560k.m35106e(optDouble3);
                c4560k.m35104f(optDouble4);
            }
            String optString = jSONObject.optString("message", C4566f.m35036a(101));
            int optInt = jSONObject.optInt("code", 101);
            c4560k.m35115a(optBoolean);
            c4560k.m35118a(r9 == true ? 1.0d : 0.0d);
            c4560k.m35113b(r11 == true ? 1.0d : 0.0d);
            c4560k.m35116a(optString);
            c4560k.m35112b(optInt);
            this.f17420q.mo34704a(c4560k);
        } catch (Exception e) {
            c4560k.m35112b(101);
            c4560k.m35116a(C4566f.m35036a(101));
            this.f17420q.mo34704a(c4560k);
        }
    }

    /* renamed from: l */
    private void m34097l() {
        AbstractC4926h abstractC4926h = this.f17396A;
        if (abstractC4926h == null) {
            return;
        }
        abstractC4926h.mo33551a();
    }

    /* renamed from: l */
    private void m34096l(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        C5478q.m32112b("TTAndroidObject", "TTAndroidObject handlerDynamicTrack");
        try {
            Uri parse = Uri.parse(jSONObject.optString("trackData"));
            if (!"bytedance".equals(parse.getScheme().toLowerCase())) {
                return;
            }
            C5472n.m32127a(parse, this);
        } catch (Exception e) {
        }
    }

    /* renamed from: m */
    private void m34095m() {
        AbstractC4926h abstractC4926h = this.f17396A;
        if (abstractC4926h == null) {
            return;
        }
        abstractC4926h.mo33550b();
    }

    /* renamed from: m */
    private void m34094m(JSONObject jSONObject) {
        if (jSONObject == null || this.f17423t == null) {
            return;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                this.f17423t.mo33693a(false, null);
            } else {
                this.f17423t.mo33693a(true, optJSONArray);
            }
        } catch (Exception e) {
            this.f17423t.mo33693a(false, null);
        }
    }

    /* renamed from: n */
    private void m34093n() {
        AbstractC4619g abstractC4619g = this.f17421r;
        if (abstractC4619g != null) {
            abstractC4619g.mo34724N();
        }
    }

    /* renamed from: n */
    private boolean m34092n(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", m34138a(this.f17398C));
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: o */
    private void m34091o() {
        WeakReference<Context> weakReference = this.f17410g;
        if (weakReference == null || weakReference.get() == null || TextUtils.isEmpty(C4600n.m34805h().m34871o())) {
            return;
        }
        TTWebsiteActivity.m35763a(this.f17410g.get(), this.f17419p, this.f17404I);
    }

    /* renamed from: o */
    private void m34090o(JSONObject jSONObject) {
        WebView m34103i;
        if (jSONObject == null || (m34103i = m34103i()) == null) {
            return;
        }
        String str = "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject.toString() + ")";
        C5474p.m32123a(m34103i, str);
        if (!C5478q.m32121a()) {
            return;
        }
        C5478q.m32118a("TTAndroidObject", "js_msg ".concat(String.valueOf(str)));
    }

    /* renamed from: p */
    private JSONObject m34089p() {
        JSONObject jSONObject = new JSONObject();
        if (C4600n.m34805h() == null) {
            return jSONObject;
        }
        try {
            int m32278d = C5438af.m32278d(this.f17414k);
            int m32284c = C5438af.m32284c(this.f17414k);
            int m34886g = C4600n.m34805h().m34886g(String.valueOf(m32278d));
            int m34894e = C4600n.m34805h().m34894e(m32278d);
            boolean m34901c = C4600n.m34805h().m34901c(String.valueOf(m32278d));
            jSONObject.put("voice_control", (m32284c == 7 || m32284c == 8) ? C4600n.m34805h().m34906b(m32278d) : C4600n.m34805h().m34914a(m32278d));
            jSONObject.put("rv_skip_time", m34886g);
            jSONObject.put("fv_skip_show", m34901c);
            jSONObject.put("iv_skip_time", m34894e);
            C4557i c4557i = this.f17419p;
            int i = 0;
            jSONObject.put("show_dislike", c4557i != null && c4557i.m35198ae());
            C4557i c4557i2 = this.f17419p;
            if (c4557i2 != null) {
                i = c4557i2.m35163j();
            }
            jSONObject.put("video_adaptation", i);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: p */
    private JSONObject m34088p(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f17405a != null) {
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
                for (Map.Entry<String, Object> entry : this.f17405a.entrySet()) {
                    jSONObject3.put(entry.getKey(), entry.getValue());
                }
                jSONObject2.put("ad_extra_data", jSONObject3.toString());
            } catch (Exception e) {
                C5478q.m32113b(e.toString());
            }
        }
        return jSONObject2;
    }

    /* renamed from: q */
    public void m34087q() {
        Context context;
        List<C4557i> list = this.f17398C;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f17399D = new HashMap<>();
        SSWebView sSWebView = null;
        WeakReference<SSWebView> weakReference = this.f17408d;
        if (weakReference != null) {
            sSWebView = weakReference.get();
        }
        WeakReference<Context> weakReference2 = this.f17410g;
        if (weakReference2 == null || (context = weakReference2.get()) == null) {
            return;
        }
        for (C4557i c4557i : this.f17398C) {
            this.f17399D.put(c4557i.m35231P(), new C4581h(context, c4557i, sSWebView));
        }
    }

    /* renamed from: r */
    private boolean m34086r() {
        C4557i c4557i = this.f17419p;
        if (c4557i == null || c4557i.m35201ab() == null || this.f17419p.m35137w() || this.f17400E || this.f17419p.m35201ab().optInt("parent_type") != 2) {
            return false;
        }
        int m32284c = C5438af.m32284c(this.f17414k);
        if (m32284c != 8 && m32284c != 7) {
            return false;
        }
        this.f17400E = true;
        return true;
    }

    /* renamed from: s */
    private void m34085s() {
        if (this.f17411h == null) {
            this.f17411h = C4866a.m33703a(this, this.f17419p);
        }
    }

    /* renamed from: a */
    public C4754w m34162a(int i) {
        this.f17417n = i;
        return this;
    }

    /* renamed from: a */
    public C4754w m34160a(View view) {
        this.f17413j = new WeakReference<>(view);
        return this;
    }

    /* renamed from: a */
    public C4754w m34159a(AbstractC4498d abstractC4498d) {
        this.f17428y = abstractC4498d;
        return this;
    }

    /* renamed from: a */
    public C4754w m34158a(C4557i c4557i) {
        this.f17419p = c4557i;
        return this;
    }

    /* renamed from: a */
    public C4754w m34157a(AbstractC4619g abstractC4619g) {
        this.f17421r = abstractC4619g;
        return this;
    }

    /* renamed from: a */
    public C4754w m34156a(AbstractC4628j abstractC4628j) {
        this.f17420q = abstractC4628j;
        return this;
    }

    /* renamed from: a */
    public C4754w m34149a(SSWebView sSWebView) {
        C4897q m33648b = C4897q.m33614a(sSWebView).m33650a("ToutiaoJSBridge").m33651a(new AbstractC4890l() { // from class: com.bytedance.sdk.openadsdk.core.w.1
            @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4890l
            /* renamed from: a */
            public <T> T mo33637a(String str, Type type) {
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4890l
            /* renamed from: a */
            public <T> String mo33638a(T t) {
                return null;
            }
        }).m33649a(C4570g.m35020b().m34989s()).m33647b(true).m33652a().m33648b();
        this.f17403H = m33648b;
        C4916b.m33574a(m33648b, this);
        C4913a.m33580a(this.f17403H, this);
        return this;
    }

    /* renamed from: a */
    public C4754w m34147a(AbstractC4869d abstractC4869d) {
        this.f17423t = abstractC4869d;
        return this;
    }

    /* renamed from: a */
    public C4754w m34146a(AbstractC4918a abstractC4918a) {
        this.f17424u = abstractC4918a;
        return this;
    }

    /* renamed from: a */
    public C4754w m34145a(AbstractC4919b abstractC4919b) {
        this.f17429z = abstractC4919b;
        return this;
    }

    /* renamed from: a */
    public C4754w m34144a(AbstractC4921d abstractC4921d) {
        this.f17426w = abstractC4921d;
        return this;
    }

    /* renamed from: a */
    public C4754w m34143a(AbstractC4922e abstractC4922e) {
        this.f17425v = abstractC4922e;
        return this;
    }

    /* renamed from: a */
    public C4754w m34142a(AbstractC4926h abstractC4926h) {
        this.f17396A = abstractC4926h;
        return this;
    }

    /* renamed from: a */
    public C4754w m34141a(String str) {
        this.f17412i = str;
        return this;
    }

    /* renamed from: a */
    public C4754w m34137a(Map<String, Object> map) {
        this.f17405a = map;
        return this;
    }

    /* renamed from: a */
    public C4754w m34136a(JSONObject jSONObject) {
        this.f17422s = jSONObject;
        return this;
    }

    /* renamed from: a */
    public C4754w m34133a(boolean z) {
        this.f17406b = z;
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public JSONObject m34155a(C4762a c4762a, int i) throws Exception {
        Object[] objArr;
        JSONObject jSONObject;
        if (!"call".equals(c4762a.f17443a)) {
            return null;
        }
        if (C4570g.m35020b().m34989s()) {
            StringBuilder sb = new StringBuilder("[JSB-REQ] version:");
            sb.append(i);
            sb.append(" method:");
            sb.append(c4762a.f17445c);
            sb.append(" params=");
            sb.append(c4762a.f17446d != null ? c4762a.f17446d.toString() : "");
        }
        JSONObject jSONObject2 = new JSONObject();
        String str = c4762a.f17445c;
        str.hashCode();
        boolean z = false;
        switch (str.hashCode()) {
            case -2036781162:
                if (str.equals("subscribe_app_ad")) {
                    objArr = null;
                    break;
                }
                objArr = -1;
                break;
            case -1423303823:
                if (str.equals("adInfo")) {
                    objArr = 1;
                    break;
                }
                objArr = -1;
                break;
            case -1330994877:
                if (str.equals("pauseWebView")) {
                    objArr = 2;
                    break;
                }
                objArr = -1;
                break;
            case -1169135450:
                if (str.equals("changeVideoState")) {
                    objArr = 3;
                    break;
                }
                objArr = -1;
                break;
            case -844321441:
                if (str.equals("webview_time_track")) {
                    objArr = 4;
                    break;
                }
                objArr = -1;
                break;
            case -800853518:
                if (str.equals("clickEvent")) {
                    objArr = 5;
                    break;
                }
                objArr = -1;
                break;
            case -794273169:
                if (str.equals("appInfo")) {
                    objArr = 6;
                    break;
                }
                objArr = -1;
                break;
            case -715147645:
                if (str.equals("getScreenSize")) {
                    objArr = 7;
                    break;
                }
                objArr = -1;
                break;
            case -511324706:
                if (str.equals("openPrivacy")) {
                    objArr = 8;
                    break;
                }
                objArr = -1;
                break;
            case -489318846:
                if (str.equals("getMaterialMeta")) {
                    objArr = 9;
                    break;
                }
                objArr = -1;
                break;
            case -278382602:
                if (str.equals("send_temai_product_ids")) {
                    objArr = 10;
                    break;
                }
                objArr = -1;
                break;
            case -173752734:
                if (str.equals("getTeMaiAds")) {
                    objArr = 11;
                    break;
                }
                objArr = -1;
                break;
            case 27837080:
                if (str.equals("download_app_ad")) {
                    objArr = 12;
                    break;
                }
                objArr = -1;
                break;
            case 105049135:
                if (str.equals("unsubscribe_app_ad")) {
                    objArr = 13;
                    break;
                }
                objArr = -1;
                break;
            case 399543522:
                if (str.equals("getCloseButtonInfo")) {
                    objArr = 14;
                    break;
                }
                objArr = -1;
                break;
            case 402955465:
                if (str.equals("isViewable")) {
                    objArr = 15;
                    break;
                }
                objArr = -1;
                break;
            case 442647767:
                if (str.equals("sendReward")) {
                    objArr = 16;
                    break;
                }
                objArr = -1;
                break;
            case 571273292:
                if (str.equals("dynamicTrack")) {
                    objArr = 17;
                    break;
                }
                objArr = -1;
                break;
            case 650209982:
                if (str.equals("getTemplateInfo")) {
                    objArr = 18;
                    break;
                }
                objArr = -1;
                break;
            case 672928467:
                if (str.equals("cancel_download_app_ad")) {
                    objArr = 19;
                    break;
                }
                objArr = -1;
                break;
            case 711635577:
                if (str.equals("getCurrentVideoState")) {
                    objArr = 20;
                    break;
                }
                objArr = -1;
                break;
            case 885131792:
                if (str.equals("getVolume")) {
                    objArr = 21;
                    break;
                }
                objArr = -1;
                break;
            case 1107374321:
                if (str.equals("pauseWebViewTimers")) {
                    objArr = 22;
                    break;
                }
                objArr = -1;
                break;
            case 1151744482:
                if (str.equals("muteVideo")) {
                    objArr = 23;
                    break;
                }
                objArr = -1;
                break;
            case 1237100796:
                if (str.equals("renderDidFinish")) {
                    objArr = 24;
                    break;
                }
                objArr = -1;
                break;
            case 1532142616:
                if (str.equals("removeLoading")) {
                    objArr = 25;
                    break;
                }
                objArr = -1;
                break;
            case 1634511418:
                if (str.equals("endcard_load")) {
                    objArr = 26;
                    break;
                }
                objArr = -1;
                break;
            case 1713585602:
                if (str.equals("getNetworkData")) {
                    objArr = 27;
                    break;
                }
                objArr = -1;
                break;
            case 1731806400:
                if (str.equals("playable_style")) {
                    objArr = 28;
                    break;
                }
                objArr = -1;
                break;
            case 1979895452:
                if (str.equals("sendLog")) {
                    objArr = 29;
                    break;
                }
                objArr = -1;
                break;
            case 2086000188:
                if (str.equals("skipVideo")) {
                    objArr = 30;
                    break;
                }
                objArr = -1;
                break;
            case 2105008900:
                if (str.equals("landscape_click")) {
                    objArr = 31;
                    break;
                }
                objArr = -1;
                break;
            default:
                objArr = -1;
                break;
        }
        switch (objArr) {
            case null:
                m34085s();
                WeakReference<Context> weakReference = this.f17410g;
                jSONObject = jSONObject2;
                if (weakReference != null) {
                    Context context = weakReference.get();
                    jSONObject = jSONObject2;
                    if (context != null) {
                        this.f17411h.mo33698a(context, c4762a.f17446d, this.f17414k, this.f17415l, this.f17418o);
                        jSONObject = jSONObject2;
                        break;
                    }
                }
                break;
            case 1:
                m34119c(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 2:
                m34097l();
                jSONObject = jSONObject2;
                break;
            case 3:
                m34104h(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 4:
                m34112e(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 5:
                m34100j(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 6:
                m34135a(jSONObject2, c4762a.f17447e);
                jSONObject = jSONObject2;
                break;
            case 7:
                AbstractC4918a abstractC4918a = this.f17424u;
                jSONObject = jSONObject2;
                if (abstractC4918a != null) {
                    int mo33570b = abstractC4918a.mo33570b();
                    int mo33571a = this.f17424u.mo33571a();
                    jSONObject2.put("width", mo33570b);
                    jSONObject2.put("height", mo33571a);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 8:
                C5478q.m32112b("TTAndroidObject", "openPrivacy");
                m34091o();
                jSONObject = jSONObject2;
                break;
            case 9:
                m34092n(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 10:
                m34094m(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 11:
                JSONObject jSONObject3 = this.f17427x;
                jSONObject = jSONObject2;
                if (jSONObject3 != null) {
                    jSONObject = jSONObject3;
                    break;
                }
                break;
            case 12:
                AbstractC4498d abstractC4498d = this.f17428y;
                if (abstractC4498d == null) {
                    jSONObject = jSONObject2;
                    if (this.f17411h != null) {
                        WeakReference<Context> weakReference2 = this.f17410g;
                        jSONObject = jSONObject2;
                        if (weakReference2 != null) {
                            Context context2 = weakReference2.get();
                            jSONObject = jSONObject2;
                            if (context2 != null) {
                                this.f17411h.mo33699a(context2, c4762a.f17446d, this.f17404I);
                                jSONObject = jSONObject2;
                                break;
                            }
                        }
                    }
                } else {
                    abstractC4498d.mo35469a(this.f17397B);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 13:
                AbstractC4868c abstractC4868c = this.f17411h;
                jSONObject = jSONObject2;
                if (abstractC4868c != null) {
                    abstractC4868c.mo33697a(c4762a.f17446d);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 14:
                JSONObject m34101j = m34101j();
                jSONObject = jSONObject2;
                if (m34101j != null) {
                    jSONObject = m34101j;
                    break;
                }
                break;
            case 15:
                jSONObject2.put("viewStatus", this.f17401F ? 1 : 0);
                jSONObject = jSONObject2;
                break;
            case 16:
                this.f17407c = true;
                AbstractC4922e abstractC4922e = this.f17425v;
                jSONObject = jSONObject2;
                if (abstractC4922e != null) {
                    abstractC4922e.mo33566a();
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 17:
                m34096l(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 18:
                JSONObject jSONObject4 = this.f17422s;
                if (jSONObject4 != null) {
                    jSONObject4.put("setting", m34089p());
                }
                jSONObject = this.f17422s;
                break;
            case 19:
                AbstractC4868c abstractC4868c2 = this.f17411h;
                jSONObject = jSONObject2;
                if (abstractC4868c2 != null) {
                    abstractC4868c2.mo33695b(c4762a.f17446d);
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 20:
                m34102i(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 21:
                AudioManager audioManager = (AudioManager) C4600n.m34815a().getSystemService("audio");
                int i2 = -1;
                if (audioManager != null) {
                    i2 = audioManager.getStreamVolume(3);
                    C5478q.m32112b("TTAndroidObject", "音乐音量 >>>> AudioManager-->currentVolume=".concat(String.valueOf(i2)));
                }
                if (i2 <= 0) {
                    z = true;
                }
                jSONObject2.put("endcard_mute", z);
                jSONObject = jSONObject2;
                break;
            case 22:
                m34095m();
                jSONObject = jSONObject2;
                break;
            case 23:
                m34106g(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 24:
                m34098k(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 25:
                AbstractC4921d abstractC4921d = this.f17426w;
                jSONObject = jSONObject2;
                if (abstractC4921d != null) {
                    abstractC4921d.mo33567a();
                    jSONObject = jSONObject2;
                    break;
                }
                break;
            case 26:
                m34109f(c4762a.f17446d);
                jSONObject = jSONObject2;
                break;
            case 27:
                m34154a(c4762a, jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 28:
                m34115d(jSONObject2);
                jSONObject = jSONObject2;
                break;
            case 29:
                JSONObject jSONObject5 = c4762a.f17446d;
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
                                    long j = jSONObject5.getLong("value");
                                    long j2 = jSONObject5.getLong("extValue");
                                    try {
                                        jSONObject6.putOpt("ua_policy", Integer.valueOf(this.f17417n));
                                    } catch (Exception e) {
                                    }
                                    JSONObject jSONObject7 = jSONObject6;
                                    if ("click".equals(string2)) {
                                        jSONObject7 = m34088p(jSONObject6);
                                    }
                                    C4811e.m33873a(this.f17419p, string, C5438af.m32311a(this.f17415l), string2, j, j2, jSONObject7);
                                    jSONObject = jSONObject2;
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
            case 30:
                m34093n();
                jSONObject = jSONObject2;
                break;
            case 31:
                WeakReference<Context> weakReference3 = this.f17410g;
                jSONObject = jSONObject2;
                if (weakReference3 != null) {
                    Context context3 = weakReference3.get();
                    jSONObject = jSONObject2;
                    if (context3 != null) {
                        jSONObject = jSONObject2;
                        if (context3 instanceof AbstractC4687b) {
                            ((AbstractC4687b) context3).mo34500T();
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
        if (i == 1 && !TextUtils.isEmpty(c4762a.f17444b)) {
            m34126b(c4762a.f17444b, jSONObject);
            if (C4570g.m35020b().m34989s()) {
                StringBuilder sb2 = new StringBuilder("[JSB-RSP] version:");
                sb2.append(i);
                sb2.append(" data=");
                sb2.append(jSONObject);
            }
        }
        return jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message != null && message.what == 11 && (message.obj instanceof C4762a)) {
            try {
                m34155a((C4762a) message.obj, 1);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public void m34148a(C4833q c4833q) {
        this.f17402G = c4833q;
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4867b
    /* renamed from: a */
    public void mo33701a(String str, JSONObject jSONObject) {
        m34120c(str, jSONObject);
    }

    /* renamed from: a */
    public void m34134a(JSONObject jSONObject, final AbstractC4920c abstractC4920c) {
        if (abstractC4920c == null) {
            return;
        }
        try {
            if (this.f17419p != null && !TextUtils.isEmpty(this.f17414k)) {
                int m32284c = C5438af.m32284c(this.f17414k);
                AdSlot m35151n = this.f17419p.m35151n();
                C4559j c4559j = new C4559j();
                if (this.f17419p.m35134z() != null) {
                    c4559j.f16593e = 2;
                }
                JSONObject m35201ab = this.f17419p.m35201ab();
                JSONObject jSONObject2 = m35201ab;
                if (m35201ab == null) {
                    jSONObject2 = new JSONObject();
                }
                if (jSONObject != null) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject2.put(next, jSONObject.opt(next));
                    }
                }
                c4559j.f16595g = jSONObject2;
                C4600n.m34807f().mo34679a(m35151n, c4559j, m32284c, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.core.w.7
                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
                    /* renamed from: a */
                    public void mo34084a(int i, String str) {
                        abstractC4920c.mo33568a(false, null);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
                    /* renamed from: a */
                    public void mo34083a(C4545a c4545a) {
                        if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                            abstractC4920c.mo33568a(false, null);
                        } else {
                            abstractC4920c.mo33568a(true, c4545a.m35343b());
                        }
                    }
                });
                return;
            }
            abstractC4920c.mo33568a(false, null);
        } catch (Exception e) {
            C5478q.m32108c("TTAndroidObject", "get ads error", e);
        }
    }

    /* renamed from: a */
    public boolean m34163a() {
        C4557i c4557i = this.f17419p;
        return c4557i != null && c4557i.m35178e();
    }

    /* renamed from: a */
    public boolean m34161a(Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            if (!"bytedance".equals(uri.getScheme())) {
                return false;
            }
            return f17395f.containsKey(uri.getHost());
        } catch (Exception e) {
            return false;
        }
    }

    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            m34119c(jSONObject);
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            m34135a(jSONObject, 0);
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: b */
    public C4754w m34131b(int i) {
        this.f17415l = i;
        return this;
    }

    /* renamed from: b */
    public C4754w m34128b(SSWebView sSWebView) {
        this.f17408d = new WeakReference<>(sSWebView);
        return this;
    }

    /* renamed from: b */
    public C4754w m34127b(String str) {
        this.f17414k = str;
        return this;
    }

    /* renamed from: b */
    public C4754w m34125b(JSONObject jSONObject) {
        this.f17427x = jSONObject;
        return this;
    }

    /* renamed from: b */
    public C4754w m34124b(boolean z) {
        this.f17401F = z;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: b */
    public void m34130b(Uri uri) {
        ?? r19;
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if (!RecordService.PRIVATE_NUMBER_STRING.equals(host) && !"dispatch_message".equals(host)) {
                    C5478q.m32107d("TTAndroidObject", "handlrUir: not match schema host");
                    return;
                }
                m34107g(uri.toString());
                return;
            }
            String queryParameter = uri.getQueryParameter("category");
            String queryParameter2 = uri.getQueryParameter("tag");
            this.f17404I = queryParameter2;
            String queryParameter3 = uri.getQueryParameter("label");
            if (!m34113e(queryParameter3)) {
                return;
            }
            ?? r17 = false;
            try {
                r19 = Long.parseLong(uri.getQueryParameter("value"));
            } catch (Exception e) {
                r19 = false;
            }
            try {
                r17 = Long.parseLong(uri.getQueryParameter("ext_value"));
            } catch (Exception e2) {
            }
            String queryParameter4 = uri.getQueryParameter("extra");
            JSONObject jSONObject = null;
            if (!TextUtils.isEmpty(queryParameter4)) {
                try {
                    jSONObject = new JSONObject(queryParameter4);
                    try {
                        jSONObject.putOpt("ua_policy", Integer.valueOf(this.f17417n));
                    } catch (Exception e3) {
                    }
                } catch (Exception e4) {
                    jSONObject = null;
                }
            }
            if ("click".equals(queryParameter3)) {
                jSONObject = m34088p(jSONObject);
            }
            C4811e.m33873a(this.f17419p, queryParameter, m34110f(queryParameter2), queryParameter3, r19 == true ? 1L : 0L, r17 == true ? 1L : 0L, jSONObject);
        } catch (Exception e5) {
            C5478q.m32111b("TTAndroidObject", "handleUri exception: ", e5);
        }
    }

    /* renamed from: b */
    public boolean m34132b() {
        return this.f17407c;
    }

    /* renamed from: c */
    public C4754w m34121c(String str) {
        this.f17416m = str;
        return this;
    }

    /* renamed from: c */
    public C4754w m34118c(boolean z) {
        this.f17397B = z;
        return this;
    }

    /* renamed from: c */
    public void m34123c() {
        m34134a((JSONObject) null, new AbstractC4920c() { // from class: com.bytedance.sdk.openadsdk.core.w.6
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4920c
            /* renamed from: a */
            public void mo33568a(boolean z, List<C4557i> list) {
                C4754w.this.f17398C = list;
                C4754w.this.m34087q();
                C4754w.this.m34117d();
            }
        });
    }

    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                m34104h(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C4754w.this.m34104h(jSONObject);
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
                m34100j(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C4754w.this.m34100j(jSONObject);
                    }
                });
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    public void m34117d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("material", m34138a(this.f17398C));
            mo33701a("materialMeta", jSONObject);
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            m34096l(new JSONObject(str));
        } catch (Exception e) {
        }
    }

    /* renamed from: e */
    boolean m34114e() {
        C4557i c4557i = this.f17419p;
        return c4557i != null && c4557i.m35246A() == 1;
    }

    /* renamed from: f */
    public void m34111f() {
        AbstractC4868c abstractC4868c = this.f17411h;
        if (abstractC4868c != null) {
            abstractC4868c.mo33700a();
        }
        if (m34086r()) {
            m34123c();
        }
    }

    /* renamed from: g */
    public void m34108g() {
        AbstractC4868c abstractC4868c = this.f17411h;
        if (abstractC4868c != null) {
            abstractC4868c.mo33696b();
        }
    }

    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        m34102i(jSONObject);
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getTemplateInfo() {
        m34139a("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.f17422s;
            if (jSONObject != null) {
                jSONObject.put("setting", m34089p());
            }
            m34139a("getTemplateInfo", false);
            return this.f17422s.toString();
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: h */
    public void m34105h() {
        AbstractC4868c abstractC4868c = this.f17411h;
        if (abstractC4868c != null) {
            abstractC4868c.mo33694c();
        }
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                m34106g(jSONObject);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.w.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C4754w.this.m34106g(jSONObject);
                    }
                });
            }
        } catch (Exception e) {
            C5478q.m32106e("TTAndroidObject", "");
        }
    }

    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            m34098k(new JSONObject(str));
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void skipVideo() {
        m34093n();
    }
}
