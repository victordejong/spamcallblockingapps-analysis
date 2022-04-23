package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Configuration;
import retrofit2.Call;
import retrofit2.b.f;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/ConfigurationService.class */
public interface ConfigurationService {
    @f(a = "/1.1/help/configuration.json")
    Call<Configuration> configuration();
}
