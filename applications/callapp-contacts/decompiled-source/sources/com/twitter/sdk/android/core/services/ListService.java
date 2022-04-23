package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Tweet;
import java.util.List;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/ListService.class */
public interface ListService {
    @f(a = "/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<List<Tweet>> statuses(@t(a = "list_id") Long l, @t(a = "slug") String str, @t(a = "owner_screen_name") String str2, @t(a = "owner_id") Long l2, @t(a = "since_id") Long l3, @t(a = "max_id") Long l4, @t(a = "count") Integer num, @t(a = "include_entities") Boolean bool, @t(a = "include_rts") Boolean bool2);
}
