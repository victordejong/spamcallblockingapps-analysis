package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.util.Map;
/* renamed from: com.twitter.sdk.android.core.internal.oauth.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/b.class */
public final class C17266b {
    /* renamed from: a */
    public static String m5648a(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return m5647b(twitterAuthConfig, twitterAuthToken, str, str2, str3, map).m5646a();
    }

    /* renamed from: b */
    private static C17267c m5647b(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return new C17267c(twitterAuthConfig, twitterAuthToken, str, str2, str3, map);
    }
}
