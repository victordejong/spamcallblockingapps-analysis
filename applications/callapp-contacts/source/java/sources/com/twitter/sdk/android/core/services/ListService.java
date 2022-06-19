package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/ListService.class */
public interface ListService {
    @AbstractC21047f(m88a = "/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> statuses(@AbstractC21061t(m72a = "list_id") Long l, @AbstractC21061t(m72a = "slug") String str, @AbstractC21061t(m72a = "owner_screen_name") String str2, @AbstractC21061t(m72a = "owner_id") Long l2, @AbstractC21061t(m72a = "since_id") Long l3, @AbstractC21061t(m72a = "max_id") Long l4, @AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "include_entities") Boolean bool, @AbstractC21061t(m72a = "include_rts") Boolean bool2);
}
