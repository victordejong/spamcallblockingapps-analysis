package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/VideoInfo.class */
public class VideoInfo implements Serializable {
    @AbstractC15952b(m7988a = "aspect_ratio")
    public final List<Integer> aspectRatio;
    @AbstractC15952b(m7988a = "duration_millis")
    public final long durationMillis;
    @AbstractC15952b(m7988a = "variants")
    public final List<Variant> variants;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/VideoInfo$Variant.class */
    public static class Variant implements Serializable {
        @AbstractC15952b(m7988a = "bitrate")
        public final long bitrate;
        @AbstractC15952b(m7988a = "content_type")
        public final String contentType;
        @AbstractC15952b(m7988a = "url")
        public final String url;

        public Variant(long j, String str, String str2) {
            this.bitrate = j;
            this.contentType = str;
            this.url = str2;
        }
    }

    private VideoInfo() {
        this(null, 0L, null);
    }

    public VideoInfo(List<Integer> list, long j, List<Variant> list2) {
        this.aspectRatio = ModelUtils.getSafeList(list);
        this.durationMillis = j;
        this.variants = ModelUtils.getSafeList(list2);
    }
}
