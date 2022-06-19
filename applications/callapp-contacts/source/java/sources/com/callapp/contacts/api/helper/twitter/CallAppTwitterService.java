package com.callapp.contacts.api.helper.twitter;

import com.twitter.sdk.android.core.models.User;
import java.util.List;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppTwitterService.class */
public interface CallAppTwitterService {
    @AbstractC21056o(m79a = "/1.1/friendships/create.json")
    Call<Object> follow(@AbstractC21061t(m72a = "screen_name") String str, @AbstractC21061t(m72a = "follow") boolean z);

    @AbstractC21047f(m88a = "/1.1/followers/ids.json")
    Call<IDs> getFollowersId(@AbstractC21061t(m72a = "screen_name") String str, @AbstractC21061t(m72a = "user_id") String str2, @AbstractC21061t(m72a = "cursor") String str3, @AbstractC21061t(m72a = "include_user_entities") boolean z);

    @AbstractC21047f(m88a = "/1.1/friends/ids.json")
    Call<IDs> getFriendsId(@AbstractC21061t(m72a = "screen_name") String str, @AbstractC21061t(m72a = "user_id") String str2, @AbstractC21061t(m72a = "cursor") String str3, @AbstractC21061t(m72a = "include_user_entities") boolean z);

    @AbstractC21056o(m79a = "/1.1/users/lookup.json")
    Call<List<User>> lookup(@AbstractC21061t(m72a = "user_id") String str, @AbstractC21061t(m72a = "include_user_entities") boolean z);

    @AbstractC21056o(m79a = "/1.1/statuses/update.json")
    Call<Object> postStatus(@AbstractC21061t(m72a = "status") String str);

    @AbstractC21047f(m88a = "/1.1/users/search.json")
    Call<List<User>> searchUser(@AbstractC21061t(m72a = "q") String str, @AbstractC21061t(m72a = "count") long j, @AbstractC21061t(m72a = "page") long j2, @AbstractC21061t(m72a = "include_user_entities") boolean z);

    @AbstractC21047f(m88a = "/1.1/users/show.json")
    Call<User> show(@AbstractC21061t(m72a = "screen_name") String str);
}
