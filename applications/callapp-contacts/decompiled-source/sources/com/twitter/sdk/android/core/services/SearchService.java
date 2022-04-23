package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Search;
import com.twitter.sdk.android.core.services.a.a;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/SearchService.class */
public interface SearchService {
    @f(a = "/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Search> tweets(@t(a = "q") String str, @t(a = "geocode", b = true) a aVar, @t(a = "lang") String str2, @t(a = "locale") String str3, @t(a = "result_type") String str4, @t(a = "count") Integer num, @t(a = "until") String str5, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "include_entities") Boolean bool);
}
