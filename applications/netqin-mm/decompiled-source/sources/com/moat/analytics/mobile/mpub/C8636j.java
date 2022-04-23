package com.moat.analytics.mobile.mpub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.moat.analytics.mobile.mpub.C8655s;
import com.moat.analytics.mobile.mpub.C8667w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p012b.p072q.p073a.C1134a;
/* renamed from: com.moat.analytics.mobile.mpub.j */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/j.class */
public class C8636j {

    /* renamed from: h */
    public final WeakReference<WebView> f33502h;

    /* renamed from: n */
    public final EnumC8640a f33508n;

    /* renamed from: a */
    public int f33495a = 0;

    /* renamed from: b */
    public boolean f33496b = false;

    /* renamed from: c */
    public boolean f33497c = false;

    /* renamed from: d */
    public final AtomicBoolean f33498d = new AtomicBoolean(false);

    /* renamed from: e */
    public boolean f33499e = false;

    /* renamed from: f */
    public boolean f33500f = false;

    /* renamed from: g */
    public boolean f33501g = false;

    /* renamed from: o */
    public final BroadcastReceiver f33509o = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.mpub.j.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                C8636j.this.m4910d();
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
            if (System.currentTimeMillis() - C8636j.this.f33505k > 30000) {
                C8636j.this.m4895i();
            }
        }
    };

    /* renamed from: p */
    public final BroadcastReceiver f33510p = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.mpub.j.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                C8636j.this.m4906e();
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }
    };

    /* renamed from: j */
    public final LinkedList<String> f33504j = new LinkedList<>();

    /* renamed from: m */
    public final List<String> f33507m = new ArrayList();

    /* renamed from: i */
    public final Map<AbstractC8618b, String> f33503i = new WeakHashMap();

    /* renamed from: k */
    public final long f33505k = System.currentTimeMillis();

    /* renamed from: l */
    public final String f33506l = String.format("javascript:(function(d,k){function l(){function d(a,b){var c=ipkn[b]||ipkn[kuea];if(c){var h=function(b){var c=b.b;c.ts=b.i;c.ticks=b.g;c.buffered=!0;a(c)};h(c.first);c.a.forEach(function(a){h(a)})}}function e(a){var b=a.a,c=a.c,h=a.b;a=a.f;var d=[];if(c)b[c]&&d.push(b[c].fn[0]);else for(key in b)if(b[key])for(var g=0,e=b[key].fn.length;g<e;g++)d.push(b[key].fn[g]);g=0;for(e=d.length;g<e;g++){var f=d[g];if('function'===typeof f)try{h?f(h):f()}catch(k){}a&&delete b[c]}}function f(a,b,c){'function'===typeof a&& (b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]},c===yhgt&&d(a,b))}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};ipkn={};csif={};this.h=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId;this.metadata=a};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea; c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.hgen=function(a,b){f(a,b||kuea,csif)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={a:iymv,b:a,c:ewat};briz?e(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={a:bjmk,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.egpw= function(a){var b=a||kuea;ryup[b]=!0;var c={a:uqaj,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.sglu=function(a){var b=a.adKey||kuea,c={a:yhgt,b:a.event||a,g:1,i:+new Date,f:!1};b!==kuea&&(c.c=a.adKey);a=0<Object.keys(yhgt).length;if(!a||!this.isNative)if(ipkn[b]){var d=ipkn[b].a.slice(-1)[0]||ipkn[b].first;JSON.stringify(c.b)==JSON.stringify(d.b)?d.g+=1:(5<=ipkn[b].a.length&&ipkn[b].a.shift(),ipkn[b].a.push(c))}else ipkn[b]={first:c,a:[]};a&&e(c);return a};this.ucbx=function(a){e({c:a.adKey||kuea,a:csif, b:a.event,f:!1})}}'undefined'===typeof d.MoatMAK&&(d.MoatMAK=new l,d.MoatMAK.h(k),d.__zMoatInit__=!0)})(window,%s);", m4897h());

    /* renamed from: com.moat.analytics.mobile.mpub.j$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/j$a.class */
    public enum EnumC8640a {
        WEBVIEW,
        NATIVE_DISPLAY,
        NATIVE_VIDEO
    }

    public C8636j(WebView webView, EnumC8640a aVar) {
        this.f33502h = new WeakReference<>(webView);
        this.f33508n = aVar;
        if (m4907d("Initialize")) {
            IntentFilter intentFilter = new IntentFilter("UPDATE_METADATA");
            IntentFilter intentFilter2 = new IntentFilter("UPDATE_VIEW_INFO");
            C1134a.m34598a(C8655s.m4833c()).m34599a(this.f33509o, intentFilter);
            C1134a.m34598a(C8655s.m4833c()).m34599a(this.f33510p, intentFilter2);
            m4910d();
            C8633i.m4938a().m4935a(C8655s.m4833c(), this);
            C8652p.m4848a(3, "JavaScriptBridge", this, "bridge initialization succeeded");
        }
    }

    /* renamed from: a */
    private boolean m4926a(WebView webView) {
        return webView.getSettings().getJavaScriptEnabled();
    }

    /* renamed from: b */
    public static /* synthetic */ int m4917b(C8636j jVar) {
        int i = jVar.f33495a;
        jVar.f33495a = i + 1;
        return i;
    }

    /* renamed from: c */
    private void m4914c() {
        for (Map.Entry<AbstractC8618b, String> entry : this.f33503i.entrySet()) {
            AbstractC8618b key = entry.getKey();
            if (key.m4974e()) {
                m4898g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", key.f33437e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4910d() {
        try {
            if (C8667w.m4813a().f33573a != C8667w.EnumC8675d.OFF) {
                if (!this.f33497c) {
                    C8652p.m4848a(3, "JavaScriptBridge", this, "Attempting to establish communication (setting environment variables).");
                    this.f33497c = true;
                }
                m4898g(this.f33506l);
            }
        } catch (Exception e) {
            C8652p.m4844a("JavaScriptBridge", this, "Attempt failed to establish communication (did not set environment variables).", e);
        }
    }

    /* renamed from: d */
    private void m4909d(AbstractC8618b bVar) {
        C8652p.m4848a(3, "JavaScriptBridge", this, "Stopping view update loop");
        if (bVar != null) {
            C8633i.m4938a().m4934a(bVar);
        }
    }

    /* renamed from: d */
    private boolean m4907d(String str) {
        WebView g = m4900g();
        if (g == null) {
            C8652p.m4848a(6, "JavaScriptBridge", this, "WebView is null. Can't " + str);
            throw new C8643m("WebView is null");
        } else if (m4926a(g)) {
            return true;
        } else {
            C8652p.m4848a(6, "JavaScriptBridge", this, "JavaScript is not enabled in the given WebView. Can't " + str);
            throw new C8643m("JavaScript is not enabled in the WebView");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m4906e() {
        try {
            if (C8667w.m4813a().f33573a != C8667w.EnumC8675d.OFF) {
                if (this.f33501g) {
                    C8652p.m4848a(3, "JavaScriptBridge", this, "Can't send info, already cleaned up");
                    return;
                }
                if (m4903f() && (!this.f33496b || m4900g().getUrl() != null)) {
                    if (m4900g().getUrl() != null) {
                        this.f33496b = true;
                    }
                    for (Map.Entry<AbstractC8618b, String> entry : this.f33503i.entrySet()) {
                        AbstractC8618b key = entry.getKey();
                        if (key == null || key.m4973f() == null) {
                            C8652p.m4848a(3, "JavaScriptBridge", this, "Tracker has no subject");
                            if (key != null && key.f33438f) {
                            }
                            m4913c(key);
                        }
                        if (key.m4974e()) {
                            if (!this.f33498d.get()) {
                                m4898g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", key.f33437e));
                            }
                            String format = String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.sglu(%s);}", key.m4971h());
                            if (Build.VERSION.SDK_INT >= 19) {
                                m4900g().evaluateJavascript(format, new ValueCallback<String>() { // from class: com.moat.analytics.mobile.mpub.j.1
                                    /* renamed from: a */
                                    public void onReceiveValue(String str) {
                                        String str2 = "null";
                                        if (str == null || str.equalsIgnoreCase("null") || str.equalsIgnoreCase("false")) {
                                            C8636j jVar = C8636j.this;
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("Received value is:");
                                            if (str != null) {
                                                str2 = "(String)" + str;
                                            }
                                            sb.append(str2);
                                            C8652p.m4848a(3, "JavaScriptBridge", jVar, sb.toString());
                                            if (C8636j.this.f33495a >= 150) {
                                                C8652p.m4848a(3, "JavaScriptBridge", C8636j.this, "Giving up on finding ad");
                                                C8636j.this.m4919b();
                                            }
                                            C8636j.m4917b(C8636j.this);
                                            if (str != null && str.equalsIgnoreCase("false") && !C8636j.this.f33499e) {
                                                C8636j.this.f33499e = true;
                                                C8652p.m4848a(3, "JavaScriptBridge", C8636j.this, "Bridge connection established");
                                            }
                                        } else if (str.equalsIgnoreCase("true")) {
                                            if (!C8636j.this.f33500f) {
                                                C8636j.this.f33500f = true;
                                                C8652p.m4848a(3, "JavaScriptBridge", C8636j.this, "Javascript has found ad");
                                                C8636j.this.m4927a();
                                            }
                                            C8636j.this.f33495a = 0;
                                        } else {
                                            C8652p.m4848a(3, "JavaScriptBridge", C8636j.this, "Received unusual value from Javascript:" + str);
                                        }
                                    }
                                });
                            } else {
                                m4900g().loadUrl(format);
                            }
                        }
                    }
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("WebView became null");
                sb.append(m4900g() == null ? "" : "based on null url");
                sb.append(", stopping tracking loop");
                C8652p.m4848a(3, "JavaScriptBridge", this, sb.toString());
                m4919b();
            }
        } catch (Exception e) {
            C8643m.m4879a(e);
            m4919b();
        }
    }

    /* renamed from: e */
    private void m4904e(String str) {
        if (this.f33507m.size() >= 50) {
            this.f33507m.subList(0, 25).clear();
        }
        this.f33507m.add(str);
    }

    /* renamed from: f */
    private void m4901f(String str) {
        if (this.f33498d.get()) {
            m4898g(str);
        } else {
            m4904e(str);
        }
    }

    /* renamed from: f */
    private boolean m4903f() {
        return m4900g() != null;
    }

    /* renamed from: g */
    private WebView m4900g() {
        return this.f33502h.get();
    }

    /* renamed from: g */
    private void m4898g(String str) {
        if (this.f33501g) {
            C8652p.m4848a(3, "JavaScriptBridge", this, "Can't send, already cleaned up");
        } else if (m4903f()) {
            C8652p.m4842b(2, "JavaScriptBridge", this, str);
            if (Build.VERSION.SDK_INT >= 19) {
                m4900g().evaluateJavascript(str, null);
            } else {
                m4900g().loadUrl(str);
            }
        }
    }

    /* renamed from: h */
    private String m4897h() {
        try {
            C8655s.C8657a d = C8655s.m4832d();
            C8655s.C8658b e = C8655s.m4831e();
            HashMap hashMap = new HashMap();
            String a = d.m4826a();
            String b = d.m4824b();
            String c = d.m4823c();
            String num = Integer.toString(Build.VERSION.SDK_INT);
            String b2 = C8655s.m4835b();
            String str = "0";
            String str2 = this.f33508n == EnumC8640a.WEBVIEW ? "0" : "1";
            String str3 = e.f33566e ? "1" : "0";
            String str4 = e.f33565d ? "1" : "0";
            if (!((C8641k) MoatAnalytics.getInstance()).m4891b()) {
                str = "1";
            }
            hashMap.put("versionHash", "9d24c90729bf464dce5d8fd1ace14a60656dbb2d");
            hashMap.put("appName", a);
            hashMap.put("namespace", "MPUB");
            hashMap.put("version", "2.4.5");
            hashMap.put("deviceOS", num);
            hashMap.put("isNative", str2);
            hashMap.put("appId", b);
            hashMap.put("source", c);
            hashMap.put("carrier", e.f33563b);
            hashMap.put("sim", e.f33562a);
            hashMap.put("phone", String.valueOf(e.f33564c));
            hashMap.put("buildFp", Build.FINGERPRINT);
            hashMap.put("buildModel", Build.MODEL);
            hashMap.put("buildMfg", Build.MANUFACTURER);
            hashMap.put("buildBrand", Build.BRAND);
            hashMap.put("buildProduct", Build.PRODUCT);
            hashMap.put("buildTags", Build.TAGS);
            hashMap.put("f1", str4);
            hashMap.put("f2", str3);
            hashMap.put("locationEnabled", str);
            if (b2 != null) {
                hashMap.put("aqzx", b2);
            }
            return new JSONObject(hashMap).toString();
        } catch (Exception e2) {
            return "{}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m4895i() {
        C8652p.m4848a(3, "JavaScriptBridge", this, "Stopping metadata reporting loop");
        C8633i.m4938a().m4932a(this);
        C1134a.m34598a(C8655s.m4833c()).m34600a(this.f33509o);
    }

    /* renamed from: a */
    public void m4927a() {
        C8652p.m4848a(3, "JavaScriptBridge", this, "webViewReady");
        if (this.f33498d.compareAndSet(false, true)) {
            C8652p.m4848a(3, "JavaScriptBridge", this, "webViewReady first time");
            m4895i();
            for (String str : this.f33507m) {
                m4898g(str);
            }
            this.f33507m.clear();
        }
        m4914c();
    }

    /* renamed from: a */
    public void m4925a(AbstractC8618b bVar) {
        if (bVar != null) {
            C8652p.m4848a(3, "JavaScriptBridge", this, "adding tracker" + bVar.f33437e);
            this.f33503i.put(bVar, "");
        }
    }

    /* renamed from: a */
    public void m4921a(String str) {
        m4901f(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.crts(%s);}", str));
    }

    /* renamed from: a */
    public void m4920a(String str, JSONObject jSONObject) {
        if (this.f33501g) {
            C8652p.m4848a(3, "JavaScriptBridge", this, "Can't dispatch, already cleaned up");
            return;
        }
        String jSONObject2 = jSONObject.toString();
        if (!this.f33498d.get() || !m4903f()) {
            this.f33504j.add(jSONObject2);
        } else {
            m4898g(String.format("javascript:%s.dispatchEvent(%s);", str, jSONObject2));
        }
    }

    /* renamed from: b */
    public void m4919b() {
        C8652p.m4848a(3, "JavaScriptBridge", this, "Cleaning up");
        this.f33501g = true;
        m4895i();
        for (Map.Entry<AbstractC8618b, String> entry : this.f33503i.entrySet()) {
            m4909d(entry.getKey());
        }
        this.f33503i.clear();
        C1134a.m34598a(C8655s.m4833c()).m34600a(this.f33510p);
    }

    /* renamed from: b */
    public void m4918b(AbstractC8618b bVar) {
        if (m4907d("startTracking")) {
            C8652p.m4848a(3, "JavaScriptBridge", this, "Starting tracking on tracker" + bVar.f33437e);
            m4898g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", bVar.f33437e));
            C8633i.m4938a().m4936a(C8655s.m4833c(), bVar);
        }
    }

    /* renamed from: b */
    public void m4915b(String str) {
        C8652p.m4848a(3, "JavaScriptBridge", this, "markUserInteractionEvent:" + str);
        m4901f(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.ucbx(%s);}", str));
    }

    /* renamed from: c */
    public void m4913c(AbstractC8618b bVar) {
        C8643m e = null;
        if (!this.f33501g) {
            try {
                e = null;
                if (m4907d("stopTracking")) {
                    try {
                        C8652p.m4848a(3, "JavaScriptBridge", this, "Ending tracking on tracker" + bVar.f33437e);
                        m4898g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.egpw(\"%s\");}", bVar.f33437e));
                        e = null;
                    } catch (Exception e2) {
                        C8652p.m4844a("JavaScriptBridge", this, "Failed to end impression.", e2);
                        e = null;
                    }
                }
            } catch (C8643m e3) {
                e = e3;
            }
            if (this.f33508n == EnumC8640a.NATIVE_DISPLAY) {
                m4909d(bVar);
            } else {
                m4919b();
            }
            this.f33503i.remove(bVar);
        }
        if (e != null) {
            throw e;
        }
    }

    /* renamed from: c */
    public void m4911c(String str) {
        C8652p.m4848a(3, "JavaScriptBridge", this, "flushDispatchQueue");
        if (this.f33504j.size() >= 200) {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < 10; i++) {
                linkedList.addFirst(this.f33504j.removeFirst());
            }
            int min = Math.min(Math.min(this.f33504j.size() / 200, 10) + 200, this.f33504j.size());
            for (int i2 = 0; i2 < min; i2++) {
                this.f33504j.removeFirst();
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                this.f33504j.addFirst((String) it.next());
            }
        }
        if (!this.f33504j.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String str2 = "";
            int i3 = 1;
            while (!this.f33504j.isEmpty() && i3 < 200) {
                i3++;
                String removeFirst = this.f33504j.removeFirst();
                if (sb.length() + removeFirst.length() > 2000) {
                    break;
                }
                sb.append(str2);
                sb.append(removeFirst);
                str2 = ",";
            }
            m4898g(String.format("javascript:%s.dispatchMany([%s])", str, sb.toString()));
        }
        this.f33504j.clear();
    }

    public void finalize() {
        try {
            super.finalize();
            C8652p.m4848a(3, "JavaScriptBridge", this, "finalize");
            m4919b();
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }
}
