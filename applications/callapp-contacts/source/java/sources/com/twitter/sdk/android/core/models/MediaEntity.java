package com.twitter.sdk.android.core.models;

import com.explorestack.iab.mraid.C9568h;
import com.google.gson.annotations.AbstractC15952b;
import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity.class */
public class MediaEntity extends UrlEntity {
    @AbstractC15952b(m7988a = "ext_alt_text")
    public final String altText;
    @AbstractC15952b(m7988a = "id")

    /* renamed from: id */
    public final long f61039id;
    @AbstractC15952b(m7988a = "id_str")
    public final String idStr;
    @AbstractC15952b(m7988a = "media_url")
    public final String mediaUrl;
    @AbstractC15952b(m7988a = "media_url_https")
    public final String mediaUrlHttps;
    @AbstractC15952b(m7988a = "sizes")
    public final Sizes sizes;
    @AbstractC15952b(m7988a = "source_status_id")
    public final long sourceStatusId;
    @AbstractC15952b(m7988a = "source_status_id_str")
    public final String sourceStatusIdStr;
    @AbstractC15952b(m7988a = "type")
    public final String type;
    @AbstractC15952b(m7988a = "video_info")
    public final VideoInfo videoInfo;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity$Size.class */
    public static class Size implements Serializable {
        @AbstractC15952b(m7988a = C9568h.f32519a)

        /* renamed from: h */
        public final int f61040h;
        @AbstractC15952b(m7988a = "resize")
        public final String resize;
        @AbstractC15952b(m7988a = "w")

        /* renamed from: w */
        public final int f61041w;

        public Size(int i, int i2, String str) {
            this.f61041w = i;
            this.f61040h = i2;
            this.resize = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MediaEntity$Sizes.class */
    public static class Sizes implements Serializable {
        @AbstractC15952b(m7988a = "large")
        public final Size large;
        @AbstractC15952b(m7988a = "medium")
        public final Size medium;
        @AbstractC15952b(m7988a = "small")
        public final Size small;
        @AbstractC15952b(m7988a = "thumb")
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
        this.f61039id = j;
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
