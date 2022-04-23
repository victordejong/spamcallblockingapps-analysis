package com.twitter.sdk.android.core.models;

import com.appsflyer.internal.referrer.Payload;
import com.google.gson.annotations.b;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection.class */
public class TwitterCollection {
    @b(a = "objects")
    public final Content contents;
    @b(a = Payload.RESPONSE)
    public final Metadata metadata;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Content.class */
    public static final class Content {
        @b(a = "tweets")
        public final Map<Long, Tweet> tweetMap;
        @b(a = "users")
        public final Map<Long, User> userMap;

        public Content(Map<Long, Tweet> map, Map<Long, User> map2) {
            this.tweetMap = ModelUtils.getSafeMap(map);
            this.userMap = ModelUtils.getSafeMap(map2);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Metadata.class */
    public static final class Metadata {
        @b(a = "position")
        public final Position position;
        @b(a = "timeline_id")
        public final String timelineId;
        @b(a = "timeline")
        public final List<TimelineItem> timelineItems;

        /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$Metadata$Position.class */
        public static final class Position {
            @b(a = "max_position")
            public final Long maxPosition;
            @b(a = "min_position")
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
        @b(a = "tweet")
        public final TweetItem tweetItem;

        /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem.class */
        public static final class TweetItem {
            @b(a = "id")
            public final Long id;

            public TweetItem(Long l) {
                this.id = l;
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
