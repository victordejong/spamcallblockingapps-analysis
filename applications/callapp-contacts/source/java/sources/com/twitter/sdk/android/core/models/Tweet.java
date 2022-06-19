package com.twitter.sdk.android.core.models;

import com.appsflyer.internal.referrer.Payload;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Tweet.class */
public class Tweet implements Identifiable {
    public static final long INVALID_ID = -1;
    @AbstractC15952b(m7988a = "card")
    public final Card card;
    @AbstractC15952b(m7988a = "coordinates")
    public final Coordinates coordinates;
    @AbstractC15952b(m7988a = "created_at")
    public final String createdAt;
    @AbstractC15952b(m7988a = "current_user_retweet")
    public final Object currentUserRetweet;
    @AbstractC15952b(m7988a = "display_text_range")
    public final List<Integer> displayTextRange;
    @AbstractC15952b(m7988a = "entities")
    public final TweetEntities entities;
    @AbstractC15952b(m7988a = "extended_entities")
    public final TweetEntities extendedEntities;
    @AbstractC15952b(m7988a = "favorite_count")
    public final Integer favoriteCount;
    @AbstractC15952b(m7988a = "favorited")
    public final boolean favorited;
    @AbstractC15952b(m7988a = "filter_level")
    public final String filterLevel;
    @AbstractC15952b(m7988a = "id")

    /* renamed from: id */
    public final long f61044id;
    @AbstractC15952b(m7988a = "id_str")
    public final String idStr;
    @AbstractC15952b(m7988a = "in_reply_to_screen_name")
    public final String inReplyToScreenName;
    @AbstractC15952b(m7988a = "in_reply_to_status_id")
    public final long inReplyToStatusId;
    @AbstractC15952b(m7988a = "in_reply_to_status_id_str")
    public final String inReplyToStatusIdStr;
    @AbstractC15952b(m7988a = "in_reply_to_user_id")
    public final long inReplyToUserId;
    @AbstractC15952b(m7988a = "in_reply_to_user_id_str")
    public final String inReplyToUserIdStr;
    @AbstractC15952b(m7988a = "lang")
    public final String lang;
    @AbstractC15952b(m7988a = "place")
    public final Place place;
    @AbstractC15952b(m7988a = "possibly_sensitive")
    public final boolean possiblySensitive;
    @AbstractC15952b(m7988a = "quoted_status")
    public final Tweet quotedStatus;
    @AbstractC15952b(m7988a = "quoted_status_id")
    public final long quotedStatusId;
    @AbstractC15952b(m7988a = "quoted_status_id_str")
    public final String quotedStatusIdStr;
    @AbstractC15952b(m7988a = "retweet_count")
    public final int retweetCount;
    @AbstractC15952b(m7988a = "retweeted")
    public final boolean retweeted;
    @AbstractC15952b(m7988a = "retweeted_status")
    public final Tweet retweetedStatus;
    @AbstractC15952b(m7988a = "scopes")
    public final Object scopes;
    @AbstractC15952b(m7988a = Payload.SOURCE)
    public final String source;
    @AbstractC15952b(m7988a = "text", m7987b = {"full_text"})
    public final String text;
    @AbstractC15952b(m7988a = "truncated")
    public final boolean truncated;
    @AbstractC15952b(m7988a = "user")
    public final User user;
    @AbstractC15952b(m7988a = "withheld_copyright")
    public final boolean withheldCopyright;
    @AbstractC15952b(m7988a = "withheld_in_countries")
    public final List<String> withheldInCountries;
    @AbstractC15952b(m7988a = "withheld_scope")
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
        this.f61044id = j;
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
        return obj != null && (obj instanceof Tweet) && this.f61044id == ((Tweet) obj).f61044id;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.f61044id;
    }

    public int hashCode() {
        return (int) this.f61044id;
    }
}
