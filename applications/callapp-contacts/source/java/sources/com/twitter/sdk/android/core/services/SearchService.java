package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Search;
import com.twitter.sdk.android.core.services.p487a.C17290a;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/SearchService.class */
public interface SearchService {
    @AbstractC21047f(m88a = "/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Search> tweets(@AbstractC21061t(m72a = "q") String str, @AbstractC21061t(m72a = "geocode", m71b = true) C17290a c17290a, @AbstractC21061t(m72a = "lang") String str2, @AbstractC21061t(m72a = "locale") String str3, @AbstractC21061t(m72a = "result_type") String str4, @AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "until") String str5, @AbstractC21061t(m72a = "since_id") Long l, @AbstractC21061t(m72a = "max_id") Long l2, @AbstractC21061t(m72a = "include_entities") Boolean bool);
}
