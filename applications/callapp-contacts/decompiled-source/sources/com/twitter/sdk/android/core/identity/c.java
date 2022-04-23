package com.twitter.sdk.android.core.identity;

import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.identity.f;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.internal.oauth.OAuthResponse;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.n;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/c.class */
final class c implements f.a {

    /* renamed from: a  reason: collision with root package name */
    final a f35118a;

    /* renamed from: b  reason: collision with root package name */
    TwitterAuthToken f35119b;

    /* renamed from: c  reason: collision with root package name */
    final WebView f35120c;

    /* renamed from: d  reason: collision with root package name */
    final TwitterAuthConfig f35121d;
    final OAuth1aService e;
    private final ProgressBar f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/c$a.class */
    public interface a {
        void a(int i, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ProgressBar progressBar, WebView webView, TwitterAuthConfig twitterAuthConfig, OAuth1aService oAuth1aService, a aVar) {
        this.f = progressBar;
        this.f35120c = webView;
        this.f35121d = twitterAuthConfig;
        this.e = oAuth1aService;
        this.f35118a = aVar;
    }

    private void a() {
        this.f35120c.stopLoading();
        b();
    }

    private void b() {
        this.f.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, TwitterAuthException twitterAuthException) {
        Intent intent = new Intent();
        intent.putExtra("auth_error", twitterAuthException);
        this.f35118a.a(i, intent);
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public final void a(Bundle bundle) {
        n.c().a("Twitter", "OAuth web view completed successfully");
        String string = bundle.getString("oauth_verifier");
        if (string != null) {
            n.c().a("Twitter", "Converting the request token to an access token.");
            this.e.a(new b<OAuthResponse>() { // from class: com.twitter.sdk.android.core.identity.c.2
                @Override // com.twitter.sdk.android.core.b
                public final void a(TwitterException twitterException) {
                    n.c().a("Twitter", "Failed to get access token", twitterException);
                    c.this.a(1, new TwitterAuthException("Failed to get access token"));
                }

                @Override // com.twitter.sdk.android.core.b
                public final void a(k<OAuthResponse> kVar) {
                    Intent intent = new Intent();
                    OAuthResponse oAuthResponse = kVar.f35182a;
                    intent.putExtra("screen_name", oAuthResponse.userName);
                    intent.putExtra(AccessToken.USER_ID_KEY, oAuthResponse.userId);
                    intent.putExtra("tk", oAuthResponse.authToken.token);
                    intent.putExtra("ts", oAuthResponse.authToken.secret);
                    c.this.f35118a.a(-1, intent);
                }
            }, this.f35119b, string);
        } else {
            n.c().a("Twitter", "Failed to get authorization, bundle incomplete ".concat(String.valueOf(bundle)), null);
            a(1, new TwitterAuthException("Failed to get authorization, bundle incomplete"));
        }
        a();
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public final void a(WebView webView) {
        b();
        webView.setVisibility(0);
    }

    @Override // com.twitter.sdk.android.core.identity.f.a
    public final void a(i iVar) {
        n.c().a("Twitter", "OAuth web view completed with an error", iVar);
        a(1, new TwitterAuthException("OAuth web view completed with an error"));
        a();
    }
}
