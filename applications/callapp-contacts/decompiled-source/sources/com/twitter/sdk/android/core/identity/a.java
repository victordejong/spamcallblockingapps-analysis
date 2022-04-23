package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final int f35114a;

    /* renamed from: b  reason: collision with root package name */
    private final TwitterAuthConfig f35115b;

    /* renamed from: c  reason: collision with root package name */
    private final b<t> f35116c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TwitterAuthConfig twitterAuthConfig, b<t> bVar, int i) {
        this.f35115b = twitterAuthConfig;
        this.f35116c = bVar;
        this.f35114a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TwitterAuthConfig a() {
        return this.f35115b;
    }

    public final boolean a(int i, int i2, Intent intent) {
        if (this.f35114a != i) {
            return false;
        }
        b<t> bVar = this.f35116c;
        if (bVar == null) {
            return true;
        }
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra("tk");
            String stringExtra2 = intent.getStringExtra("ts");
            String stringExtra3 = intent.getStringExtra("screen_name");
            bVar.a(new k<>(new t(new TwitterAuthToken(stringExtra, stringExtra2), intent.getLongExtra(AccessToken.USER_ID_KEY, 0L), stringExtra3), null));
            return true;
        } else if (intent == null || !intent.hasExtra("auth_error")) {
            bVar.a(new TwitterAuthException("Authorize failed."));
            return true;
        } else {
            bVar.a((TwitterAuthException) intent.getSerializableExtra("auth_error"));
            return true;
        }
    }

    public abstract boolean a(Activity activity);
}
