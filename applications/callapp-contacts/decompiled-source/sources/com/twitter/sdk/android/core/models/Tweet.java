package com.twitter.sdk.android.core.models;

import com.appsflyer.internal.referrer.Payload;
import com.google.gson.annotations.b;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Tweet.class */
public class Tweet implements Identifiable {
    public static final long INVALID_ID = -1;
    @b(a = "card")
    public final Card card;
    @b(a = "coordinates")
    public final Coordinates coordinates;
    @b(a = "created_at")
    public final String createdAt;
    @b(a = "current_user_retweet")
    public final Object currentUserRetweet;
    @b(a = "display_text_range")
    public final List<Integer> displayTextRange;
    @b(a = "entities")
    public final TweetEntities entities;
    @b(a = "extended_entities")
    public final TweetEntities extendedEntities;
    @b(a = "favorite_count")
    public final Integer favoriteCount;
    @b(a = "favorited")
    public final boolean favorited;
    @b(a = "filter_level")
    public final String filterLevel;
    @b(a = "id")
    public final long id;
    @b(a = "id_str")
    public final String idStr;
    @b(a = "in_reply_to_screen_name")
    public final String inReplyToScreenName;
    @b(a = "in_reply_to_status_id")
    public final long inReplyToStatusId;
    @b(a = "in_reply_to_status_id_str")
    public final String inReplyToStatusIdStr;
    @b(a = "in_reply_to_user_id")
    public final long inReplyToUserId;
    @b(a = "in_reply_to_user_id_str")
    public final String inReplyToUserIdStr;
    @b(a = "lang")
    public final String lang;
    @b(a = "place")
    public final Place place;
    @b(a = "possibly_sensitive")
    public final boolean possiblySensitive;
    @b(a = "quoted_status")
    public final Tweet quotedStatus;
    @b(a = "quoted_status_id")
    public final long quotedStatusId;
    @b(a = "quoted_status_id_str")
    public final String quotedStatusIdStr;
    @b(a = "retweet_count")
    public final int retweetCount;
    @b(a = "retweeted")
    public final boolean retweeted;
    @b(a = "retweeted_status")
    public final Tweet retweetedStatus;
    @b(a = "scopes")
    public final Object scopes;
    @b(a = Payload.SOURCE)
    public final String source;
    @b(a = "text", b = {"full_text"})
    public final String text;
    @b(a = "truncated")
    public final boolean truncated;
    @b(a = "user")
    public final User user;
    @b(a = "withheld_copyright")
    public final boolean withheldCopyright;
    @b(a = "withheld_in_countries")
    public final List<String> withheldInCountries;
    @b(a = "withheld_scope")
    public final String withheldScope;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private Tweet() {
        /*
            r40 = this;
            com.twitter.sdk.android.core.models.TweetEntities r0 = com.twitter.sdk.android.core.models.TweetEntities.EMPTY
            r41 = r0
            r0 = r40
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = r41
            r5 = r41
            r6 = 0
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r7 = 0
            r8 = 0
            r9 = 0
            java.lang.String r10 = "0"
            r11 = 0
            r12 = 0
            java.lang.String r13 = "0"
            r14 = 0
            java.lang.String r15 = "0"
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            java.lang.String r21 = "0"
            r22 = 0
            r23 = 0
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.models.Tweet.<init>():void");
    }

    public Tweet(Coordinates coordinates, String str, Object obj, TweetEntities tweetEntities, TweetEntities tweetEntities2, Integer num, boolean z, String str2, long j, String str3, String str4, long j2, String str5, long j3, String str6, String str7, Place place, boolean z2, Object obj2, long j4, String str8, Tweet tweet, int i, boolean z3, Tweet tweet2, String str9, String str10, List<Integer> list, boolean z4, User user, boolean z5, List<String> list2, String str11, Card card) {
        this.coordinates = coordinates;
        this.createdAt = str;
        this.currentUserRetweet = obj;
        this.entities = tweetEntities == null ? TweetEntities.EMPTY : tweetEntities;
        this.extendedEntities = tweetEntities2 == null ? TweetEntities.EMPTY : tweetEntities2;
        this.favoriteCount = num;
        this.favorited = z;
        this.filterLevel = str2;
        this.id = j;
        this.idStr = str3;
        this.inReplyToScreenName = str4;
        this.inReplyToStatusId = j2;
        this.inReplyToStatusIdStr = str5;
        this.inReplyToUserId = j3;
        this.inReplyToUserIdStr = str6;
        this.lang = str7;
        this.place = place;
        this.possiblySensitive = z2;
        this.scopes = obj2;
        this.quotedStatusId = j4;
        this.quotedStatusIdStr = str8;
        this.quotedStatus = tweet;
        this.retweetCount = i;
        this.retweeted = z3;
        this.retweetedStatus = tweet2;
        this.source = str9;
        this.text = str10;
        this.displayTextRange = ModelUtils.getSafeList(list);
        this.truncated = z4;
        this.user = user;
        this.withheldCopyright = z5;
        this.withheldInCountries = ModelUtils.getSafeList(list2);
        this.withheldScope = str11;
        this.card = card;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Tweet) && this.id == ((Tweet) obj).id;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        return (int) this.id;
    }
}
