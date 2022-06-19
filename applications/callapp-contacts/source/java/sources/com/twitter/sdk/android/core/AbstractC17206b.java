package com.twitter.sdk.android.core;

import retrofit2.AbstractC21067c;
import retrofit2.Call;
import retrofit2.Response;
/* renamed from: com.twitter.sdk.android.core.b */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/b.class */
public abstract class AbstractC17206b<T> implements AbstractC21067c<T> {
    /* renamed from: a */
    public abstract void mo5601a(TwitterException twitterException);

    /* renamed from: a */
    public abstract void mo5600a(C17277k<T> c17277k);

    @Override // retrofit2.AbstractC21067c
    public final void onFailure(Call<T> call, Throwable th) {
        mo5601a(new TwitterException("Request Failure", th));
    }

    @Override // retrofit2.AbstractC21067c
    public final void onResponse(Call<T> call, Response<T> response) {
        if (response.f67638a.isSuccessful()) {
            mo5600a(new C17277k<>(response.f67639b, response));
        } else {
            mo5601a(new TwitterApiException(response));
        }
    }
}
