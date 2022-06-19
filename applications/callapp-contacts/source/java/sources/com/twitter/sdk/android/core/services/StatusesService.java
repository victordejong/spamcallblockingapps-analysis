package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21044c;
import retrofit2.p606b.AbstractC21046e;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21060s;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/StatusesService.class */
public interface StatusesService {
    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/statuses/destroy/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> destroy(@AbstractC21060s(m74a = "id") Long l, @AbstractC21044c(m91a = "trim_user") Boolean bool);

    @AbstractC21047f(m88a = "/1.1/statuses/home_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> homeTimeline(@AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "since_id") Long l, @AbstractC21061t(m72a = "max_id") Long l2, @AbstractC21061t(m72a = "trim_user") Boolean bool, @AbstractC21061t(m72a = "exclude_replies") Boolean bool2, @AbstractC21061t(m72a = "contributor_details") Boolean bool3, @AbstractC21061t(m72a = "include_entities") Boolean bool4);

    @AbstractC21047f(m88a = "/1.1/statuses/lookup.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> lookup(@AbstractC21061t(m72a = "id") String str, @AbstractC21061t(m72a = "include_entities") Boolean bool, @AbstractC21061t(m72a = "trim_user") Boolean bool2, @AbstractC21061t(m72a = "map") Boolean bool3);

    @AbstractC21047f(m88a = "/1.1/statuses/mentions_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> mentionsTimeline(@AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "since_id") Long l, @AbstractC21061t(m72a = "max_id") Long l2, @AbstractC21061t(m72a = "trim_user") Boolean bool, @AbstractC21061t(m72a = "contributor_details") Boolean bool2, @AbstractC21061t(m72a = "include_entities") Boolean bool3);

    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/statuses/retweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> retweet(@AbstractC21060s(m74a = "id") Long l, @AbstractC21044c(m91a = "trim_user") Boolean bool);

    @AbstractC21047f(m88a = "/1.1/statuses/retweets_of_me.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> retweetsOfMe(@AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "since_id") Long l, @AbstractC21061t(m72a = "max_id") Long l2, @AbstractC21061t(m72a = "trim_user") Boolean bool, @AbstractC21061t(m72a = "include_entities") Boolean bool2, @AbstractC21061t(m72a = "include_user_entities") Boolean bool3);

    @AbstractC21047f(m88a = "/1.1/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> show(@AbstractC21061t(m72a = "id") Long l, @AbstractC21061t(m72a = "trim_user") Boolean bool, @AbstractC21061t(m72a = "include_my_retweet") Boolean bool2, @AbstractC21061t(m72a = "include_entities") Boolean bool3);

    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/statuses/unretweet/{id}.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> unretweet(@AbstractC21060s(m74a = "id") Long l, @AbstractC21044c(m91a = "trim_user") Boolean bool);

    @AbstractC21046e
    @AbstractC21056o(m79a = "/1.1/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<Tweet> update(@AbstractC21044c(m91a = "status") String str, @AbstractC21044c(m91a = "in_reply_to_status_id") Long l, @AbstractC21044c(m91a = "possibly_sensitive") Boolean bool, @AbstractC21044c(m91a = "lat") Double d, @AbstractC21044c(m91a = "long") Double d2, @AbstractC21044c(m91a = "place_id") String str2, @AbstractC21044c(m91a = "display_coordinates") Boolean bool2, @AbstractC21044c(m91a = "trim_user") Boolean bool3, @AbstractC21044c(m91a = "media_ids") String str3);

    @AbstractC21047f(m88a = "/1.1/statuses/user_timeline.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> userTimeline(@AbstractC21061t(m72a = "user_id") Long l, @AbstractC21061t(m72a = "screen_name") String str, @AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "since_id") Long l2, @AbstractC21061t(m72a = "max_id") Long l3, @AbstractC21061t(m72a = "trim_user") Boolean bool, @AbstractC21061t(m72a = "exclude_replies") Boolean bool2, @AbstractC21061t(m72a = "contributor_details") Boolean bool3, @AbstractC21061t(m72a = "include_rts") Boolean bool4);
}
