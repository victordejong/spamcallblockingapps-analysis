package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21044c;
import retrofit2.p606b.AbstractC21046e;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/FavoriteService.class */
public interface FavoriteService {
    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> create(@AbstractC21044c(m91a = "id") Long l, @AbstractC21044c(m91a = "include_entities") Boolean bool);

    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> destroy(@AbstractC21044c(m91a = "id") Long l, @AbstractC21044c(m91a = "include_entities") Boolean bool);

    @AbstractC21047f(m88a = "/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> list(@AbstractC21061t(m72a = "user_id") Long l, @AbstractC21061t(m72a = "screen_name") String str, @AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "since_id") String str2, @AbstractC21061t(m72a = "max_id") String str3, @AbstractC21061t(m72a = "include_entities") Boolean bool);
}
