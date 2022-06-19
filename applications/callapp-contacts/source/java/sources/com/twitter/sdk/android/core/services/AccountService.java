package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.User;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/AccountService.class */
public interface AccountService {
    @AbstractC21047f(m88a = "/1.1/account/verify_credentials.json")
    Call<User> verifyCredentials(@AbstractC21061t(m72a = "include_entities") Boolean bool, @AbstractC21061t(m72a = "skip_status") Boolean bool2, @AbstractC21061t(m72a = "include_email") Boolean bool3);
}
