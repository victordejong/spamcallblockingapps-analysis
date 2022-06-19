package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import com.mopub.common.Constants;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TweetEntities.class */
public class TweetEntities {
    static final TweetEntities EMPTY = new TweetEntities(null, null, null, null, null);
    @AbstractC15952b(m7988a = "hashtags")
    public final List<HashtagEntity> hashtags;
    @AbstractC15952b(m7988a = "media")
    public final List<MediaEntity> media;
    @AbstractC15952b(m7988a = "symbols")
    public final List<SymbolEntity> symbols;
    @AbstractC15952b(m7988a = Constants.VIDEO_TRACKING_URLS_KEY)
    public final List<UrlEntity> urls;
    @AbstractC15952b(m7988a = "user_mentions")
    public final List<MentionEntity> userMentions;

    private TweetEntities() {
        this(null, null, null, null, null);
    }

    public TweetEntities(List<UrlEntity> list, List<MentionEntity> list2, List<MediaEntity> list3, List<HashtagEntity> list4, List<SymbolEntity> list5) {
        this.urls = ModelUtils.getSafeList(list);
        this.userMentions = ModelUtils.getSafeList(list2);
        this.media = ModelUtils.getSafeList(list3);
        this.hashtags = ModelUtils.getSafeList(list4);
        this.symbols = ModelUtils.getSafeList(list5);
    }
}
