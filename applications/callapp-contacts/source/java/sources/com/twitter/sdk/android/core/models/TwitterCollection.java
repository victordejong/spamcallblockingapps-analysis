package com.twitter.sdk.android.core.models;

import com.appsflyer.internal.referrer.Payload;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection.class */
public class TwitterCollection {
    @AbstractC15952b(m7988a = "objects")
    public final Content contents;
    @AbstractC15952b(m7988a = Payload.RESPONSE)
    public final Metadata metadata;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Content.class */
    public static final class Content {
        @AbstractC15952b(m7988a = "tweets")
        public final Map<Long, Tweet> tweetMap;
        @AbstractC15952b(m7988a = "users")
        public final Map<Long, User> userMap;

        public Content(Map<Long, Tweet> map, Map<Long, User> map2) {
            this.tweetMap = ModelUtils.getSafeMap(map);
            this.userMap = ModelUtils.getSafeMap(map2);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Metadata.class */
    public static final class Metadata {
        @AbstractC15952b(m7988a = "position")
        public final Position position;
        @AbstractC15952b(m7988a = "timeline_id")
        public final String timelineId;
        @AbstractC15952b(m7988a = "timeline")
        public final List<TimelineItem> timelineItems;

        /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position.class */
        public static final class Position {
            @AbstractC15952b(m7988a = "max_position")
            public final Long maxPosition;
            @AbstractC15952b(m7988a = "min_position")
            public final Long minPosition;

            public Position(Long l, Long l2) {
                this.maxPosition = l;
                this.minPosition = l2;
            }
        }

        public Metadata(String str, Position position, List<TimelineItem> list) {
            this.timelineId = str;
            this.position = position;
            this.timelineItems = list;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$TimelineItem.class */
    public static class TimelineItem {
        @AbstractC15952b(m7988a = "tweet")
        public final TweetItem tweetItem;

        /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem.class */
        public static final class TweetItem {
            @AbstractC15952b(m7988a = "id")

            /* renamed from: id */
            public final Long f61046id;

            public TweetItem(Long l) {
                this.f61046id = l;
            }
        }

        public TimelineItem(TweetItem tweetItem) {
            this.tweetItem = tweetItem;
        }
    }

    public TwitterCollection(Content content, Metadata metadata) {
        this.contents = content;
        this.metadata = metadata;
    }
}
