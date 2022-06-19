package com.callapp.contacts.api.helper.twitter;

import android.net.Uri;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppOAuth1aService.class */
class CallAppOAuth1aService extends OAuth1aService {
    public CallAppOAuth1aService(C17288r c17288r, C17254g c17254g) {
        super(c17288r, c17254g);
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth1aService
    /* renamed from: a */
    public final String mo5657a(TwitterAuthConfig twitterAuthConfig) {
        Uri.Builder buildUpon = Uri.parse("https://twitterauth.callapp.com").buildUpon();
        getTwitterCore();
        return buildUpon.appendQueryParameter("version", C17288r.m5624b()).appendQueryParameter("app", twitterAuthConfig.getConsumerKey()).build().toString();
    }
}
