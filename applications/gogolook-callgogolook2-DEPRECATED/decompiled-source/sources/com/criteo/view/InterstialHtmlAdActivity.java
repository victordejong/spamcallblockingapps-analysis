package com.criteo.view;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.criteo.Criteo;
import com.criteo.R;
import com.criteo.utils.CriteoCacheHelper;
import com.criteo.utils.PreferenceDataUtils;
/* loaded from: classes-dex2jar.jar:com/criteo/view/InterstialHtmlAdActivity.class */
public class InterstialHtmlAdActivity extends Activity implements View.OnClickListener {
    public static String BROADCAST_ACTION = "ONCLICK_ACTION";
    public static String BROADCAST_ON_CLOSE_ACTION = "ONCLOSE_ACTION";
    public int BTN_LOC;
    public String ZONE_ID;
    public boolean mTestMode;
    public WebView webView;

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        Intent intent = new Intent();
        intent.setAction(BROADCAST_ON_CLOSE_ACTION);
        sendBroadcast(intent);
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent();
        intent.setAction(BROADCAST_ON_CLOSE_ACTION);
        sendBroadcast(intent);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.criteo_htmlinterstial);
        this.webView = (WebView) findViewById(R.id.webview);
        this.mTestMode = getIntent().getBooleanExtra("TEST_MODE", false);
        this.ZONE_ID = getIntent().getStringExtra("ZONE_ID");
        String stringExtra = getIntent().getStringExtra("cache");
        String stringExtra2 = getIntent().getStringExtra("dfp");
        this.BTN_LOC = getIntent().getIntExtra("BTN_LOC", 0);
        ImageView imageView = (ImageView) findViewById(R.id.cancel);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.criteo.view.InterstialHtmlAdActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setAction(InterstialHtmlAdActivity.BROADCAST_ON_CLOSE_ACTION);
                InterstialHtmlAdActivity.this.sendBroadcast(intent);
                InterstialHtmlAdActivity.this.finish();
            }
        });
        ImageView imageView2 = (ImageView) findViewById(R.id.cancel_left);
        ImageView imageView3 = (ImageView) findViewById(R.id.cancel_right);
        ImageView imageView4 = (ImageView) findViewById(R.id.cancel_bottom_left);
        ImageView imageView5 = (ImageView) findViewById(R.id.cancel_bottom_right);
        imageView2.setOnClickListener(this);
        imageView3.setOnClickListener(this);
        imageView4.setOnClickListener(this);
        imageView5.setOnClickListener(this);
        int i = this.BTN_LOC;
        if (i == 1) {
            imageView2.setVisibility(0);
        } else if (i == 2) {
            imageView3.setVisibility(0);
        } else if (i == 3) {
            imageView4.setVisibility(0);
        } else if (i != 4) {
            imageView.setVisibility(0);
        } else {
            imageView5.setVisibility(0);
        }
        boolean z = this.mTestMode;
        if (!z) {
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
            this.webView.setScrollContainer(false);
            this.webView.setBackgroundColor(0);
            this.webView.setWebViewClient(new WebViewClient());
            this.webView.loadDataWithBaseURL(null, "<html><body style='text-align:center; horizontal-align:center; margin:0px; padding:0px;'><script>" + stringExtra + "</script></body></html>", "text/html", JsonRequest.PROTOCOL_CHARSET, null);
            if (stringExtra2.equalsIgnoreCase("dfp")) {
                CriteoCacheHelper.CleanCacheDfpInterstial(this, Criteo.ADType.INTERSTITIAL + this.ZONE_ID);
            } else {
                CriteoCacheHelper.CleanCacheDi(this, Criteo.ADType.INTERSTITIAL + this.ZONE_ID);
            }
            this.webView.setWebViewClient(new WebViewClient() { // from class: com.criteo.view.InterstialHtmlAdActivity.2
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    String displayAdCreative = PreferenceDataUtils.getDisplayAdCreative(InterstialHtmlAdActivity.this.getApplicationContext());
                    if (str != null && str.startsWith(displayAdCreative)) {
                        return false;
                    }
                    webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(268435456));
                    Intent intent = new Intent();
                    intent.setAction(InterstialHtmlAdActivity.BROADCAST_ACTION);
                    InterstialHtmlAdActivity.this.sendBroadcast(intent);
                    return true;
                }
            });
        } else if (z) {
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.setWebViewClient(new WebViewClient());
            this.webView.loadUrl("file:///android_asset/banner_ad.html");
        }
    }
}
