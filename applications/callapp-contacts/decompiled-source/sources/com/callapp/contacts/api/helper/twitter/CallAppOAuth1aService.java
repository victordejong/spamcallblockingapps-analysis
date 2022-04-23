package com.callapp.contacts.api.helper.twitter;

import android.net.Uri;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.internal.oauth.OAuth1aService;
import com.twitter.sdk.android.core.r;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppOAuth1aService.class */
class CallAppOAuth1aService extends OAuth1aService {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CallAppOAuth1aService(r rVar, g gVar) {
        super(rVar, gVar);
    }

    @Override // com.twitter.sdk.android.core.internal.oauth.OAuth1aService
    public final String a(TwitterAuthConfig twitterAuthConfig) {
        Uri.Builder buildUpon = Uri.parse("https://twitterauth.callapp.com").buildUpon();
        getTwitterCore();
        return buildUpon.appendQueryParameter("version", r.b()).appendQueryParameter("app", twitterAuthConfig.getConsumerKey()).build().toString();
    }
}
