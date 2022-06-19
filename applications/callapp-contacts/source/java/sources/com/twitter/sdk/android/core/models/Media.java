package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Media.class */
public class Media {
    @AbstractC15952b(m7988a = "image")
    public final Image image;
    @AbstractC15952b(m7988a = "media_id")
    public final long mediaId;
    @AbstractC15952b(m7988a = "media_id_string")
    public final String mediaIdString;
    @AbstractC15952b(m7988a = "size")
    public final long size;

    public Media(long j, String str, long j2, Image image) {
        this.mediaId = j;
        this.mediaIdString = str;
        this.size = j2;
        this.image = image;
    }
}
