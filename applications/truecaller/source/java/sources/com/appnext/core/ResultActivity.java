package com.appnext.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.appnext.base.C0472a;
import com.tenor.android.core.network.constant.Protocols;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/appnext/core/ResultActivity.class */
public class ResultActivity extends Activity {

    /* renamed from: dX */
    private Intent f1724dX;
    private WebView webView;

    /* renamed from: a */
    private static List m42490a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            arrayList.add(new ComponentName(activityInfo.packageName, activityInfo.name));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static /* synthetic */ void m42486b(ResultActivity resultActivity, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.addFlags(268435456);
        resultActivity.startActivity(intent);
    }

    /* renamed from: t */
    public static Intent m42485t(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return intent;
    }

    public final boolean hasNewResolver(Intent intent) {
        if (this.f1724dX == null) {
            return intent != null;
        } else if (intent == null) {
            return false;
        } else {
            List<ComponentName> m42490a = m42490a(this, intent);
            HashSet hashSet = new HashSet();
            hashSet.addAll(m42490a(this, this.f1724dX));
            for (ComponentName componentName : m42490a) {
                if (!hashSet.contains(componentName)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            WebView webView = this.webView;
            if (webView == null || !webView.canGoBack()) {
                super.onBackPressed();
            } else {
                this.webView.goBack();
            }
        } catch (Throwable th) {
            C0472a.m42577a("ResultActivity$onBackPressed", th);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        try {
            LinearLayout linearLayout = new LinearLayout(this);
            setContentView(linearLayout);
            linearLayout.setOrientation(1);
            WebView webView = new WebView(getApplicationContext());
            this.webView = webView;
            webView.getSettings().setTextZoom(100);
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.getSettings().setAppCacheEnabled(true);
            this.webView.getSettings().setDomStorageEnabled(true);
            this.webView.getSettings().setDatabaseEnabled(true);
            this.webView.getSettings().setMixedContentMode(0);
            this.webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
            this.webView.setLayerType(2, null);
            this.webView.setWebViewClient(new WebViewClient() { // from class: com.appnext.core.ResultActivity.1
                @Override // android.webkit.WebViewClient
                public final boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                    if (Build.VERSION.SDK_INT < 26 || renderProcessGoneDetail.didCrash()) {
                        return false;
                    }
                    if (ResultActivity.this.webView == null) {
                        return true;
                    }
                    ResultActivity.this.webView.destroy();
                    ResultActivity.this.webView = null;
                    return true;
                }

                @Override // android.webkit.WebViewClient
                public final boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    String str2;
                    if (str == null) {
                        return false;
                    }
                    try {
                        new StringBuilder("result page url ").append(str);
                        if (str.startsWith(Protocols.HTTP)) {
                            if (ResultActivity.this.hasNewResolver(ResultActivity.m42485t(str).setComponent(null))) {
                                ResultActivity.m42486b(ResultActivity.this, str);
                                return true;
                            }
                            webView2.loadUrl(str);
                            return true;
                        } else if (!str.startsWith("intent://")) {
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str));
                            if (ResultActivity.this.getPackageManager().queryIntentActivities(intent, 0).size() <= 0) {
                                return false;
                            }
                            ResultActivity.m42486b(ResultActivity.this, str);
                            return true;
                        } else {
                            Intent parseUri = Intent.parseUri(str, 1);
                            if (ResultActivity.this.getPackageManager().resolveActivity(parseUri, 65536) != null) {
                                ResultActivity.m42486b(ResultActivity.this, parseUri.getData().toString());
                                return true;
                            }
                            if (parseUri.getExtras() != null && parseUri.getExtras().containsKey("browser_fallback_url") && !parseUri.getExtras().getString("browser_fallback_url").equals("")) {
                                str2 = parseUri.getExtras().getString("browser_fallback_url");
                            } else if (!parseUri.getExtras().containsKey("market_referrer") || parseUri.getExtras().getString("market_referrer").equals("")) {
                                return true;
                            } else {
                                str2 = "market://details?id=" + parseUri.getPackage() + "&referrer=" + parseUri.getExtras().getString("market_referrer");
                            }
                            ResultActivity.m42486b(ResultActivity.this, str2);
                            return true;
                        }
                    } catch (Throwable th) {
                        C0472a.m42577a("ResultActivity$onCreate", th);
                        return false;
                    }
                }
            });
            linearLayout.addView(this.webView);
            this.webView.setLayoutParams(new LinearLayout.LayoutParams(-1, 0));
            ((LinearLayout.LayoutParams) this.webView.getLayoutParams()).weight = 1.0f;
            String string = getIntent().getExtras().getString("url");
            getIntent().getExtras().getString("title");
            new StringBuilder("loading result page ").append(string);
            Intent component = new Intent(m42485t(string)).setComponent(null);
            this.f1724dX = component;
            Intent selector = component.getSelector();
            if (selector != null) {
                selector.setComponent(null);
            }
            this.webView.loadUrl(string);
        } catch (Throwable th) {
            C0472a.m42577a("ResultActivity$onCreate", th);
            finish();
        }
    }
}
