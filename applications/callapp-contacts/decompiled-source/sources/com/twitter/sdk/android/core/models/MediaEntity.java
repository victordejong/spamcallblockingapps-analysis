package com.twitter.sdk.android.core.models;

import com.explorestack.iab.mraid.h;
import com.google.gson.annotations.b;
import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity.class */
public class MediaEntity extends UrlEntity {
    @b(a = "ext_alt_text")
    public final String altText;
    @b(a = "id")
    public final long id;
    @b(a = "id_str")
    public final String idStr;
    @b(a = "media_url")
    public final String mediaUrl;
    @b(a = "media_url_https")
    public final String mediaUrlHttps;
    @b(a = "sizes")
    public final Sizes sizes;
    @b(a = "source_status_id")
    public final long sourceStatusId;
    @b(a = "source_status_id_str")
    public final String sourceStatusIdStr;
    @b(a = "type")
    public final String type;
    @b(a = "video_info")
    public final VideoInfo videoInfo;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity$Size.class */
    public static class Size implements Serializable {
        @b(a = h.f19142a)
        public final int h;
        @b(a = "resize")
        public final String resize;
        @b(a = "w")
        public final int w;

        public Size(int i, int i2, String str) {
            this.w = i;
            this.h = i2;
            this.resize = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity$Sizes.class */
    public static class Sizes implements Serializable {
        @b(a = "large")
        public final Size large;
        @b(a = "medium")
        public final Size medium;
        @b(a = "small")
        public final Size small;
        @b(a = "thumb")
        public final Size thumb;

        public Sizes(Size size, Size size2, Size size3, Size size4) {
            this.thumb = size;
            this.small = size2;
            this.medium = size3;
            this.large = size4;
        }
    }

    public MediaEntity(String str, String str2, String str3, int i, int i2, long j, String str4, String str5, String str6, Sizes sizes, long j2, String str7, String str8, VideoInfo videoInfo, String str9) {
        super(str, str2, str3, i, i2);
        this.id = j;
        this.idStr = str4;
        this.mediaUrl = str5;
        this.mediaUrlHttps = str6;
        this.sizes = sizes;
        this.sourceStatusId = j2;
        this.sourceStatusIdStr = str7;
        this.type = str8;
        this.videoInfo = videoInfo;
        this.altText = str9;
    }
}
