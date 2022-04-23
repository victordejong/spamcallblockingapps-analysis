package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.b.c;
import retrofit2.b.e;
import retrofit2.b.f;
import retrofit2.b.o;
import retrofit2.b.s;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/StatusesService.class */
public interface StatusesService {
    @e
    @o(a = "/1.1/statuses/destroy/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> destroy(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @f(a = "/1.1/statuses/home_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> homeTimeline(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "exclude_replies") Boolean bool2, @t(a = "contributor_details") Boolean bool3, @t(a = "include_entities") Boolean bool4);

    @f(a = "/1.1/statuses/lookup.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> lookup(@t(a = "id") String str, @t(a = "include_entities") Boolean bool, @t(a = "trim_user") Boolean bool2, @t(a = "map") Boolean bool3);

    @f(a = "/1.1/statuses/mentions_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> mentionsTimeline(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "contributor_details") Boolean bool2, @t(a = "include_entities") Boolean bool3);

    @e
    @o(a = "/1.1/statuses/retweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> retweet(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @f(a = "/1.1/statuses/retweets_of_me.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> retweetsOfMe(@t(a = "count") Integer num, @t(a = "since_id") Long l, @t(a = "max_id") Long l2, @t(a = "trim_user") Boolean bool, @t(a = "include_entities") Boolean bool2, @t(a = "include_user_entities") Boolean bool3);

    @f(a = "/1.1/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> show(@t(a = "id") Long l, @t(a = "trim_user") Boolean bool, @t(a = "include_my_retweet") Boolean bool2, @t(a = "include_entities") Boolean bool3);

    @e
    @o(a = "/1.1/statuses/unretweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> unretweet(@s(a = "id") Long l, @c(a = "trim_user") Boolean bool);

    @e
    @o(a = "/1.1/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> update(@c(a = "status") String str, @c(a = "in_reply_to_status_id") Long l, @c(a = "possibly_sensitive") Boolean bool, @c(a = "lat") Double d2, @c(a = "long") Double d3, @c(a = "place_id") String str2, @c(a = "display_coordinates") Boolean bool2, @c(a = "trim_user") Boolean bool3, @c(a = "media_ids") String str3);

    @f(a = "/1.1/statuses/user_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> userTimeline(@t(a = "user_id") Long l, @t(a = "screen_name") String str, @t(a = "count") Integer num, @t(a = "since_id") Long l2, @t(a = "max_id") Long l3, @t(a = "trim_user") Boolean bool, @t(a = "exclude_replies") Boolean bool2, @t(a = "contributor_details") Boolean bool3, @t(a = "include_rts") Boolean bool4);
}
