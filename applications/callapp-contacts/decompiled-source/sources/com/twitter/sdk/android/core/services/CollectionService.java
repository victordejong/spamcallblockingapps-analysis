package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.TwitterCollection;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/CollectionService.class */
public interface CollectionService {
    @f(a = "/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<TwitterCollection> collection(@t(a = "id") String str, @t(a = "count") Integer num, @t(a = "max_position") Long l, @t(a = "min_position") Long l2);
}
