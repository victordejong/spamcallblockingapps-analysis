package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.identity.C17226f;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.twitter.sdk.android.core.identity.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/c.class */
public final class C17220c implements C17226f.AbstractC17227a {

    /* renamed from: a */
    final AbstractC17223a f60963a;

    /* renamed from: b */
    TwitterAuthToken f60964b;

    /* renamed from: c */
    final WebView f60965c;

    /* renamed from: d */
    final TwitterAuthConfig f60966d;

    /* renamed from: e */
    final OAuth1aService f60967e;

    /* renamed from: f */
    private final ProgressBar f60968f;

    /* renamed from: com.twitter.sdk.android.core.identity.c$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/c$a.class */
    public interface AbstractC17223a {
        /* renamed from: a */
        void mo5698a(int i, Intent intent);
    }

    public C17220c(ProgressBar progressBar, WebView webView, TwitterAuthConfig twitterAuthConfig, OAuth1aService oAuth1aService, AbstractC17223a abstractC17223a) {
        this.f60968f = progressBar;
        this.f60965c = webView;
        this.f60966d = twitterAuthConfig;
        this.f60967e = oAuth1aService;
        this.f60963a = abstractC17223a;
    }

    /* renamed from: a */
    private void m5701a() {
        this.f60965c.stopLoading();
        m5699b();
    }

    /* renamed from: b */
    private void m5699b() {
        this.f60968f.setVisibility(8);
    }

    /* renamed from: a */
    public final void m5700a(int i, TwitterAuthException twitterAuthException) {
        Intent intent = new Intent();
        intent.putExtra("auth_error", twitterAuthException);
        this.f60963a.mo5698a(i, intent);
    }

    @Override // com.twitter.sdk.android.core.identity.C17226f.AbstractC17227a
    /* renamed from: a */
    public final void mo5697a(Bundle bundle) {
        C17282n.m5628c().mo5714a("Twitter", "OAuth web view completed successfully");
        String string = bundle.getString("oauth_verifier");
        if (string != null) {
            C17282n.m5628c().mo5714a("Twitter", "Converting the request token to an access token.");
            this.f60967e.m5654a(new AbstractC17206b<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.c.2
                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5601a(TwitterException twitterException) {
                    C17282n.m5628c().mo5713a("Twitter", "Failed to get access token", twitterException);
                    C17220c.this.m5700a(1, new TwitterAuthException("Failed to get access token"));
                }

                @Override // com.twitter.sdk.android.core.AbstractC17206b
                /* renamed from: a */
                public final void mo5600a(C17277k<OAuthResponse> c17277k) {
                    Intent intent = new Intent();
                    OAuthResponse oAuthResponse = c17277k.f61033a;
                    intent.putExtra("screen_name", oAuthResponse.userName);
                    intent.putExtra(AccessToken.USER_ID_KEY, oAuthResponse.userId);
                    intent.putExtra("tk", oAuthResponse.authToken.token);
                    intent.putExtra("ts", oAuthResponse.authToken.secret);
                    C17220c.this.f60963a.mo5698a(-1, intent);
                }
            }, this.f60964b, string);
        } else {
            C17282n.m5628c().mo5713a("Twitter", "Failed to get authorization, bundle incomplete ".concat(String.valueOf(bundle)), null);
            m5700a(1, new TwitterAuthException("Failed to get authorization, bundle incomplete"));
        }
        m5701a();
    }

    @Override // com.twitter.sdk.android.core.identity.C17226f.AbstractC17227a
    /* renamed from: a */
    public final void mo5696a(WebView webView) {
        m5699b();
        webView.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.core.identity.C17226f.AbstractC17227a
    /* renamed from: a */
    public final void mo5695a(C17232i c17232i) {
        C17282n.m5628c().mo5713a("Twitter", "OAuth web view completed with an error", c17232i);
        m5700a(1, new TwitterAuthException("OAuth web view completed with an error"));
        m5701a();
    }
}
