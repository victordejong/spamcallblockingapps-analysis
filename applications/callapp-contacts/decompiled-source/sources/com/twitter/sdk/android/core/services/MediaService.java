package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Media;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.b.l;
import retrofit2.b.o;
import retrofit2.b.q;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/services/MediaService.class */
public interface MediaService {
    @o(a = "https://upload.twitter.com/1.1/media/upload.json")
    @l
    Call<Media> upload(@q(a = "media") RequestBody requestBody, @q(a = "media_data") RequestBody requestBody2, @q(a = "additional_owners") RequestBody requestBody3);
}
