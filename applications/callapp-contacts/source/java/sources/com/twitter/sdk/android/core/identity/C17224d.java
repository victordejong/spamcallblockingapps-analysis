package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17292t;
import com.twitter.sdk.android.core.TwitterAuthConfig;
/* renamed from: com.twitter.sdk.android.core.identity.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/d.class */
final class C17224d extends AbstractC17218a {
    public C17224d(TwitterAuthConfig twitterAuthConfig, AbstractC17206b<C17292t> abstractC17206b, int i) {
        super(twitterAuthConfig, abstractC17206b, i);
    }

    @Override // com.twitter.sdk.android.core.identity.AbstractC17218a
    /* renamed from: a */
    public final boolean mo5694a(Activity activity) {
        Intent intent = new Intent(activity, OAuthActivity.class);
        intent.putExtra("auth_config", m5705a());
        activity.startActivityForResult(intent, this.f60959a);
        return true;
    }
}
