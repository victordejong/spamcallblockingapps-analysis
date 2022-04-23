package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.identity.c;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.j;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/OAuthActivity.class */
public class OAuthActivity extends Activity implements c.a {

    /* renamed from: a  reason: collision with root package name */
    c f35106a;

    /* renamed from: b  reason: collision with root package name */
    private ProgressBar f35107b;

    /* renamed from: c  reason: collision with root package name */
    private WebView f35108c;

    @Override // com.twitter.sdk.android.core.identity.c.a
    public final void a(int i, Intent intent) {
        setResult(i, intent);
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f35106a.a(0, new TwitterAuthException("Authorization failed, request was canceled."));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(j.e.tw__activity_oauth);
        this.f35107b = (ProgressBar) findViewById(j.d.tw__spinner);
        this.f35108c = (WebView) findViewById(j.d.tw__web_view);
        int i = 0;
        boolean z = bundle != null ? bundle.getBoolean(EventConstants.PROGRESS, false) : true;
        ProgressBar progressBar = this.f35107b;
        if (!z) {
            i = 8;
        }
        progressBar.setVisibility(i);
        final c cVar = new c(this.f35107b, this.f35108c, (TwitterAuthConfig) getIntent().getParcelableExtra("auth_config"), new OAuth1aService(r.a(), new g()), this);
        this.f35106a = cVar;
        n.c().a("Twitter", "Obtaining request token to start the sign in flow");
        cVar.e.a(new b<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.c.1
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                n.c().a("Twitter", "Failed to get request token", twitterException);
                cVar.a(1, new TwitterAuthException("Failed to get request token"));
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(k<OAuthResponse> kVar) {
                cVar.f35119b = kVar.f35182a.authToken;
                String a2 = cVar.e.a(cVar.f35119b);
                n.c().a("Twitter", "Redirecting user to web view to complete authorization flow");
                WebView webView = cVar.f35120c;
                f fVar = new f(cVar.e.a(cVar.f35121d), cVar);
                e eVar = new e();
                WebSettings settings = webView.getSettings();
                settings.setAllowFileAccess(false);
                settings.setJavaScriptEnabled(false);
                settings.setSaveFormData(false);
                webView.setVerticalScrollBarEnabled(false);
                webView.setHorizontalScrollBarEnabled(false);
                webView.setWebViewClient(fVar);
                webView.loadUrl(a2);
                webView.setVisibility(4);
                webView.setWebChromeClient(eVar);
            }
        });
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f35107b.getVisibility() == 0) {
            bundle.putBoolean(EventConstants.PROGRESS, true);
        }
        super.onSaveInstanceState(bundle);
    }
}
