package com.twitter.sdk.android.core;

import retrofit2.Call;
import retrofit2.Response;
import retrofit2.c;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/b.class */
public abstract class b<T> implements c<T> {
    public abstract void a(TwitterException twitterException);

    public abstract void a(k<T> kVar);

    @Override // retrofit2.c
    public final void onFailure(Call<T> call, Throwable th) {
        a(new TwitterException("Request Failure", th));
    }

    @Override // retrofit2.c
    public final void onResponse(Call<T> call, Response<T> response) {
        if (response.f39404a.isSuccessful()) {
            a(new k<>(response.f39405b, response));
        } else {
            a(new TwitterApiException(response));
        }
    }
}
