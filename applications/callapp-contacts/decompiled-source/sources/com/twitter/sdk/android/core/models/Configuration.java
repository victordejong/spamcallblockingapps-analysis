package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import com.twitter.sdk.android.core.models.MediaEntity;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Configuration.class */
public class Configuration {
    @b(a = "dm_text_character_limit")
    public final int dmTextCharacterLimit;
    @b(a = "non_username_paths")
    public final List<String> nonUsernamePaths;
    @b(a = "photo_size_limit")
    public final long photoSizeLimit;
    @b(a = "photo_sizes")
    public final MediaEntity.Sizes photoSizes;
    @b(a = "short_url_length_https")
    public final int shortUrlLengthHttps;

    private Configuration() {
        this(0, null, 0L, null, 0);
    }

    public Configuration(int i, List<String> list, long j, MediaEntity.Sizes sizes, int i2) {
        this.dmTextCharacterLimit = i;
        this.nonUsernamePaths = ModelUtils.getSafeList(list);
        this.photoSizeLimit = j;
        this.photoSizes = sizes;
        this.shortUrlLengthHttps = i2;
    }
}
