package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17270j;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.identity.C17220c;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/OAuthActivity.class */
public class OAuthActivity extends Activity implements C17220c.AbstractC17223a {

    /* renamed from: a */
    C17220c f60951a;

    /* renamed from: b */
    private ProgressBar f60952b;

    /* renamed from: c */
    private WebView f60953c;

    @Override // com.twitter.sdk.android.core.identity.C17220c.AbstractC17223a
    /* renamed from: a */
    public final void mo5698a(int i, Intent intent) {
        setResult(i, intent);
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f60951a.m5700a(0, new TwitterAuthException("Authorization failed, request was canceled."));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C17270j.C17275e.tw__activity_oauth);
        this.f60952b = (ProgressBar) findViewById(C17270j.C17274d.tw__spinner);
        this.f60953c = (WebView) findViewById(C17270j.C17274d.tw__web_view);
        int i = 0;
        boolean z = bundle != null ? bundle.getBoolean(EventConstants.PROGRESS, false) : true;
        ProgressBar progressBar = this.f60952b;
        if (!z) {
            i = 8;
        }
        progressBar.setVisibility(i);
        final C17220c c17220c = new C17220c(this.f60952b, this.f60953c, (TwitterAuthConfig) getIntent().getParcelableExtra("auth_config"), new OAuth1aService(C17288r.m5626a(), new C17254g()), this);
        this.f60951a = c17220c;
        C17282n.m5628c().mo5714a("Twitter", "Obtaining request token to start the sign in flow");
        c17220c.f60967e.m5655a(new AbstractC17206b<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.c.1
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                C17282n.m5628c().mo5713a("Twitter", "Failed to get request token", twitterException);
                c17220c.m5700a(1, new TwitterAuthException("Failed to get request token"));
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<OAuthResponse> c17277k) {
                c17220c.f60964b = c17277k.f61033a.authToken;
                String m5656a = c17220c.f60967e.m5656a(c17220c.f60964b);
                C17282n.m5628c().mo5714a("Twitter", "Redirecting user to web view to complete authorization flow");
                WebView webView = c17220c.f60965c;
                C17226f c17226f = new C17226f(c17220c.f60967e.mo5657a(c17220c.f60966d), c17220c);
                C17225e c17225e = new C17225e();
                WebSettings settings = webView.getSettings();
                settings.setAllowFileAccess(false);
                settings.setJavaScriptEnabled(false);
                settings.setSaveFormData(false);
                webView.setVerticalScrollBarEnabled(false);
                webView.setHorizontalScrollBarEnabled(false);
                webView.setWebViewClient(c17226f);
                webView.loadUrl(m5656a);
                webView.setVisibility(4);
                webView.setWebChromeClient(c17225e);
            }
        });
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f60952b.getVisibility() == 0) {
            bundle.putBoolean(EventConstants.PROGRESS, true);
        }
        super.onSaveInstanceState(bundle);
    }
}
