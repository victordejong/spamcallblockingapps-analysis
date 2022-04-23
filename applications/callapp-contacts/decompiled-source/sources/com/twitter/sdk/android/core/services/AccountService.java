package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.User;
import retrofit2.Call;
import retrofit2.b.f;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/AccountService.class */
public interface AccountService {
    @f(a = "/1.1/account/verify_credentials.json")
    Call<User> verifyCredentials(@t(a = "include_entities") Boolean bool, @t(a = "skip_status") Boolean bool2, @t(a = "include_email") Boolean bool3);
}
