package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.TwitterCollection;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/CollectionService.class */
public interface CollectionService {
    @AbstractC21047f(m88a = "/1.1/collections/entries.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13")
    Call<TwitterCollection> collection(@AbstractC21061t(m72a = "id") String str, @AbstractC21061t(m72a = "count") Integer num, @AbstractC21061t(m72a = "max_position") Long l, @AbstractC21061t(m72a = "min_position") Long l2);
}
