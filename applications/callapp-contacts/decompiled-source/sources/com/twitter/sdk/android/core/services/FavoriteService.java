package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.b.c;
import retrofit2.b.e;
import retrofit2.b.f;
import retrofit2.b.o;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/FavoriteService.class */
public interface FavoriteService {
    @e
    @o(a = "/1.1/favorites/create.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> create(@c(a = "id") Long l, @c(a = "include_entities") Boolean bool);

    @e
    @o(a = "/1.1/favorites/destroy.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> destroy(@c(a = "id") Long l, @c(a = "include_entities") Boolean bool);

    @f(a = "/1.1/favorites/list.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> list(@t(a = "user_id") Long l, @t(a = "screen_name") String str, @t(a = "count") Integer num, @t(a = "since_id") String str2, @t(a = "max_id") String str3, @t(a = "include_entities") Boolean bool);
}
