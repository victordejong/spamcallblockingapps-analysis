package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.appsflyer.internal.referrer.Payload;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URLConnection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.gl */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gl.class */
public final class C3162gl extends FrameLayout {

    /* renamed from: a */
    public static final String f5190a = C3162gl.class.getSimpleName();

    /* renamed from: d */
    public static final String f5191d = String.format("Javascript:sendMessage('%s');", "{{MESSAGE}}");

    /* renamed from: b */
    public AbstractC3506u f5192b;

    /* renamed from: c */
    public ProgressBar f5193c;

    /* renamed from: e */
    public C3157gg f5194e;

    /* renamed from: f */
    public ImageView f5195f;

    /* renamed from: g */
    public AbstractC3170d f5196g;

    /* renamed from: com.flurry.sdk.gl$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gl$a.class */
    public static final class C3166a {
        public C3166a() {
        }

        public /* synthetic */ C3166a(byte b) {
            this();
        }
    }

    /* renamed from: com.flurry.sdk.gl$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gl$b.class */
    public interface AbstractC3169b {
        /* renamed from: a */
        void mo32942a();

        /* renamed from: a */
        void mo32941a(String str);
    }

    /* renamed from: com.flurry.sdk.gl$d */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gl$d.class */
    public interface AbstractC3170d {
        /* renamed from: a */
        void mo32940a();
    }

    /* renamed from: com.flurry.sdk.gl$e */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gl$e.class */
    public final class C3171e {
        public C3171e(C3162gl glVar) {
        }
    }

    public C3162gl(Context context) {
        super(context);
        setBackgroundColor(0);
        this.f5194e = new C3157gg(context);
        this.f5194e.setVisibility(8);
        this.f5194e.setWebViewClient(new WebViewClient() { // from class: com.flurry.sdk.gl.1

            /* renamed from: b */
            public boolean f5198b = false;

            @TargetApi(21)
            /* renamed from: a */
            public final WebResourceResponse m32943a(Uri uri) {
                String uri2 = uri.toString();
                if (C3484p.m32358a().f6006h.m33630e(uri2) != null) {
                    File e = C3484p.m32358a().f6006h.m33631e(C3162gl.this.f5192b, uri2);
                    if (e != null) {
                        try {
                            if (e.length() == 0) {
                                String str = C3162gl.f5190a;
                                C3356jq.m32615a(5, str, "Failed to load requested asset for url: " + uri2 + ". Cached file length: " + e.length());
                                return null;
                            }
                            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(uri.getPath());
                            FileInputStream fileInputStream = new FileInputStream(e);
                            if (!C3017ed.m33282a(21)) {
                                return new WebResourceResponse(guessContentTypeFromName, "UTF-8", fileInputStream);
                            }
                            HashMap hashMap = new HashMap(1);
                            hashMap.put("Access-Control-Allow-Origin", "*");
                            return new WebResourceResponse(guessContentTypeFromName, "UTF-8", 200, Payload.RESPONSE_OK, hashMap, fileInputStream);
                        } catch (FileNotFoundException e2) {
                            String str2 = C3162gl.f5190a;
                            C3356jq.m32614a(6, str2, "Error loading cached asset for url: " + uri2, e2);
                            return null;
                        }
                    } else {
                        String str3 = C3162gl.f5190a;
                        C3356jq.m32615a(4, str3, "No cached asset file found for url: " + uri2);
                        return null;
                    }
                } else {
                    String str4 = C3162gl.f5190a;
                    C3356jq.m32615a(4, str4, "No cached asset found for url: " + uri2);
                    return null;
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (!this.f5198b) {
                    this.f5198b = true;
                    C3162gl.this.f5194e.setVisibility(0);
                    C3162gl.this.f5195f.setVisibility(0);
                    if (C3162gl.this.f5193c != null) {
                        C3162gl.this.f5193c.setVisibility(8);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                return m32943a(webResourceRequest.getUrl());
            }

            @Override // android.webkit.WebViewClient
            public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return m32943a(Uri.parse(str));
            }
        });
        WebSettings settings = this.f5194e.getSettings();
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setUseWideViewPort(false);
        addView(this.f5194e);
        int b = C3442ky.m32483b(30);
        int b2 = C3442ky.m32483b(7);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(b, b);
        layoutParams.topMargin = b2;
        layoutParams.leftMargin = b2;
        this.f5195f = new ImageView(context);
        this.f5195f.setLayoutParams(layoutParams);
        this.f5195f.setImageBitmap(C3156ge.m32963d());
        this.f5195f.setBackgroundColor(0);
        this.f5195f.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f5195f.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.gl.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3162gl.this.m32954a();
            }
        });
        this.f5195f.setVisibility(8);
        addView(this.f5195f);
    }

    /* renamed from: a */
    public final void m32954a() {
        m32953a(EnumC2874bi.EV_AD_CLOSED);
        AbstractC3170d dVar = this.f5196g;
        if (dVar != null) {
            dVar.mo32940a();
        }
    }

    /* renamed from: a */
    public final void m32953a(EnumC2874bi biVar) {
        String str = f5190a;
        C3356jq.m32613a(str, "Fired event: " + biVar);
        Map emptyMap = Collections.emptyMap();
        Context context = getContext();
        AbstractC3506u uVar = this.f5192b;
        C3007du.m33321a(biVar, emptyMap, context, uVar, uVar.f6064h, 0);
    }

    @TargetApi(19)
    /* renamed from: a */
    public final void m32950a(String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("topic", str);
            if (obj != null) {
                jSONObject.put("data", obj);
            }
            String replace = f5191d.replace("{{MESSAGE}}", jSONObject.toString());
            if (C3017ed.m33282a(19)) {
                this.f5194e.evaluateJavascript(replace, null);
            } else {
                this.f5194e.loadUrl(replace);
            }
            String str2 = f5190a;
            C3356jq.m32606c(str2, "Sent message: " + replace);
        } catch (Exception e) {
            C3356jq.m32612a(f5190a, "Error sending message", e);
        }
    }

    @SuppressLint({"AddJavascriptInterface"})
    /* renamed from: a */
    public final void m32949a(String str, String str2) {
        String replace = "<!DOCTYPE html>\n<html>\n    <head>\n        <title></title>\n        <style>body {padding: 0;margin: 0;} html, body { height: 100%}</style>\n        <script>\n            function receiveMessage(event) {\n                FlurryNativeInterface.receiveMessage(JSON.stringify(event.data));\n            }\n            function sendMessage(msg) {\n                iframe = document.getElementById('adframe');\n                iframe.contentWindow.postMessage(JSON.parse(msg), '*');\n            }\n            window.addEventListener(\"message\", receiveMessage, false);\n        </script>\n    </head>\n    <body>\n        <iframe id=\"adframe\" height=\"100%\" width=\"100%\" frameborder=\"0\" srcdoc=\"{{EMBED}}\"/>\n    </body>\n</html>".replace("{{EMBED}}", str.replace("{{SERVING_PAYLOAD_TOKEN}}", str2).replace("{{CSS_OVERRIDES_TOKEN}}", "").replace("\"", "&quot;"));
        this.f5194e.addJavascriptInterface(new C3171e(this), "FlurryNativeInterface");
        this.f5194e.loadDataWithBaseURL("http://www.yahoo.com", replace, "text/html", "UTF-8", null);
    }

    public final void setAdObject(AbstractC3506u uVar) {
        this.f5192b = uVar;
    }

    public final void setOnCloseListener(AbstractC3170d dVar) {
        this.f5196g = dVar;
    }
}
