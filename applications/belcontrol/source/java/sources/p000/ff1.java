package p000;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.bouncycastle.asn1.x509.DisplayText;
import org.json.JSONObject;
/* renamed from: ff1 */
/* loaded from: classes3-dex2jar.jar:ff1.class */
public class ff1 {

    /* renamed from: a */
    public final String f6616a;

    /* renamed from: c */
    public WeakReference<Context> f6618c;

    /* renamed from: d */
    public WeakReference<View> f6619d;

    /* renamed from: e */
    public final re1 f6620e;

    /* renamed from: f */
    public final mf1 f6621f;

    /* renamed from: g */
    public pf1 f6622g;

    /* renamed from: h */
    public WebView f6623h;

    /* renamed from: j */
    public boolean f6625j;

    /* renamed from: b */
    public final String f6617b = String.format("_moatTracker%d", Integer.valueOf((int) (Math.random() * 1.0E8d)));

    /* renamed from: k */
    public final LinkedList<String> f6626k = new LinkedList<>();

    /* renamed from: i */
    public boolean f6624i = false;

    /* renamed from: ff1$a */
    /* loaded from: classes3-dex2jar.jar:ff1$a.class */
    public class C1427a extends WebViewClient {
        public C1427a() {
            ff1.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (!ff1.this.f6624i) {
                try {
                    ff1.this.f6624i = true;
                    ff1 ff1Var = ff1.this;
                    View view = (View) ff1Var.f6619d.get();
                    WebView webView2 = ff1.this.f6623h;
                    ff1 ff1Var2 = ff1.this;
                    ff1Var.f6622g = new qf1(view, webView2, true, ff1Var2.f6620e, ff1Var2.f6621f);
                    ff1.this.f6622g.mo805a();
                    ff1.this.m1761g();
                } catch (Exception e) {
                    uf1.m397a(e);
                }
            }
        }
    }

    public ff1(String str, mf1 mf1Var, re1 re1Var) {
        this.f6616a = str;
        this.f6621f = mf1Var;
        this.f6620e = re1Var;
        this.f6618c = new WeakReference<>(re1Var.mo573c());
    }

    /* renamed from: e */
    public void m1763e() {
        if (!this.f6625j) {
            pf1 pf1Var = this.f6622g;
            if (pf1Var != null) {
                pf1Var.mo804c();
                this.f6622g = null;
            }
            WebView webView = this.f6623h;
            if (webView != null) {
                webView.loadUrl("about:blank");
                this.f6623h.destroy();
                this.f6623h = null;
            }
            this.f6625j = true;
        }
    }

    /* renamed from: f */
    public void m1762f(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        if (!this.f6624i || this.f6623h == null) {
            this.f6626k.add(jSONObject2);
        } else {
            this.f6623h.loadUrl(String.format("javascript:%s.dispatchEvent(%s);", this.f6617b, jSONObject2));
        }
    }

    /* renamed from: g */
    public void m1761g() {
        if (this.f6626k.size() >= 200) {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < 10; i++) {
                linkedList.addFirst(this.f6626k.removeFirst());
            }
            int min = Math.min(Math.min(this.f6626k.size() / DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, 10) + DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, this.f6626k.size());
            for (int i2 = 0; i2 < min; i2++) {
                this.f6626k.removeFirst();
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                this.f6626k.addFirst((String) it.next());
            }
        }
        int i3 = 0;
        while (!this.f6626k.isEmpty() && i3 < 200) {
            int i4 = i3 + 1;
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            while (true) {
                i3 = i4;
                if (!this.f6626k.isEmpty()) {
                    i3 = i4;
                    if (i4 < 200) {
                        i4++;
                        String first = this.f6626k.getFirst();
                        if (sb.length() + first.length() > 2000) {
                            i3 = i4;
                            break;
                        }
                        this.f6626k.removeFirst();
                        if (z) {
                            z = false;
                        } else {
                            sb.append(",");
                        }
                        sb.append(first);
                    }
                }
            }
            m1760h(String.format("javascript:%s.dispatchMany([%s])", this.f6617b, sb.toString()));
        }
        this.f6626k.clear();
    }

    /* renamed from: h */
    public void m1760h(String str) {
        this.f6623h.loadUrl(str);
    }

    /* renamed from: i */
    public void m1759i(View view, Map<String, String> map, Integer num, Integer num2, Integer num3) {
        this.f6619d = new WeakReference<>(view);
        WebView webView = new WebView(this.f6618c.get());
        this.f6623h = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSaveFormData(false);
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (i >= 21) {
            settings.setMixedContentMode(1);
        }
        this.f6623h.setWebViewClient(new C1427a());
        this.f6623h.loadData(String.format("<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%s');var moatapi = {'dropTime':%d,'adData': {'ids': ids, 'duration': duration, 'url': 'n/a'},'dispatchEvent': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},'dispatchMany': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {'value': moatapi});var s = document.createElement('script');s.src = 'https://z.moatads.com/' + pcode + '/moatvideo.js?' + apiname + '#' + apiname;document.body.appendChild(s);})('%s', '%s', %s, %s);</script></body></html>", "mianahwvc", num, num2, "mianahwvc", Long.valueOf(System.currentTimeMillis()), this.f6617b, this.f6616a, new JSONObject(map).toString(), num3), "text/html", null);
    }
}
