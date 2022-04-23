package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/d.class */
final class d extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(TwitterAuthConfig twitterAuthConfig, b<t> bVar, int i) {
        super(twitterAuthConfig, bVar, i);
    }

    @Override // com.twitter.sdk.android.core.identity.a
    public final boolean a(Activity activity) {
        Intent intent = new Intent(activity, OAuthActivity.class);
        intent.putExtra("auth_config", a());
        activity.startActivityForResult(intent, this.f35114a);
        return true;
    }
}
