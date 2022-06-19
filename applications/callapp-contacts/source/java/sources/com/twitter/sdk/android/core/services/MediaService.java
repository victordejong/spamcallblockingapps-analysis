package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Media;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21053l;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21058q;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/MediaService.class */
public interface MediaService {
    @AbstractC21056o(m79a = "https://upload.twitter.com/1.1/media/upload.json")
    @AbstractC21053l
    Call<Media> upload(@AbstractC21058q(m77a = "media") RequestBody requestBody, @AbstractC21058q(m77a = "media_data") RequestBody requestBody2, @AbstractC21058q(m77a = "additional_owners") RequestBody requestBody3);
}
