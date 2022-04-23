package com.adbert.p015b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p013d.C1391a;
import com.aotter.net.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* renamed from: com.adbert.b.e */
/* loaded from: classes-dex2jar.jar:com/adbert/b/e.class */
public class C1439e extends RelativeLayout {

    /* renamed from: a */
    public WebView f747a;

    /* renamed from: b */
    public RelativeLayout f748b;

    /* renamed from: c */
    public C1377b f749c;

    public C1439e(Context context, final C1391a aVar, EnumC1382b bVar) {
        super(context);
        this.f747a = new WebView(context);
        this.f747a.setWebViewClient(new WebViewClient() { // from class: com.adbert.b.e.1
        });
        this.f747a.clearCache(true);
        WebSettings settings = this.f747a.getSettings();
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptEnabled(true);
        settings.setDefaultTextEncodingName(JsonRequest.PROTOCOL_CHARSET);
        settings.setCacheMode(2);
        this.f747a.setWebViewClient(new WebViewClient());
        this.f747a.setOnTouchListener(new View.OnTouchListener() { // from class: com.adbert.b.e.2
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return motionEvent.getAction() == 2;
            }
        });
        this.f747a.setBackgroundColor(0);
        this.f747a.setVerticalScrollBarEnabled(false);
        this.f747a.setHorizontalScrollBarEnabled(false);
        this.f747a.setVisibility(8);
        this.f747a.setWebViewClient(new WebViewClient() { // from class: com.adbert.b.e.3
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                C1439e.this.f747a.setVisibility(0);
                aVar.onPageFinished();
            }
        });
        addView(this.f747a, new RelativeLayout.LayoutParams(-1, -1));
        this.f748b = new RelativeLayout(context);
        addView(this.f748b, new RelativeLayout.LayoutParams(-1, -1));
        if (bVar != EnumC1382b.cpm_video) {
            this.f748b.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.e.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    for (int i = 0; i < 5; i++) {
                        if (C1439e.this.f749c.f414i[i]) {
                            aVar.endingCardAction(i);
                            return;
                        }
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m37055a(String str, C1377b bVar) {
        this.f749c = bVar;
        try {
            this.f747a.loadData(URLEncoder.encode("<!doctype html><html><head><meta charset=\"UTF-8\"><title>Untitled Document</title><style>body{\tmargin:0;\tpadding:0;\t}</style></head><body><div><img src=\"" + str + "\" width=\"100%\"//></div></body></html>", "utf8").replaceAll("\\+", " "), "text/html", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            C1402g.m37141a(e);
        }
    }

    public RelativeLayout getCover() {
        return this.f748b;
    }
}
