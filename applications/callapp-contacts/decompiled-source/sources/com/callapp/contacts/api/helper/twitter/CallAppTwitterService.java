package com.callapp.contacts.api.helper.twitter;

import com.twitter.sdk.android.core.models.User;
import java.util.List;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.o;
import retrofit2.b.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppTwitterService.class */
public interface CallAppTwitterService {
    @o(a = "/1.1/friendships/create.json")
    Call<Object> follow(@t(a = "screen_name") String str, @t(a = "follow") boolean z);

    @f(a = "/1.1/followers/ids.json")
    Call<IDs> getFollowersId(@t(a = "screen_name") String str, @t(a = "user_id") String str2, @t(a = "cursor") String str3, @t(a = "include_user_entities") boolean z);

    @f(a = "/1.1/friends/ids.json")
    Call<IDs> getFriendsId(@t(a = "screen_name") String str, @t(a = "user_id") String str2, @t(a = "cursor") String str3, @t(a = "include_user_entities") boolean z);

    @o(a = "/1.1/users/lookup.json")
    Call<List<User>> lookup(@t(a = "user_id") String str, @t(a = "include_user_entities") boolean z);

    @o(a = "/1.1/statuses/update.json")
    Call<Object> postStatus(@t(a = "status") String str);

    @f(a = "/1.1/users/search.json")
    Call<List<User>> searchUser(@t(a = "q") String str, @t(a = "count") long j, @t(a = "page") long j2, @t(a = "include_user_entities") boolean z);

    @f(a = "/1.1/users/show.json")
    Call<User> show(@t(a = "screen_name") String str);
}
