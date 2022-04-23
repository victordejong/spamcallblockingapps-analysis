package com.moat.analytics.mobile.inm;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.volley.toolbox.JsonRequest;
import com.moat.analytics.mobile.inm.C8555j;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.inm.g */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/g.class */
public class C8543g {

    /* renamed from: a */
    public WebView f33241a;

    /* renamed from: b */
    public C8555j f33242b;

    /* renamed from: d */
    public final EnumC8548a f33244d;

    /* renamed from: f */
    public Handler f33246f;

    /* renamed from: g */
    public Runnable f33247g;

    /* renamed from: e */
    public boolean f33245e = false;

    /* renamed from: c */
    public final String f33243c = String.format(Locale.ROOT, "_moatTracker%d", Integer.valueOf((int) (Math.random() * 1.0E8d)));

    /* renamed from: com.moat.analytics.mobile.inm.g$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/g$a.class */
    public enum EnumC8548a {
        DISPLAY,
        VIDEO
    }

    public C8543g(Context context, EnumC8548a aVar) {
        this.f33244d = aVar;
        WebView webView = new WebView(context);
        this.f33241a = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSaveFormData(false);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(1);
        }
        try {
            this.f33242b = new C8555j(this.f33241a, aVar == EnumC8548a.VIDEO ? C8555j.EnumC8559a.NATIVE_VIDEO : C8555j.EnumC8559a.NATIVE_DISPLAY);
        } catch (C8562m e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: a */
    public static String m5204a(String str, String str2, Integer num, Integer num2, JSONObject jSONObject, Integer num3) {
        return String.format(Locale.ROOT, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%s');var moatapi = {'dropTime':%d,'adData': {'ids': ids, 'duration': duration, 'url': 'n/a'},'dispatchEvent': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},'dispatchMany': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {'value': moatapi});var s = document.createElement('script');s.src = 'https://z.moatads.com/' + pcode + '/moatvideo.js?' + apiname + '#' + apiname;document.body.appendChild(s);})('%s', '%s', %s, %s);</script></body></html>", "mianahwvc", num, num2, "mianahwvc", Long.valueOf(System.currentTimeMillis()), str, str2, jSONObject.toString(), num3);
    }

    /* renamed from: b */
    public static String m5201b(String str) {
        return "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/" + str + "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>";
    }

    /* renamed from: a */
    public void m5208a() {
        C8571p.m5104a(3, "GlobalWebView", this, "Cleaning up");
        this.f33242b.m5175b();
        this.f33242b = null;
        this.f33241a.destroy();
        this.f33241a = null;
    }

    /* renamed from: a */
    public void m5205a(String str) {
        if (this.f33244d == EnumC8548a.DISPLAY) {
            this.f33241a.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.inm.g.1
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str2) {
                    if (!C8543g.this.f33245e) {
                        try {
                            C8543g.this.f33245e = true;
                            C8543g.this.f33242b.m5183a();
                        } catch (Exception e) {
                            C8562m.m5135a(e);
                        }
                    }
                }
            });
            this.f33241a.loadData(m5201b(str), "text/html", JsonRequest.PROTOCOL_CHARSET);
        }
    }

    /* renamed from: a */
    public void m5203a(String str, Map<String, String> map, Integer num, Integer num2, Integer num3) {
        if (this.f33244d == EnumC8548a.VIDEO) {
            if (Build.VERSION.SDK_INT >= 19) {
                C8571p.m5104a(3, "GlobalWebView", this, "Starting off polling interval to check for Video API instance presence");
                this.f33246f = new Handler();
                Runnable runnable = new Runnable() { // from class: com.moat.analytics.mobile.inm.g.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (C8543g.this.f33241a != null && Build.VERSION.SDK_INT >= 19) {
                                WebView webView = C8543g.this.f33241a;
                                webView.evaluateJavascript("typeof " + C8543g.this.f33243c + " !== 'undefined'", new ValueCallback<String>() { // from class: com.moat.analytics.mobile.inm.g.2.1
                                    /* renamed from: a */
                                    public void onReceiveValue(String str2) {
                                        if ("true".equals(str2)) {
                                            C8571p.m5104a(3, "GlobalWebView", this, String.format("Video API instance %s detected. Flushing event queue", C8543g.this.f33243c));
                                            try {
                                                C8543g.this.f33245e = true;
                                                C8543g.this.f33242b.m5183a();
                                                C8543g.this.f33242b.m5167c(C8543g.this.f33243c);
                                            } catch (Exception e) {
                                                C8562m.m5135a(e);
                                            }
                                        } else {
                                            C8543g.this.f33246f.postDelayed(C8543g.this.f33247g, 200L);
                                        }
                                    }
                                });
                            }
                        } catch (Exception e) {
                            C8562m.m5135a(e);
                        }
                    }
                };
                this.f33247g = runnable;
                this.f33246f.post(runnable);
            } else {
                C8571p.m5104a(3, "GlobalWebView", this, "Android API version is less than KitKat: " + Build.VERSION.SDK_INT);
                this.f33241a.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.inm.g.3
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str2) {
                        if (!C8543g.this.f33245e) {
                            C8571p.m5104a(3, "GlobalWebView", this, "onPageFinished is called for the first time. Flushing event queue");
                            try {
                                C8543g.this.f33245e = true;
                                C8543g.this.f33242b.m5183a();
                                C8543g.this.f33242b.m5167c(C8543g.this.f33243c);
                            } catch (Exception e) {
                                C8562m.m5135a(e);
                            }
                        }
                    }
                });
            }
            this.f33241a.loadData(m5204a(this.f33243c, str, num, num2, new JSONObject(map), num3), "text/html", null);
        }
    }
}
